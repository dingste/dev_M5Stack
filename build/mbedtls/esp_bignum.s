	.file	"esp_bignum.c"
	.text
.Ltext0:
	.section	.text.word_length,"ax",@progbits
	.literal_position
	.literal .LC0, 1073741823
	.align	4
	.type	word_length, @function
word_length:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/esp_bignum.c"
	.loc 1 142 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LBB52:
	.loc 1 143 0
	l32i.n	a9, a2, 4
.LVL1:
	l32r	a8, .LC0
	add.n	a8, a9, a8
	slli	a8, a8, 2
	j	.L2
.L4:
	.loc 1 144 0
	l32i.n	a10, a2, 8
	add.n	a10, a10, a8
	l32i.n	a10, a10, 0
	addi	a8, a8, -4
	bnez.n	a10, .L3
	.loc 1 143 0 discriminator 2
	addi.n	a9, a9, -1
.LVL2:
.L2:
	.loc 1 143 0 is_stmt 0 discriminator 1
	bnez.n	a9, .L4
.L3:
.LBE52:
	.loc 1 149 0 is_stmt 1
	mov.n	a2, a9
.LVL3:
	retw.n
.LFE34:
	.size	word_length, .-word_length
	.section	.text.mpi_to_mem_block,"ax",@progbits
	.literal_position
	.align	4
	.type	mpi_to_mem_block, @function
mpi_to_mem_block:
.LFB35:
	.loc 1 158 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 160 0
	l32i.n	a8, a3, 4
.LBB53:
	.loc 1 163 0
	mov.n	a9, a2
.LBE53:
	.loc 1 160 0
	minu	a8, a4, a8
.LVL6:
	addx4	a10, a8, a2
.LBB54:
	.loc 1 163 0
	j	.L7
.LVL7:
.L8:
	.loc 1 164 0 discriminator 3
	l32i.n	a12, a3, 8
	sub	a11, a9, a2
	add.n	a11, a12, a11
	l32i.n	a11, a11, 0
	s32i.n	a11, a9, 0
	addi.n	a9, a9, 4
.L7:
	.loc 1 163 0 discriminator 1
	bne	a9, a10, .L8
.LVL8:
.LBE54:
.LBB55:
	.loc 1 169 0
	movi.n	a2, 0
.LVL9:
	.loc 1 168 0
	j	.L9
.LVL10:
.L10:
	.loc 1 169 0 discriminator 3
	s32i.n	a2, a10, 0
	.loc 1 168 0 discriminator 3
	addi.n	a8, a8, 1
.LVL11:
	addi.n	a10, a10, 4
.LVL12:
.L9:
	.loc 1 168 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L10
.LBE55:
	.loc 1 173 0 is_stmt 1
	retw.n
.LFE35:
	.size	mpi_to_mem_block, .-mpi_to_mem_block
	.section	.text.calculate_rinv,"ax",@progbits
	.align	4
	.type	calculate_rinv, @function
calculate_rinv:
.LFB38:
	.loc 1 238 0
.LVL13:
	entry	sp, 48
.LCFI2:
.LVL14:
	.loc 1 242 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL15:
	.loc 1 243 0
	movi.n	a12, 1
	slli	a11, a4, 6
	mov.n	a10, sp
	call8	mbedtls_mpi_set_bit
.LVL16:
	.loc 1 238 0
	mov.n	a5, a2
	.loc 1 243 0
	mov.n	a2, a10
.LVL17:
	bnez.n	a10, .L12
	.loc 1 244 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a5
	call8	mbedtls_mpi_mod_mpi
.LVL18:
	mov.n	a2, a10
.LVL19:
.L12:
	.loc 1 247 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL20:
	.loc 1 249 0
	retw.n
.LFE38:
	.size	calculate_rinv, .-calculate_rinv
	.global	__umoddi3
	.section	.text.modular_inverse$isra$0,"ax",@progbits
	.literal_position
	.align	4
	.type	modular_inverse$isra$0, @function
modular_inverse$isra$0:
.LFB47:
	.loc 1 205 0
	entry	sp, 48
.LCFI3:
.LVL21:
	.loc 1 209 0
	movi.n	a3, 0
	.loc 1 211 0
	l32i.n	a9, a2, 0
.LVL22:
	movi.n	a8, 0x1f
	.loc 1 209 0
	movi.n	a4, 2
	.loc 1 210 0
	movi.n	a5, 4
	mov.n	a6, a3
	.loc 1 208 0
	movi.n	a2, 1
	mov.n	a7, a3
.LVL23:
.L17:
	.loc 1 214 0
	mull	a14, a7, a9
	muluh	a11, a9, a2
	mull	a10, a9, a2
	mov.n	a12, a5
	mov.n	a13, a6
	add.n	a11, a14, a11
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	__umoddi3
.LVL24:
	l32i.n	a8, sp, 4
.LVL25:
	l32i.n	a9, sp, 0
.LVL26:
	bltu	a11, a3, .L14
	bne	a3, a11, .L18
	bltu	a10, a4, .L14
.L18:
	.loc 1 215 0
	add.n	a11, a2, a4
	movi.n	a10, 1
	bltu	a11, a2, .L16
	movi.n	a10, 0
.L16:
	add.n	a12, a7, a3
	mov.n	a2, a11
.LVL27:
	add.n	a7, a10, a12
.LVL28:
.L14:
	.loc 1 218 0
	extui	a11, a4, 31, 1
	slli	a10, a3, 1
	slli	a12, a4, 1
	or	a3, a11, a10
.LVL29:
	mov.n	a4, a12
.LVL30:
	.loc 1 219 0
	extui	a11, a5, 31, 1
	slli	a10, a6, 1
	slli	a12, a5, 1
	addi.n	a8, a8, -1
.LVL31:
	mov.n	a5, a12
.LVL32:
	or	a6, a11, a10
.LVL33:
	.loc 1 213 0
	bnez.n	a8, .L17
	.loc 1 223 0
	neg	a2, a2
.LVL34:
	retw.n
.LFE47:
	.size	modular_inverse$isra$0, .-modular_inverse$isra$0
	.section	.text.wait_op_complete$isra$1,"ax",@progbits
	.literal_position
	.literal .LC6, 1072703508
	.align	4
	.type	wait_op_complete$isra$1, @function
wait_op_complete$isra$1:
.LFB48:
	.loc 1 268 0
	entry	sp, 32
.LCFI4:
.LVL35:
.LBB56:
.LBB57:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 77 0
	l32r	a8, .LC6
.L21:
.LVL36:
	memw
	l32i.n	a9, a8, 0
.LBE57:
.LBE56:
	.loc 1 277 0
	bnei	a9, 1, .L21
	.loc 1 281 0
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE48:
	.size	wait_op_complete$isra$1, .-wait_op_complete$isra$1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"x->n >= num_words"
.LC10:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/esp_bignum.c"
	.section	.text.mem_block_to_mpi$constprop$6,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC9, __func__$5867
	.literal .LC11, .LC10
	.literal .LC12, 1072701952
	.align	4
	.type	mem_block_to_mpi$constprop$6, @function
mem_block_to_mpi$constprop$6:
.LFB53:
	.loc 1 182 0
.LVL37:
	entry	sp, 32
.LCFI5:
.LVL38:
	.loc 1 184 0
	l32i.n	a8, a2, 4
	bgeu	a8, a3, .L24
.LVL39:
.LBB62:
.LBB63:
	l32r	a13, .LC8
	l32r	a12, .LC9
	l32r	a10, .LC11
	movi	a11, 0xb8
	call8	__assert_func
.LVL40:
.L24:
.LBE63:
.LBE62:
	.loc 1 187 0
	l32i.n	a10, a2, 8
	l32r	a11, .LC12
	mov.n	a12, a3
	call8	esp_dport_access_read_buffer
.LVL41:
	slli	a8, a3, 2
.LBB64:
	.loc 1 192 0
	movi.n	a10, 0
	j	.L25
.LVL42:
.L26:
	l32i.n	a9, a2, 8
	.loc 1 191 0
	addi.n	a3, a3, 1
.LVL43:
	.loc 1 192 0
	add.n	a9, a9, a8
	s32i.n	a10, a9, 0
	addi.n	a8, a8, 4
.L25:
	.loc 1 191 0
	l32i.n	a9, a2, 4
	bltu	a3, a9, .L26
.LBE64:
	.loc 1 194 0
	retw.n
.LFE53:
	.size	mem_block_to_mpi$constprop$6, .-mem_block_to_mpi$constprop$6
	.section	.text.modular_multiply_finish$isra$3,"ax",@progbits
	.literal_position
	.literal .LC13, 1072702976
	.literal .LC14, 1072703508
	.literal .LC15, 1072703504
	.align	4
	.type	modular_multiply_finish$isra$3, @function
modular_multiply_finish$isra$3:
.LFB50:
	.loc 1 453 0
.LVL44:
	entry	sp, 32
.LCFI6:
.LVL45:
	.loc 1 458 0
	l32r	a10, .LC13
	mov.n	a12, a5
	mov.n	a11, a4
	call8	mpi_to_mem_block
.LVL46:
.LBB71:
.LBB72:
	.loc 1 258 0
	l32r	a8, .LC14
	movi.n	a5, 1
.LVL47:
	memw
	s32i.n	a5, a8, 0
	.loc 1 263 0
	l32r	a8, .LC15
.LBE72:
.LBE71:
	.loc 1 462 0
	mov.n	a11, a6
.LBB74:
.LBB73:
	.loc 1 263 0
	memw
	s32i.n	a5, a8, 0
.LBE73:
.LBE74:
	.loc 1 462 0
	mov.n	a10, a2
	call8	mbedtls_mpi_grow
.LVL48:
	mov.n	a5, a10
.LVL49:
	bnez.n	a10, .L28
.LVL50:
.LBB75:
.LBB76:
	.loc 1 464 0
	call8	wait_op_complete$isra$1
.LVL51:
	.loc 1 466 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	mem_block_to_mpi$constprop$6
.LVL52:
	.loc 1 468 0
	l32i.n	a8, a4, 0
	l32i.n	a3, a3, 0
	mull	a8, a3, a8
	s32i.n	a8, a2, 0
.LVL53:
.L28:
.LBE76:
.LBE75:
	.loc 1 472 0
	mov.n	a2, a5
.LVL54:
	retw.n
.LFE50:
	.size	modular_multiply_finish$isra$3, .-modular_multiply_finish$isra$3
	.section	.text.esp_mpi_acquire_hardware,"ax",@progbits
	.literal_position
	.literal .LC16, mpi_lock
	.literal .LC17, 1072694416
	.literal .LC18, 1072703512
	.align	4
	.global	esp_mpi_acquire_hardware
	.type	esp_mpi_acquire_hardware, @function
esp_mpi_acquire_hardware:
.LFB30:
	.loc 1 92 0
	entry	sp, 32
.LCFI7:
	.loc 1 94 0
	l32r	a10, .LC16
	call8	_lock_acquire
.LVL55:
	.loc 1 97 0
	movi.n	a10, 0x22
	call8	periph_module_enable
.LVL56:
.LBB77:
.LBB78:
	.loc 2 77 0
	l32r	a9, .LC17
.LBE78:
.LBE77:
	.loc 1 98 0
	movi.n	a8, -2
.LBB80:
.LBB79:
	.loc 2 77 0
	memw
	l32i.n	a10, a9, 0
.LBE79:
.LBE80:
	.loc 1 98 0
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBB81:
.LBB82:
	.loc 2 77 0
	l32r	a9, .LC18
.L30:
.LVL57:
	.loc 2 77 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a8, a9, 0
.LBE82:
.LBE81:
	.loc 1 100 0 is_stmt 1 discriminator 1
	bnei	a8, 1, .L30
	.loc 1 106 0
	retw.n
.LFE30:
	.size	esp_mpi_acquire_hardware, .-esp_mpi_acquire_hardware
	.section	.text.esp_mpi_release_hardware,"ax",@progbits
	.literal_position
	.literal .LC19, 1072694416
	.literal .LC20, mpi_lock
	.align	4
	.global	esp_mpi_release_hardware
	.type	esp_mpi_release_hardware, @function
esp_mpi_release_hardware:
.LFB31:
	.loc 1 109 0
	entry	sp, 32
.LCFI8:
.LVL58:
.LBB83:
.LBB84:
	.loc 2 77 0
	l32r	a9, .LC19
.LBE84:
.LBE83:
	.loc 1 110 0
	movi.n	a8, 1
.LBB86:
.LBB85:
	.loc 2 77 0
	memw
	l32i.n	a10, a9, 0
.LBE85:
.LBE86:
	.loc 1 110 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 113 0
	movi.n	a10, 0x22
	call8	periph_module_disable
.LVL59:
	.loc 1 115 0
	l32r	a10, .LC20
	call8	_lock_release
.LVL60:
	retw.n
.LFE31:
	.size	esp_mpi_release_hardware, .-esp_mpi_release_hardware
	.section	.text.esp_mpi_mul_mpi_mod,"ax",@progbits
	.literal_position
	.literal .LC21, 1072701440
	.literal .LC22, 1072702976
	.literal .LC23, 1072701952
	.literal .LC24, 1072703488
	.literal .LC25, 1072703500
	.literal .LC26, 1072703508
	.literal .LC27, 1072703504
	.align	4
	.global	esp_mpi_mul_mpi_mod
	.type	esp_mpi_mul_mpi_mod, @function
esp_mpi_mul_mpi_mod:
.LFB41:
	.loc 1 294 0
.LVL61:
	entry	sp, 64
.LCFI9:
	.loc 1 296 0
	mov.n	a10, a3
	.loc 1 294 0
	s32i.n	a2, sp, 24
	s32i.n	a4, sp, 20
	.loc 1 296 0
	call8	mbedtls_mpi_bitlen
.LVL62:
	s32i.n	a10, sp, 16
.LVL63:
	.loc 1 297 0
	l32i.n	a10, sp, 20
.LVL64:
	call8	mbedtls_mpi_bitlen
.LVL65:
	mov.n	a7, a10
.LVL66:
	.loc 1 298 0
	mov.n	a10, a5
	call8	mbedtls_mpi_bitlen
.LVL67:
.LBB87:
.LBB88:
	.loc 1 130 0
	l32i.n	a2, sp, 16
.LVL68:
	addi	a4, a7, 31
.LVL69:
	srli	a8, a4, 5
	addi	a4, a2, 31
	srli	a4, a4, 5
	maxu	a4, a8, a4
	addi	a8, a10, 31
	srli	a8, a8, 5
	maxu	a4, a4, a8
.LBE88:
.LBE87:
	.loc 1 298 0
	mov.n	a6, a10
.LVL70:
.LBB91:
.LBB89:
	.loc 1 130 0
	movi.n	a8, -0x10
.LBE89:
.LBE91:
	.loc 1 309 0
	mov.n	a10, sp
.LBB92:
.LBB90:
	.loc 1 130 0
	addi.n	a4, a4, 15
.LVL71:
	and	a4, a4, a8
.LVL72:
.LBE90:
.LBE92:
	.loc 1 309 0
	call8	mbedtls_mpi_init
.LVL73:
	.loc 1 310 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, sp
	call8	calculate_rinv
.LVL74:
	mov.n	a2, a10
.LVL75:
	bnez.n	a10, .L34
	.loc 1 311 0
	l32i.n	a10, a5, 8
	call8	modular_inverse$isra$0
.LVL76:
	mov.n	a2, a10
.LVL77:
	.loc 1 313 0
	call8	esp_mpi_acquire_hardware
.LVL78:
	.loc 1 316 0
	l32r	a10, .LC21
	mov.n	a11, a5
	mov.n	a12, a4
	call8	mpi_to_mem_block
.LVL79:
	.loc 1 317 0
	l32r	a10, .LC22
	mov.n	a12, a4
	mov.n	a11, a3
	call8	mpi_to_mem_block
.LVL80:
	.loc 1 318 0
	l32r	a10, .LC23
	mov.n	a12, a4
	mov.n	a11, sp
	call8	mpi_to_mem_block
.LVL81:
	.loc 1 319 0
	l32r	a5, .LC24
.LVL82:
	.loc 1 322 0
	l32r	a8, .LC25
	.loc 1 319 0
	memw
	s32i.n	a2, a5, 0
	.loc 1 322 0
	srli	a5, a4, 4
	addi.n	a5, a5, -1
	memw
	s32i.n	a5, a8, 0
.LVL83:
.LBB93:
.LBB94:
	.loc 1 258 0
	l32r	a8, .LC26
	movi.n	a5, 1
	memw
	s32i.n	a5, a8, 0
	.loc 1 263 0
	l32r	a8, .LC27
	memw
	s32i.n	a5, a8, 0
.LBE94:
.LBE93:
	.loc 1 327 0
	call8	wait_op_complete$isra$1
.LVL84:
	.loc 1 330 0
	l32i.n	a2, sp, 16
.LVL85:
	l32i.n	a12, sp, 20
	add.n	a14, a2, a7
	minu	a14, a14, a6
	addi	a14, a14, 31
	l32i.n	a10, sp, 24
	srli	a14, a14, 5
	mov.n	a13, a4
	mov.n	a11, a3
	call8	modular_multiply_finish$isra$3
.LVL86:
	mov.n	a2, a10
.LVL87:
	.loc 1 332 0
	call8	esp_mpi_release_hardware
.LVL88:
.L34:
	.loc 1 335 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL89:
	.loc 1 337 0
	retw.n
.LFE41:
	.size	esp_mpi_mul_mpi_mod, .-esp_mpi_mul_mpi_mod
	.section	.text.mbedtls_mpi_exp_mod,"ax",@progbits
	.literal_position
	.literal .LC28, 4096
	.literal .LC29, 1072703492
	.literal .LC30, 1072702976
	.literal .LC31, 1072702464
	.literal .LC32, 1072701440
	.literal .LC33, 1072701952
	.literal .LC34, 1072703488
	.literal .LC35, 1072703508
	.literal .LC36, 1072703496
	.align	4
	.global	mbedtls_mpi_exp_mod
	.type	mbedtls_mpi_exp_mod, @function
mbedtls_mpi_exp_mod:
.LFB42:
	.loc 1 350 0
.LVL90:
	entry	sp, 64
.LCFI10:
.LVL91:
	.loc 1 352 0
	mov.n	a10, a3
	.loc 1 350 0
	s32i.n	a6, sp, 16
	.loc 1 352 0
	call8	word_length
.LVL92:
	mov.n	a6, a10
.LVL93:
	.loc 1 353 0
	mov.n	a10, a4
	call8	word_length
.LVL94:
	s32i.n	a10, sp, 20
.LVL95:
	.loc 1 354 0
	mov.n	a10, a5
.LVL96:
	call8	word_length
.LVL97:
	.loc 1 350 0
	mov.n	a7, a2
	.loc 1 365 0
	movi.n	a11, 0
	.loc 1 354 0
	mov.n	a2, a10
.LVL98:
	.loc 1 365 0
	mov.n	a10, a5
	call8	mbedtls_mpi_cmp_int
.LVL99:
	bgei	a10, 1, .L36
.L38:
	.loc 1 366 0
	movi.n	a8, -4
	j	.L37
.L36:
	.loc 1 365 0 discriminator 1
	l32i.n	a8, a5, 8
	l32i.n	a8, a8, 0
	bbci	a8, 0, .L38
	.loc 1 369 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	mbedtls_mpi_cmp_int
.LVL100:
	bltz	a10, .L38
	.loc 1 373 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	mbedtls_mpi_cmp_int
.LVL101:
	bnez.n	a10, .L39
	.loc 1 374 0
	movi.n	a11, 1
	mov.n	a10, a7
	call8	mbedtls_mpi_lset
.LVL102:
	mov.n	a8, a10
	j	.L37
.L39:
.LBB95:
.LBB96:
	.loc 1 130 0
	l32i.n	a8, sp, 20
.LBE96:
.LBE95:
	.loc 1 377 0
	l32r	a10, .LC28
.LBB98:
.LBB97:
	.loc 1 130 0
	maxu	a6, a6, a8
.LVL103:
	maxu	a6, a6, a2
	movi.n	a8, -0x10
	addi.n	a6, a6, 15
	and	a6, a6, a8
.LBE97:
.LBE98:
	.loc 1 377 0
	slli	a9, a6, 5
	.loc 1 378 0
	movi.n	a8, -0xe
	.loc 1 377 0
	bltu	a10, a9, .L37
	l32i.n	a9, sp, 16
	.loc 1 383 0
	bnez.n	a9, .L40
	.loc 1 384 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL104:
	.loc 1 385 0
	mov.n	a9, sp
.LVL105:
.L40:
	.loc 1 389 0
	l32i.n	a8, a9, 8
	beqz.n	a8, .L41
.LVL106:
.L45:
	.loc 1 393 0
	l32i.n	a10, a5, 8
	s32i.n	a9, sp, 28
	call8	modular_inverse$isra$0
.LVL107:
	.loc 1 395 0
	s32i.n	a10, sp, 24
	call8	esp_mpi_acquire_hardware
.LVL108:
	.loc 1 398 0
	l32r	a10, .LC29
	srli	a8, a6, 4
	addi.n	a8, a8, -1
	memw
	s32i.n	a8, a10, 0
	.loc 1 401 0
	l32r	a10, .LC30
	mov.n	a12, a6
	mov.n	a11, a3
	call8	mpi_to_mem_block
.LVL109:
	.loc 1 402 0
	l32r	a10, .LC31
	mov.n	a12, a6
	mov.n	a11, a4
	call8	mpi_to_mem_block
.LVL110:
	.loc 1 403 0
	l32r	a10, .LC32
	mov.n	a12, a6
	mov.n	a11, a5
	call8	mpi_to_mem_block
.LVL111:
	.loc 1 404 0
	l32i.n	a9, sp, 28
	l32r	a10, .LC33
	mov.n	a12, a6
	mov.n	a11, a9
	call8	mpi_to_mem_block
.LVL112:
	.loc 1 405 0
	l32i.n	a13, sp, 24
	l32r	a6, .LC34
.LBB99:
.LBB100:
	.loc 1 258 0
	l32r	a8, .LC35
.LBE100:
.LBE99:
	.loc 1 405 0
	memw
	s32i.n	a13, a6, 0
.LVL113:
.LBB103:
.LBB101:
	.loc 1 258 0
	movi.n	a6, 1
	memw
	s32i.n	a6, a8, 0
	.loc 1 263 0
	l32r	a8, .LC36
.LBE101:
.LBE103:
	.loc 1 410 0
	mov.n	a11, a2
.LBB104:
.LBB102:
	.loc 1 263 0
	memw
	s32i.n	a6, a8, 0
.LBE102:
.LBE104:
	.loc 1 410 0
	mov.n	a10, a7
	call8	mbedtls_mpi_grow
.LVL114:
	bnez.n	a10, .L42
	j	.L56
.LVL115:
.L41:
	.loc 1 390 0
	mov.n	a10, a9
	mov.n	a12, a6
	mov.n	a11, a5
	s32i.n	a9, sp, 28
	call8	calculate_rinv
.LVL116:
	mov.n	a8, a10
.LVL117:
	l32i.n	a9, sp, 28
	bnez.n	a10, .L44
	j	.L45
.LVL118:
.L42:
	.loc 1 411 0
	s32i.n	a10, sp, 24
	call8	esp_mpi_release_hardware
.LVL119:
	.loc 1 412 0
	l32i.n	a8, sp, 24
	j	.L44
.LVL120:
.L56:
	.loc 1 415 0
	s32i.n	a10, sp, 24
	call8	wait_op_complete$isra$1
.LVL121:
	.loc 1 417 0
	mov.n	a11, a2
	mov.n	a10, a7
	call8	mem_block_to_mpi$constprop$6
.LVL122:
	.loc 1 418 0
	call8	esp_mpi_release_hardware
.LVL123:
	.loc 1 421 0
	l32i.n	a2, a3, 0
.LVL124:
	l32i.n	a8, sp, 24
	bnei	a2, -1, .L46
	.loc 1 421 0 is_stmt 0 discriminator 1
	l32i.n	a3, a4, 8
.LVL125:
	l32i.n	a3, a3, 0
	bbci	a3, 0, .L46
	.loc 1 422 0 is_stmt 1
	s32i.n	a2, a7, 0
	.loc 1 423 0
	mov.n	a12, a7
	mov.n	a11, a5
	mov.n	a10, a7
	call8	mbedtls_mpi_add_mpi
.LVL126:
	mov.n	a8, a10
.LVL127:
	j	.L44
.LVL128:
.L46:
	.loc 1 425 0
	movi.n	a2, 1
	s32i.n	a2, a7, 0
.LVL129:
.L44:
	.loc 1 429 0
	l32i.n	a2, sp, 16
	bnez.n	a2, .L37
	.loc 1 430 0
	mov.n	a10, sp
	s32i.n	a8, sp, 24
	call8	mbedtls_mpi_free
.LVL130:
	l32i.n	a8, sp, 24
.L37:
	.loc 1 434 0
	mov.n	a2, a8
	retw.n
.LFE42:
	.size	mbedtls_mpi_exp_mod, .-mbedtls_mpi_exp_mod
	.section	.text.mbedtls_mpi_mul_mpi,"ax",@progbits
	.literal_position
	.literal .LC37, 2048
	.literal .LC38, 4096
	.literal .LC39, 268175360
	.literal .LC40, 1072703488
	.literal .LC41, 1072703500
	.literal .LC42, 1072702976
	.literal .LC43, 1072701952
	.literal .LC44, 268175488
	.literal .LC45, 1072703508
	.literal .LC46, 1072703504
	.align	4
	.global	mbedtls_mpi_mul_mpi
	.type	mbedtls_mpi_mul_mpi, @function
mbedtls_mpi_mul_mpi:
.LFB44:
	.loc 1 481 0
.LVL131:
	entry	sp, 48
.LCFI11:
.LVL132:
	.loc 1 483 0
	mov.n	a10, a3
	call8	mbedtls_mpi_bitlen
.LVL133:
	mov.n	a13, a10
.LVL134:
	.loc 1 484 0
	mov.n	a10, a4
.LVL135:
	s32i.n	a13, sp, 8
	call8	mbedtls_mpi_bitlen
.LVL136:
	.loc 1 497 0
	l32i.n	a13, sp, 8
	movi.n	a9, 1
	movi.n	a5, 0
	moveqz	a5, a9, a13
	extui	a5, a5, 0, 8
	.loc 1 484 0
	mov.n	a8, a10
.LVL137:
	.loc 1 497 0
	bnez.n	a5, .L71
	moveqz	a5, a9, a10
	beqz.n	a5, .L58
.L71:
	.loc 1 498 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_mpi_lset
.LVL138:
	.loc 1 499 0
	movi.n	a10, 0
	j	.L60
.LVL139:
.L58:
	.loc 1 501 0
	bnei	a13, 1, .L61
	.loc 1 502 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	mbedtls_mpi_copy
.LVL140:
	.loc 1 503 0
	l32i.n	a4, a2, 0
.LVL141:
	l32i.n	a3, a3, 0
.LVL142:
	mull	a3, a4, a3
	j	.L72
.LVL143:
.L61:
	.loc 1 506 0
	bnei	a10, 1, .L62
	.loc 1 507 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_mpi_copy
.LVL144:
	.loc 1 508 0
	l32i.n	a5, a2, 0
	l32i.n	a3, a4, 0
.LVL145:
	mull	a3, a5, a3
.LVL146:
.L72:
	s32i.n	a3, a2, 0
	.loc 1 509 0
	j	.L60
.LVL147:
.L62:
.LBB123:
.LBB124:
	.loc 1 122 0
	add.n	a7, a13, a10
	addi	a7, a7, 31
	srli	a7, a7, 5
.LBE124:
.LBE123:
	.loc 1 513 0
	mov.n	a11, a7
	mov.n	a10, a2
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	s32i.n	a13, sp, 8
	call8	mbedtls_mpi_grow
.LVL148:
	mov.n	a6, a10
.LVL149:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	l32i.n	a13, sp, 8
	bnez.n	a10, .L63
.LBB125:
.LBB126:
	.loc 1 122 0
	addi	a10, a13, 31
.LBE126:
.LBE125:
.LBB128:
.LBB129:
	addi	a8, a8, 31
.LBE129:
.LBE128:
.LBB131:
.LBB127:
	srli	a13, a10, 5
.LBE127:
.LBE131:
.LBB132:
.LBB130:
	srli	a8, a8, 5
.LBE130:
.LBE132:
.LBB133:
.LBB134:
	.loc 1 130 0
	maxu	a5, a8, a13
	addi.n	a5, a5, 15
	movi.n	a10, -0x10
	and	a5, a5, a10
.LBE134:
.LBE133:
	.loc 1 522 0
	l32r	a12, .LC37
	slli	a11, a5, 5
	bgeu	a12, a11, .L64
	.loc 1 523 0
	l32r	a9, .LC38
	slli	a5, a7, 5
	bltu	a9, a5, .L65
.LVL150:
.LBB135:
.LBB136:
.LBB137:
.LBB138:
	.loc 1 130 0
	addi.n	a13, a7, 15
	and	a13, a13, a10
.LBE138:
.LBE137:
	.loc 1 595 0
	s32i.n	a13, sp, 8
	call8	esp_mpi_acquire_hardware
.LVL151:
.LBB139:
	.loc 1 598 0
	mov.n	a10, a6
	.loc 1 599 0
	movi.n	a8, -1
	l32r	a6, .LC39
.LVL152:
	l32i.n	a13, sp, 8
	j	.L66
.LVL153:
.L67:
	add.n	a5, a10, a6
	slli	a5, a5, 2
	memw
	s32i.n	a8, a5, 0
	.loc 1 598 0
	addi.n	a10, a10, 1
.LVL154:
.L66:
	bne	a10, a13, .L67
.LBE139:
	.loc 1 602 0
	l32r	a6, .LC40
	movi.n	a5, 1
	memw
	s32i.n	a5, a6, 0
	.loc 1 605 0
	l32r	a8, .LC41
	srli	a6, a13, 4
	addi.n	a6, a6, -1
	.loc 1 608 0
	l32r	a10, .LC42
.LVL155:
	.loc 1 605 0
	memw
	s32i.n	a6, a8, 0
	.loc 1 608 0
	mov.n	a12, a13
	mov.n	a11, a3
	s32i.n	a13, sp, 8
	call8	mpi_to_mem_block
.LVL156:
	.loc 1 611 0
	l32r	a6, .LC43
	l32r	a8, .LC44
	memw
	s32i.n	a5, a6, 0
.LVL157:
.LBB140:
	.loc 1 613 0
	movi.n	a9, 0
	l32i.n	a13, sp, 8
	j	.L68
.LVL158:
.L69:
	add.n	a6, a5, a8
	slli	a6, a6, 2
	memw
	s32i.n	a9, a6, 0
	.loc 1 612 0
	addi.n	a5, a5, 1
.LVL159:
.L68:
	bltu	a5, a13, .L69
.LVL160:
.LBE140:
.LBB141:
.LBB142:
	.loc 1 258 0
	l32r	a6, .LC45
	movi.n	a5, 1
.LVL161:
	memw
	s32i.n	a5, a6, 0
	.loc 1 263 0
	l32r	a6, .LC46
	memw
	s32i.n	a5, a6, 0
.LBE142:
.LBE141:
	.loc 1 618 0
	s32i.n	a13, sp, 8
	call8	wait_op_complete$isra$1
.LVL162:
	.loc 1 621 0
	l32i.n	a13, sp, 8
	mov.n	a14, a7
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	modular_multiply_finish$isra$3
.LVL163:
	mov.n	a2, a10
.LVL164:
	.loc 1 623 0
	call8	esp_mpi_release_hardware
.LVL165:
.LBE136:
.LBE135:
	.loc 1 528 0
	mov.n	a10, a2
	j	.L60
.LVL166:
.L65:
	.loc 1 534 0
	mov.n	a12, a3
	mov.n	a11, a4
	.loc 1 531 0
	bgeu	a13, a8, .L73
	.loc 1 532 0
	mov.n	a13, a8
	mov.n	a12, a4
	mov.n	a11, a3
	j	.L73
.L73:
	.loc 1 534 0
	mov.n	a10, a2
	call8	mpi_mult_mpi_overlong$isra$5
.LVL167:
	j	.L60
.L64:
	.loc 1 541 0
	s32i.n	a9, sp, 4
	call8	esp_mpi_acquire_hardware
.LVL168:
	.loc 1 544 0
	l32r	a10, .LC42
	mov.n	a12, a5
	mov.n	a11, a3
	call8	mpi_to_mem_block
.LVL169:
	.loc 1 545 0
	l32r	a10, .LC44
	mov.n	a12, a5
	add.n	a10, a5, a10
	mov.n	a11, a4
	slli	a10, a10, 2
	call8	mpi_to_mem_block
.LVL170:
	.loc 1 550 0
	l32r	a8, .LC40
	.loc 1 555 0
	slli	a5, a5, 1
	.loc 1 550 0
	memw
	s32i.n	a6, a8, 0
	.loc 1 555 0
	srli	a5, a5, 4
	l32r	a8, .LC41
	addi.n	a5, a5, 7
	memw
	s32i.n	a5, a8, 0
.LVL171:
.LBB143:
.LBB144:
	.loc 1 258 0
	l32i.n	a9, sp, 4
	l32r	a5, .LC45
	memw
	s32i.n	a9, a5, 0
	.loc 1 263 0
	l32r	a5, .LC46
	memw
	s32i.n	a9, a5, 0
.LBE144:
.LBE143:
	.loc 1 559 0
	call8	wait_op_complete$isra$1
.LVL172:
	.loc 1 562 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	mem_block_to_mpi$constprop$6
.LVL173:
	.loc 1 564 0
	l32i.n	a5, a3, 0
	l32i.n	a3, a4, 0
.LVL174:
	mull	a3, a5, a3
	s32i.n	a3, a2, 0
.LVL175:
.L63:
	.loc 1 567 0
	call8	esp_mpi_release_hardware
.LVL176:
	.loc 1 513 0
	mov.n	a10, a6
.LVL177:
.L60:
	.loc 1 570 0
	mov.n	a2, a10
	retw.n
.LFE44:
	.size	mbedtls_mpi_mul_mpi, .-mbedtls_mpi_mul_mpi
	.section	.text.mpi_mult_mpi_overlong$isra$5,"ax",@progbits
	.align	4
	.type	mpi_mult_mpi_overlong$isra$5, @function
mpi_mult_mpi_overlong$isra$5:
.LFB52:
	.loc 1 645 0
.LVL178:
	entry	sp, 80
.LCFI12:
.LVL179:
	.loc 1 645 0
	mov.n	a6, a2
	.loc 1 653 0
	l32i.n	a2, a4, 8
.LVL180:
	.loc 1 655 0
	l32i.n	a8, a4, 0
	.loc 1 650 0
	srli	a7, a5, 1
.LVL181:
	.loc 1 652 0
	s32i.n	a2, sp, 20
	.loc 1 663 0
	addi	a10, sp, 24
	.loc 1 658 0
	addx4	a2, a7, a2
	sub	a5, a5, a7
.LVL182:
	.loc 1 652 0
	s32i.n	a8, sp, 12
	.loc 1 658 0
	s32i.n	a8, sp, 0
	s32i.n	a2, sp, 8
	.loc 1 652 0
	s32i.n	a7, sp, 16
	.loc 1 658 0
	s32i.n	a5, sp, 4
	.loc 1 663 0
	call8	mbedtls_mpi_init
.LVL183:
	.loc 1 666 0
	addi.n	a12, sp, 12
	mov.n	a11, a3
	addi	a10, sp, 24
	call8	mbedtls_mpi_mul_mpi
.LVL184:
	mov.n	a2, a10
.LVL185:
	bnez.n	a10, .L75
	.loc 1 669 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a6
	call8	mbedtls_mpi_mul_mpi
.LVL186:
	mov.n	a2, a10
.LVL187:
	bnez.n	a10, .L75
	.loc 1 672 0
	slli	a11, a7, 5
	mov.n	a10, a6
	call8	mbedtls_mpi_shift_l
.LVL188:
	mov.n	a2, a10
.LVL189:
	bnez.n	a10, .L75
	.loc 1 675 0
	addi	a12, sp, 24
	mov.n	a11, a6
	mov.n	a10, a6
	call8	mbedtls_mpi_add_mpi
.LVL190:
	mov.n	a2, a10
.LVL191:
.L75:
	.loc 1 678 0
	addi	a10, sp, 24
	call8	mbedtls_mpi_free
.LVL192:
	.loc 1 681 0
	retw.n
.LFE52:
	.size	mpi_mult_mpi_overlong$isra$5, .-mpi_mult_mpi_overlong$isra$5
	.section	.rodata.__func__$5867,"a",@progbits
	.type	__func__$5867, @object
	.size	__func__$5867, 17
__func__$5867:
	.string	"mem_block_to_mpi"
	.section	.bss.mpi_lock,"aw",@nobits
	.align	4
	.type	mpi_lock, @object
	.size	mpi_lock, 4
mpi_lock:
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI3-.LFB47
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
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI5-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI6-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI9-.LFB41
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI10-.LFB42
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI11-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI12-.LFB52
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1500
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xc
	.4byte	.LASF118
	.4byte	.LASF119
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0xb
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x39
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0xad
	.4byte	0xb0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.4byte	0x103
	.uleb128 0x8
	.string	"s"
	.byte	0x7
	.byte	0xbd
	.4byte	0x4f
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x7
	.byte	0xbe
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x7
	.byte	0xbf
	.4byte	0x103
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0xc1
	.4byte	0xd8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x16
	.4byte	0x1f3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1
	.byte	0xcd
	.4byte	0xcd
	.byte	0x1
	.4byte	0x23e
	.uleb128 0xc
	.string	"M"
	.byte	0x1
	.byte	0xcd
	.4byte	0x23e
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.4byte	0x4f
	.uleb128 0xd
	.string	"t"
	.byte	0x1
	.byte	0xd0
	.4byte	0xbb
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd1
	.4byte	0xbb
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd2
	.4byte	0xbb
	.uleb128 0xd
	.string	"N"
	.byte	0x1
	.byte	0xd3
	.4byte	0xbb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x244
	.uleb128 0x6
	.4byte	0x109
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0x3
	.4byte	0x265
	.uleb128 0xc
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x10c
	.byte	0x3
	.4byte	0x27f
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x10c
	.4byte	0xb0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb6
	.byte	0x3
	.4byte	0x2c3
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0xb6
	.4byte	0x2c3
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb6
	.4byte	0xb0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb6
	.4byte	0x4f
	.uleb128 0x13
	.4byte	.LASF64
	.4byte	0x2d9
	.4byte	.LASF61
	.uleb128 0x14
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.4byte	0x73
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x109
	.uleb128 0x15
	.4byte	0x9e
	.4byte	0x2d9
	.uleb128 0x16
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x2c9
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0xff
	.byte	0x3
	.4byte	0x2f6
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0xff
	.4byte	0xb0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x4f
	.byte	0x3
	.4byte	0x352
	.uleb128 0x18
	.string	"Z"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x2c3
	.uleb128 0x18
	.string	"X"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x23e
	.uleb128 0x18
	.string	"Y"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x23e
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x73
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x73
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x4f
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x1
	.byte	0x80
	.4byte	0x73
	.byte	0x3
	.4byte	0x36e
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x80
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x1
	.byte	0x78
	.4byte	0x73
	.byte	0x3
	.4byte	0x38a
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x78
	.4byte	0x73
	.byte	0
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x285
	.4byte	0x4f
	.byte	0x1
	.4byte	0x415
	.uleb128 0x18
	.string	"Z"
	.byte	0x1
	.2byte	0x285
	.4byte	0x2c3
	.uleb128 0x18
	.string	"X"
	.byte	0x1
	.2byte	0x285
	.4byte	0x23e
	.uleb128 0x18
	.string	"Y"
	.byte	0x1
	.2byte	0x285
	.4byte	0x23e
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x285
	.4byte	0x73
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x285
	.4byte	0x73
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x287
	.4byte	0x4f
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x288
	.4byte	0x109
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x28a
	.4byte	0x415
	.uleb128 0x19
	.string	"Yp"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x244
	.uleb128 0x19
	.string	"Ypp"
	.byte	0x1
	.2byte	0x292
	.4byte	0x244
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x2a5
	.byte	0
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x1
	.byte	0x8d
	.4byte	0x73
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458
	.uleb128 0x1d
	.string	"mpi"
	.byte	0x1
	.byte	0x8d
	.4byte	0x23e
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e1
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9d
	.4byte	0xb0
	.4byte	.LLST1
	.uleb128 0x22
	.string	"mpi"
	.byte	0x1
	.byte	0x9d
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9d
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9f
	.4byte	0x4e1
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF79
	.byte	0x1
	.byte	0xa0
	.4byte	0xb0
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4cb
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.4byte	0x4f
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0x1
	.byte	0xed
	.4byte	0x4f
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c3
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.byte	0xed
	.4byte	0x2c3
	.4byte	.LLST5
	.uleb128 0x22
	.string	"M"
	.byte	0x1
	.byte	0xed
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0xed
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0xef
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf0
	.4byte	0x73
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uleb128 0x1f
	.string	"RR"
	.byte	0x1
	.byte	0xf1
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf6
	.4byte	.L12
	.uleb128 0x29
	.4byte	.LVL15
	.4byte	0x1435
	.4byte	0x571
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL16
	.4byte	0x1440
	.4byte	0x592
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0x144c
	.4byte	0x5b2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0x1458
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x1f3
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x610
	.uleb128 0x2d
	.4byte	0x203
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x203
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0x20c
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	0x215
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	0x21e
	.4byte	.LLST8
	.uleb128 0x2e
	.4byte	0x229
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	0x234
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2f
	.4byte	0x265
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64a
	.uleb128 0x2d
	.4byte	0x272
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x272
	.byte	0x9f
	.uleb128 0x30
	.4byte	0x249
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x115
	.uleb128 0x31
	.4byte	0x259
	.4byte	0x3ff02814
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x27f
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x719
	.uleb128 0x2d
	.4byte	0x28b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	0x29f
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	0x294
	.4byte	0x3ff02200
	.uleb128 0x33
	.4byte	0x2aa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5867
	.uleb128 0x34
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.4byte	0x6ea
	.uleb128 0x32
	.4byte	0x28b
	.4byte	.LLST12
	.uleb128 0x32
	.4byte	0x294
	.4byte	.LLST13
	.uleb128 0x32
	.4byte	0x29f
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x33
	.4byte	0x2aa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5867
	.uleb128 0x2b
	.4byte	.LVL40
	.4byte	0x1463
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5867
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.4byte	0x6ff
	.uleb128 0x33
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL41
	.4byte	0x146e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02200
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x2f6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83c
	.uleb128 0x32
	.4byte	0x307
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	0x31b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	0x325
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	0x331
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	0x311
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x311
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0x33d
	.4byte	.LLST17
	.uleb128 0x35
	.4byte	0x349
	.4byte	.L28
	.uleb128 0x36
	.4byte	0x2de
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x788
	.uleb128 0x31
	.4byte	0x2ea
	.4byte	0x3ff02810
	.byte	0
	.uleb128 0x34
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.4byte	0x802
	.uleb128 0x32
	.4byte	0x325
	.4byte	.LLST18
	.uleb128 0x37
	.4byte	0x311
	.uleb128 0x32
	.4byte	0x331
	.4byte	.LLST19
	.uleb128 0x32
	.4byte	0x31b
	.4byte	.LLST20
	.uleb128 0x32
	.4byte	0x307
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.uleb128 0x38
	.4byte	0x33d
	.uleb128 0x39
	.4byte	0x349
	.uleb128 0x29
	.4byte	.LVL51
	.4byte	0x610
	.4byte	0x7ea
	.uleb128 0x3a
	.4byte	0x272
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0x64a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL46
	.4byte	0x458
	.4byte	0x825
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02600
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0x1479
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF84
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b3
	.uleb128 0x3c
	.4byte	0x249
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x62
	.4byte	0x86e
	.uleb128 0x31
	.4byte	0x259
	.4byte	0x3ff00490
	.byte	0
	.uleb128 0x3d
	.4byte	0x249
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x1
	.byte	0x64
	.4byte	0x88b
	.uleb128 0x31
	.4byte	0x259
	.4byte	0x3ff02818
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0x1484
	.4byte	0x8a2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL56
	.4byte	0x148f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x6c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90d
	.uleb128 0x3c
	.4byte	0x249
	.4byte	.LBB83
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x6e
	.4byte	0x8e5
	.uleb128 0x31
	.4byte	0x259
	.4byte	0x3ff00490
	.byte	0
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0x149a
	.4byte	0x8f9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL60
	.4byte	0x14a5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x125
	.4byte	0x4f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc8
	.uleb128 0x3f
	.string	"Z"
	.byte	0x1
	.2byte	0x125
	.4byte	0x2c3
	.4byte	.LLST22
	.uleb128 0x40
	.string	"X"
	.byte	0x1
	.2byte	0x125
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"Y"
	.byte	0x1
	.2byte	0x125
	.4byte	0x23e
	.4byte	.LLST23
	.uleb128 0x3f
	.string	"M"
	.byte	0x1
	.2byte	0x125
	.4byte	0x23e
	.4byte	.LLST24
	.uleb128 0x41
	.string	"ret"
	.byte	0x1
	.2byte	0x127
	.4byte	0x4f
	.4byte	.LLST25
	.uleb128 0x42
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x128
	.4byte	0x73
	.4byte	.LLST26
	.uleb128 0x43
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x129
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x43
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x12a
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x42
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x12b
	.4byte	0x73
	.4byte	.LLST27
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x12c
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x12d
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x12e
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x12f
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x130
	.4byte	0x73
	.uleb128 0x43
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x131
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x132
	.4byte	0xcd
	.4byte	.LLST28
	.uleb128 0x44
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x14e
	.4byte	.L34
	.uleb128 0x36
	.4byte	0x352
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x130
	.4byte	0xa2e
	.uleb128 0x32
	.4byte	0x362
	.4byte	.LLST29
	.byte	0
	.uleb128 0x45
	.4byte	0x2de
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x145
	.4byte	0xa4c
	.uleb128 0x32
	.4byte	0x2ea
	.4byte	.LLST30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL62
	.4byte	0x14b0
	.4byte	0xa60
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL65
	.4byte	0x14b0
	.4byte	0xa75
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL67
	.4byte	0x14b0
	.4byte	0xa89
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL73
	.4byte	0x1435
	.4byte	0xa9d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL74
	.4byte	0x4e7
	.4byte	0xabd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL76
	.4byte	0x5c3
	.4byte	0xad3
	.uleb128 0x3a
	.4byte	0x203
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL78
	.4byte	0x83c
	.uleb128 0x29
	.4byte	.LVL79
	.4byte	0x458
	.4byte	0xaff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02000
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL80
	.4byte	0x458
	.4byte	0xb22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02600
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL81
	.4byte	0x458
	.4byte	0xb45
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02200
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL84
	.4byte	0x610
	.4byte	0xb5e
	.uleb128 0x3a
	.4byte	0x272
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0
	.uleb128 0x29
	.4byte	.LVL86
	.4byte	0x719
	.4byte	0xbae
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x1f
	.byte	0x35
	.byte	0x25
	.uleb128 0x3a
	.4byte	0x311
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL88
	.4byte	0x8b3
	.uleb128 0x2b
	.4byte	.LVL89
	.4byte	0x1458
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x15d
	.4byte	0x4f
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeec
	.uleb128 0x3f
	.string	"Z"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x2c3
	.4byte	.LLST31
	.uleb128 0x3f
	.string	"X"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x23e
	.4byte	.LLST32
	.uleb128 0x40
	.string	"Y"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.string	"M"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x47
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x15d
	.4byte	0x2c3
	.4byte	.LLST33
	.uleb128 0x41
	.string	"ret"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x4f
	.4byte	.LLST34
	.uleb128 0x42
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x160
	.4byte	0x73
	.4byte	.LLST35
	.uleb128 0x42
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x161
	.4byte	0x73
	.4byte	.LLST36
	.uleb128 0x42
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x162
	.4byte	0x73
	.4byte	.LLST37
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x167
	.4byte	0x73
	.uleb128 0x43
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x169
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x16a
	.4byte	0x2c3
	.4byte	.LLST38
	.uleb128 0x42
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x16b
	.4byte	0xcd
	.4byte	.LLST39
	.uleb128 0x44
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1ac
	.4byte	.L44
	.uleb128 0x36
	.4byte	0x352
	.4byte	.LBB95
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x167
	.4byte	0xccb
	.uleb128 0x32
	.4byte	0x362
	.4byte	.LLST40
	.byte	0
	.uleb128 0x36
	.4byte	0x2de
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x197
	.4byte	0xce9
	.uleb128 0x32
	.4byte	0x2ea
	.4byte	.LLST41
	.byte	0
	.uleb128 0x29
	.4byte	.LVL92
	.4byte	0x41a
	.4byte	0xcfd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL94
	.4byte	0x41a
	.4byte	0xd11
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL97
	.4byte	0x41a
	.4byte	0xd25
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL99
	.4byte	0x14bc
	.4byte	0xd3e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL100
	.4byte	0x14bc
	.4byte	0xd57
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL101
	.4byte	0x14bc
	.4byte	0xd70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL102
	.4byte	0x14c8
	.4byte	0xd89
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL104
	.4byte	0x1435
	.4byte	0xd9d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL107
	.4byte	0x5c3
	.4byte	0xdb3
	.uleb128 0x3a
	.4byte	0x203
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL108
	.4byte	0x83c
	.uleb128 0x29
	.4byte	.LVL109
	.4byte	0x458
	.4byte	0xddf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02600
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL110
	.4byte	0x458
	.4byte	0xe02
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL111
	.4byte	0x458
	.4byte	0xe25
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02000
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL112
	.4byte	0x458
	.4byte	0xe42
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02200
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL114
	.4byte	0x1479
	.4byte	0xe5c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL116
	.4byte	0x4e7
	.4byte	0xe76
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL119
	.4byte	0x8b3
	.uleb128 0x29
	.4byte	.LVL121
	.4byte	0x610
	.4byte	0xe98
	.uleb128 0x3a
	.4byte	0x272
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02808
	.byte	0
	.uleb128 0x29
	.4byte	.LVL122
	.4byte	0x64a
	.4byte	0xeb2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL123
	.4byte	0x8b3
	.uleb128 0x29
	.4byte	.LVL126
	.4byte	0x14d4
	.4byte	0xedb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL130
	.4byte	0x1458
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x24d
	.4byte	0x4f
	.byte	0x1
	.4byte	0xf5c
	.uleb128 0x18
	.string	"Z"
	.byte	0x1
	.2byte	0x24d
	.4byte	0x2c3
	.uleb128 0x18
	.string	"X"
	.byte	0x1
	.2byte	0x24d
	.4byte	0x23e
	.uleb128 0x18
	.string	"Y"
	.byte	0x1
	.2byte	0x24d
	.4byte	0x23e
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x24d
	.4byte	0x73
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x24f
	.4byte	0x4f
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x250
	.4byte	0x73
	.uleb128 0x48
	.4byte	0xf4f
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x256
	.4byte	0x4f
	.byte	0
	.uleb128 0x14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x264
	.4byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x4f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fd
	.uleb128 0x3f
	.string	"Z"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x2c3
	.4byte	.LLST42
	.uleb128 0x3f
	.string	"X"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x23e
	.4byte	.LLST43
	.uleb128 0x3f
	.string	"Y"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x23e
	.4byte	.LLST44
	.uleb128 0x41
	.string	"ret"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x4f
	.4byte	.LLST45
	.uleb128 0x42
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x73
	.4byte	.LLST46
	.uleb128 0x42
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x73
	.4byte	.LLST47
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x73
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73
	.uleb128 0x44
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x236
	.4byte	.L63
	.uleb128 0x45
	.4byte	0x36e
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x102a
	.uleb128 0x32
	.4byte	0x37e
	.4byte	.LLST48
	.byte	0
	.uleb128 0x36
	.4byte	0x36e
	.4byte	.LBB125
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x1048
	.uleb128 0x32
	.4byte	0x37e
	.4byte	.LLST49
	.byte	0
	.uleb128 0x36
	.4byte	0x36e
	.4byte	.LBB128
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x1066
	.uleb128 0x32
	.4byte	0x37e
	.4byte	.LLST47
	.byte	0
	.uleb128 0x45
	.4byte	0x352
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x1084
	.uleb128 0x32
	.4byte	0x362
	.4byte	.LLST51
	.byte	0
	.uleb128 0x45
	.4byte	0xeec
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.byte	0x1
	.2byte	0x210
	.4byte	0x11ad
	.uleb128 0x37
	.4byte	0xf1b
	.uleb128 0x32
	.4byte	0xf11
	.4byte	.LLST52
	.uleb128 0x32
	.4byte	0xf07
	.4byte	.LLST53
	.uleb128 0x32
	.4byte	0xefd
	.4byte	.LLST54
	.uleb128 0x1e
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.uleb128 0x2e
	.4byte	0xf27
	.4byte	.LLST55
	.uleb128 0x38
	.4byte	0xf33
	.uleb128 0x45
	.4byte	0x352
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.byte	0x1
	.2byte	0x250
	.4byte	0x10e9
	.uleb128 0x37
	.4byte	0x362
	.byte	0
	.uleb128 0x34
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.4byte	0x1100
	.uleb128 0x2e
	.4byte	0xf44
	.4byte	.LLST56
	.byte	0
	.uleb128 0x34
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.4byte	0x1117
	.uleb128 0x2e
	.4byte	0xf50
	.4byte	.LLST57
	.byte	0
	.uleb128 0x45
	.4byte	0x2de
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.byte	0x1
	.2byte	0x268
	.4byte	0x1135
	.uleb128 0x32
	.4byte	0x2ea
	.4byte	.LLST58
	.byte	0
	.uleb128 0x46
	.4byte	.LVL151
	.4byte	0x83c
	.uleb128 0x29
	.4byte	.LVL156
	.4byte	0x458
	.4byte	0x115b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02600
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL162
	.4byte	0x610
	.4byte	0x1174
	.uleb128 0x3a
	.4byte	0x272
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0
	.uleb128 0x29
	.4byte	.LVL163
	.4byte	0x719
	.4byte	0x11a2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3a
	.4byte	0x311
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL165
	.4byte	0x8b3
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x2de
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.byte	0x1
	.2byte	0x22d
	.4byte	0x11cb
	.uleb128 0x32
	.4byte	0x2ea
	.4byte	.LLST59
	.byte	0
	.uleb128 0x29
	.4byte	.LVL133
	.4byte	0x14b0
	.4byte	0x11df
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL136
	.4byte	0x14b0
	.4byte	0x11f3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL138
	.4byte	0x14c8
	.4byte	0x120c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL140
	.4byte	0x14e0
	.4byte	0x1226
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL144
	.4byte	0x14e0
	.4byte	0x1240
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL148
	.4byte	0x1479
	.4byte	0x125a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL167
	.4byte	0x12fd
	.4byte	0x126e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL168
	.4byte	0x83c
	.uleb128 0x29
	.4byte	.LVL169
	.4byte	0x458
	.4byte	0x129a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02600
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL170
	.4byte	0x458
	.4byte	0x12c0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x75
	.sleb128 268175488
	.byte	0x32
	.byte	0x24
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL172
	.4byte	0x610
	.4byte	0x12d9
	.uleb128 0x3a
	.4byte	0x272
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0
	.uleb128 0x29
	.4byte	.LVL173
	.4byte	0x64a
	.4byte	0x12f3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.4byte	.LVL176
	.4byte	0x8b3
	.byte	0
	.uleb128 0x2f
	.4byte	0x38a
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1412
	.uleb128 0x32
	.4byte	0x39b
	.4byte	.LLST60
	.uleb128 0x2d
	.4byte	0x3a5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	0x3af
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	0x3b9
	.4byte	.LLST61
	.uleb128 0x2d
	.4byte	0x3c5
	.uleb128 0x6
	.byte	0xfa
	.4byte	0x3c5
	.byte	0x9f
	.uleb128 0x2e
	.4byte	0x3d1
	.4byte	.LLST62
	.uleb128 0x33
	.4byte	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.4byte	0x3e9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x33
	.4byte	0x3f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.4byte	0x400
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.4byte	0x40c
	.4byte	.L75
	.uleb128 0x29
	.4byte	.LVL183
	.4byte	0x1435
	.4byte	0x1383
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.4byte	.LVL184
	.4byte	0xf5c
	.4byte	0x13a4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x29
	.4byte	.LVL186
	.4byte	0xf5c
	.4byte	0x13c5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x29
	.4byte	.LVL188
	.4byte	0x14ec
	.4byte	0x13e1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x77
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0
	.uleb128 0x29
	.4byte	.LVL190
	.4byte	0x14d4
	.4byte	0x1401
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL192
	.4byte	0x1458
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x3d
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5368
	.sleb128 0
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.byte	0x59
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.uleb128 0x49
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x7
	.byte	0xcb
	.uleb128 0x4a
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x167
	.uleb128 0x4a
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x302
	.uleb128 0x49
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x7
	.byte	0xd4
	.uleb128 0x49
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.byte	0x29
	.uleb128 0x49
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x9
	.byte	0x1d
	.uleb128 0x49
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x7
	.byte	0xe3
	.uleb128 0x49
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x5
	.byte	0x20
	.uleb128 0x49
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xa
	.byte	0x25
	.uleb128 0x49
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xa
	.byte	0x31
	.uleb128 0x49
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x5
	.byte	0x24
	.uleb128 0x4a
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x183
	.uleb128 0x4a
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x250
	.uleb128 0x4a
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x14a
	.uleb128 0x4a
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x27a
	.uleb128 0x4a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x103
	.uleb128 0x4a
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x20e
	.uleb128 0x4b
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x62
	.byte	0x69
	.byte	0x67
	.byte	0x6e
	.byte	0x75
	.byte	0x6d
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x20
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0x2116
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x6
	.byte	0x8
	.byte	0x21
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x8
	.byte	0x21
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	.LFE47
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x4
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LFE47
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE47
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL61
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x19
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE41
	.2byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x74
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x2f
	.byte	0x77
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE41
	.2byte	0x32
	.byte	0x77
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x1f
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL90
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL93
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL98
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x2a
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02808
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL129
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02808
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL131
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL131
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL131
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL177
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL132
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL166
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1a
	.byte	0x78
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7d
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1a
	.byte	0x78
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7d
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1a
	.byte	0x78
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7d
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1a
	.byte	0x78
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7d
	.sleb128 31
	.byte	0x35
	.byte	0x25
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL150
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL150
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL150
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL150
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL171
	.4byte	.LVL175
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL182
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL179
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	0
	.4byte	0
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	0
	.4byte	0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"PERIPH_VSPI_MODULE"
.LASF59:
	.string	"op_reg"
.LASF9:
	.string	"size_t"
.LASF42:
	.string	"PERIPH_SDMMC_MODULE"
.LASF91:
	.string	"m_words"
.LASF33:
	.string	"PERIPH_PWM3_MODULE"
.LASF16:
	.string	"uint64_t"
.LASF83:
	.string	"num_bits"
.LASF69:
	.string	"hardware_words"
.LASF105:
	.string	"esp_dport_access_read_buffer"
.LASF61:
	.string	"mem_block_to_mpi"
.LASF88:
	.string	"m_bits"
.LASF0:
	.string	"long long unsigned int"
.LASF62:
	.string	"mem_base"
.LASF23:
	.string	"PERIPH_UART2_MODULE"
.LASF19:
	.string	"mbedtls_mpi"
.LASF119:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF92:
	.string	"Mprime"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF56:
	.string	"two_2_i"
.LASF82:
	.string	"Rinv"
.LASF76:
	.string	"words_slice"
.LASF25:
	.string	"PERIPH_I2C1_MODULE"
.LASF96:
	.string	"Rinv_new"
.LASF55:
	.string	"two_2_i_minus_1"
.LASF11:
	.string	"long int"
.LASF74:
	.string	"y_words"
.LASF10:
	.string	"_lock_t"
.LASF41:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF47:
	.string	"PERIPH_WIFI_MODULE"
.LASF93:
	.string	"esp_mpi_mul_mpi_mod"
.LASF99:
	.string	"mpi_lock"
.LASF60:
	.string	"wait_op_complete"
.LASF80:
	.string	"word_length"
.LASF43:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF86:
	.string	"x_bits"
.LASF7:
	.string	"__uint32_t"
.LASF35:
	.string	"PERIPH_UHCI1_MODULE"
.LASF84:
	.string	"esp_mpi_acquire_hardware"
.LASF1:
	.string	"unsigned int"
.LASF46:
	.string	"PERIPH_RNG_MODULE"
.LASF72:
	.string	"bits"
.LASF32:
	.string	"PERIPH_PWM2_MODULE"
.LASF110:
	.string	"_lock_release"
.LASF13:
	.string	"long unsigned int"
.LASF34:
	.string	"PERIPH_UHCI0_MODULE"
.LASF117:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF63:
	.string	"num_words"
.LASF120:
	.string	"mpi_to_mem_block"
.LASF5:
	.string	"short unsigned int"
.LASF49:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF100:
	.string	"mbedtls_mpi_init"
.LASF109:
	.string	"periph_module_disable"
.LASF66:
	.string	"modular_multiply_finish"
.LASF94:
	.string	"mbedtls_mpi_exp_mod"
.LASF22:
	.string	"PERIPH_UART1_MODULE"
.LASF71:
	.string	"bits_to_words"
.LASF118:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/esp_bignum.c"
.LASF102:
	.string	"mbedtls_mpi_mod_mpi"
.LASF45:
	.string	"PERIPH_EMAC_MODULE"
.LASF103:
	.string	"mbedtls_mpi_free"
.LASF36:
	.string	"PERIPH_RMT_MODULE"
.LASF79:
	.string	"copy_words"
.LASF24:
	.string	"PERIPH_I2C0_MODULE"
.LASF54:
	.string	"PERIPH_RSA_MODULE"
.LASF12:
	.string	"sizetype"
.LASF101:
	.string	"mbedtls_mpi_set_bit"
.LASF39:
	.string	"PERIPH_HSPI_MODULE"
.LASF75:
	.string	"Ztemp"
.LASF107:
	.string	"_lock_acquire"
.LASF77:
	.string	"cleanup"
.LASF27:
	.string	"PERIPH_I2S1_MODULE"
.LASF57:
	.string	"modular_inverse"
.LASF29:
	.string	"PERIPH_TIMG1_MODULE"
.LASF8:
	.string	"__uint64_t"
.LASF20:
	.string	"PERIPH_LEDC_MODULE"
.LASF67:
	.string	"hw_words"
.LASF70:
	.string	"words"
.LASF53:
	.string	"PERIPH_SHA_MODULE"
.LASF113:
	.string	"mbedtls_mpi_lset"
.LASF18:
	.string	"mbedtls_mpi_uint"
.LASF17:
	.string	"_Bool"
.LASF104:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF31:
	.string	"PERIPH_PWM1_MODULE"
.LASF4:
	.string	"short int"
.LASF106:
	.string	"mbedtls_mpi_grow"
.LASF64:
	.string	"__func__"
.LASF114:
	.string	"mbedtls_mpi_add_mpi"
.LASF90:
	.string	"x_words"
.LASF85:
	.string	"esp_mpi_release_hardware"
.LASF44:
	.string	"PERIPH_CAN_MODULE"
.LASF21:
	.string	"PERIPH_UART0_MODULE"
.LASF51:
	.string	"PERIPH_BT_LC_MODULE"
.LASF68:
	.string	"z_words"
.LASF15:
	.string	"uint32_t"
.LASF112:
	.string	"mbedtls_mpi_cmp_int"
.LASF87:
	.string	"y_bits"
.LASF14:
	.string	"char"
.LASF65:
	.string	"start_op"
.LASF98:
	.string	"mbedtls_mpi_mul_mpi"
.LASF52:
	.string	"PERIPH_AES_MODULE"
.LASF73:
	.string	"mpi_mult_mpi_overlong"
.LASF115:
	.string	"mbedtls_mpi_copy"
.LASF111:
	.string	"mbedtls_mpi_bitlen"
.LASF78:
	.string	"pbase"
.LASF95:
	.string	"_Rinv"
.LASF26:
	.string	"PERIPH_I2S0_MODULE"
.LASF89:
	.string	"z_bits"
.LASF28:
	.string	"PERIPH_TIMG0_MODULE"
.LASF58:
	.string	"DPORT_REG_READ"
.LASF38:
	.string	"PERIPH_SPI_MODULE"
.LASF116:
	.string	"mbedtls_mpi_shift_l"
.LASF37:
	.string	"PERIPH_PCNT_MODULE"
.LASF30:
	.string	"PERIPH_PWM0_MODULE"
.LASF48:
	.string	"PERIPH_BT_MODULE"
.LASF97:
	.string	"mpi_mult_mpi_failover_mod_mult"
.LASF108:
	.string	"periph_module_enable"
.LASF50:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF81:
	.string	"calculate_rinv"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
