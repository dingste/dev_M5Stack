	.file	"poly1305_donna.c"
	.text
.Ltext0:
	.section	.text.load32_le,"ax",@progbits
	.align	4
	.type	load32_le, @function
load32_le:
.LFB6:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 1 80 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 83 0
	l8ui	a8, a2, 0
	l8ui	a9, a2, 1
	s8i	a8, sp, 0
	l8ui	a8, a2, 2
	l8ui	a2, a2, 3
.LVL1:
	s8i	a9, sp, 1
	s8i	a8, sp, 2
	s8i	a2, sp, 3
	.loc 1 92 0
	l32i.n	a2, sp, 0
	retw.n
.LFE6:
	.size	load32_le, .-load32_le
	.section	.text.poly1305_blocks,"ax",@progbits
	.literal_position
	.literal .LC1, 16777216
	.literal .LC2, 67108863
	.align	4
	.type	poly1305_blocks, @function
poly1305_blocks:
.LFB13:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna32.h"
	.loc 2 58 0
.LVL2:
	entry	sp, 128
.LCFI1:
	.loc 2 59 0
	l8ui	a6, a2, 80
	.loc 2 58 0
	s32i.n	a5, sp, 28
	.loc 2 59 0
	l32r	a5, .LC1
	.loc 2 58 0
	s32i.n	a4, sp, 24
	.loc 2 59 0
	movi.n	a4, 0
.LVL3:
	moveqz	a4, a5, a6
	s32i.n	a4, sp, 48
.LVL4:
	.loc 2 69 0
	l32i.n	a5, a2, 12
	.loc 2 68 0
	l32i.n	a4, a2, 8
.LVL5:
	.loc 2 70 0
	l32i.n	a6, a2, 16
	.loc 2 67 0
	l32i.n	a12, a2, 4
	.loc 2 73 0
	addx4	a9, a4, a4
	.loc 2 74 0
	addx4	a13, a5, a5
	.loc 2 72 0
	addx4	a8, a12, a12
	.loc 2 75 0
	addx4	a14, a6, a6
	.loc 2 68 0
	s32i.n	a4, sp, 0
	.loc 2 69 0
	s32i.n	a5, sp, 8
	.loc 2 73 0
	s32i.n	a9, sp, 20
	.loc 2 74 0
	s32i.n	a13, sp, 12
	.loc 2 66 0
	l32i.n	a11, a2, 0
.LVL6:
	.loc 2 70 0
	s32i.n	a6, sp, 16
.LVL7:
	.loc 2 72 0
	s32i.n	a8, sp, 36
.LVL8:
	.loc 2 75 0
	s32i.n	a14, sp, 4
.LVL9:
	.loc 2 77 0
	l32i.n	a7, a2, 20
.LVL10:
	.loc 2 78 0
	l32i.n	a4, a2, 24
.LVL11:
	.loc 2 79 0
	l32i.n	a13, a2, 28
.LVL12:
	.loc 2 80 0
	l32i.n	a5, a2, 32
.LVL13:
	.loc 2 81 0
	l32i.n	a9, a2, 36
.LVL14:
	.loc 2 83 0
	j	.L14
.LVL15:
.L40:
	.loc 2 85 0
	mov.n	a10, a3
	s32i	a9, sp, 72
	s32i	a11, sp, 76
	s32i	a12, sp, 80
	s32i	a13, sp, 68
	call8	load32_le
.LVL16:
	l32r	a6, .LC2
.LVL17:
	and	a10, a10, a6
	add.n	a7, a10, a7
.LVL18:
	.loc 2 86 0
	addi.n	a10, a3, 3
	call8	load32_le
.LVL19:
	srli	a10, a10, 2
	and	a10, a10, a6
	add.n	a4, a10, a4
.LVL20:
	.loc 2 87 0
	addi.n	a10, a3, 6
	call8	load32_le
.LVL21:
	l32i	a13, sp, 68
	srli	a10, a10, 4
	and	a6, a10, a6
	.loc 2 88 0
	addi.n	a10, a3, 9
	.loc 2 87 0
	add.n	a6, a6, a13
.LVL22:
	.loc 2 88 0
	call8	load32_le
.LVL23:
	srli	a10, a10, 6
	add.n	a5, a10, a5
.LVL24:
	.loc 2 89 0
	addi.n	a10, a3, 12
	call8	load32_le
.LVL25:
	l32i.n	a15, sp, 48
	srli	a10, a10, 8
	l32i	a9, sp, 72
	or	a8, a10, a15
	.loc 2 92 0
	l32i	a11, sp, 76
	.loc 2 89 0
	add.n	a8, a8, a9
.LVL26:
	.loc 2 92 0
	l32i.n	a9, sp, 20
	mull	a13, a7, a11
	mull	a15, a5, a9
	muluh	a14, a7, a11
	add.n	a15, a13, a15
	muluh	a9, a5, a9
	movi.n	a10, 1
	l32i	a12, sp, 80
	bltu	a15, a13, .L15
	movi.n	a10, 0
.L15:
	l32i.n	a13, sp, 4
	add.n	a9, a14, a9
	add.n	a9, a10, a9
	mull	a10, a4, a13
	muluh	a14, a4, a13
	add.n	a10, a15, a10
	movi.n	a13, 1
	bltu	a10, a15, .L16
	movi.n	a13, 0
.L16:
	l32i.n	a15, sp, 12
	add.n	a14, a9, a14
	mull	a9, a6, a15
	add.n	a14, a13, a14
	add.n	a9, a10, a9
	muluh	a13, a6, a15
	movi.n	a15, 1
	bltu	a9, a10, .L17
	movi.n	a15, 0
.L17:
	add.n	a13, a14, a13
	add.n	a13, a15, a13
	l32i.n	a15, sp, 36
	mull	a14, a8, a15
	muluh	a10, a8, a15
	add.n	a14, a9, a14
	s32i.n	a14, sp, 32
	movi.n	a15, 1
	bltu	a14, a9, .L18
	movi.n	a15, 0
.L18:
	add.n	a13, a13, a10
	add.n	a13, a15, a13
	s32i.n	a13, sp, 52
.LVL27:
	.loc 2 95 0
	l32i.n	a13, sp, 12
.LVL28:
	mull	a10, a7, a12
	mull	a9, a5, a13
	muluh	a14, a7, a12
	add.n	a9, a10, a9
	muluh	a13, a5, a13
	movi.n	a15, 1
	bltu	a9, a10, .L19
	movi.n	a15, 0
.L19:
	mull	a10, a11, a4
	add.n	a13, a14, a13
	add.n	a10, a9, a10
	add.n	a13, a15, a13
	muluh	a14, a11, a4
	movi.n	a15, 1
	bltu	a10, a9, .L20
	movi.n	a15, 0
.L20:
	add.n	a14, a13, a14
	add.n	a14, a15, a14
	l32i.n	a15, sp, 4
	mull	a9, a15, a6
	muluh	a13, a15, a6
	add.n	a9, a10, a9
	movi.n	a15, 1
	bltu	a9, a10, .L21
	movi.n	a15, 0
.L21:
	add.n	a13, a14, a13
	add.n	a13, a15, a13
	l32i.n	a15, sp, 20
	mull	a14, a15, a8
	muluh	a10, a15, a8
	add.n	a14, a9, a14
	s32i.n	a14, sp, 40
	movi.n	a15, 1
	bltu	a14, a9, .L22
	movi.n	a15, 0
.L22:
	add.n	a13, a13, a10
	add.n	a13, a15, a13
	.loc 2 98 0
	l32i.n	a9, sp, 0
	.loc 2 95 0
	s32i.n	a13, sp, 56
.LVL29:
	.loc 2 98 0
	l32i.n	a13, sp, 4
.LVL30:
	mull	a10, a7, a9
	muluh	a14, a7, a9
	mull	a9, a13, a5
	movi.n	a15, 1
	add.n	a9, a10, a9
	muluh	a13, a13, a5
	bltu	a9, a10, .L23
	movi.n	a15, 0
.L23:
	mull	a10, a4, a12
	add.n	a13, a14, a13
	add.n	a10, a9, a10
	add.n	a13, a15, a13
	muluh	a14, a4, a12
	movi.n	a15, 1
	bltu	a10, a9, .L24
	movi.n	a15, 0
.L24:
	mull	a9, a11, a6
	add.n	a14, a13, a14
	add.n	a9, a10, a9
	add.n	a14, a15, a14
	muluh	a13, a11, a6
	movi.n	a15, 1
	bltu	a9, a10, .L25
	movi.n	a15, 0
.L25:
	add.n	a13, a14, a13
	add.n	a13, a15, a13
	l32i.n	a15, sp, 12
	mull	a14, a15, a8
	muluh	a10, a15, a8
	add.n	a14, a9, a14
	s32i.n	a14, sp, 44
	movi.n	a15, 1
	bltu	a14, a9, .L26
	movi.n	a15, 0
.L26:
	add.n	a13, a13, a10
	add.n	a13, a15, a13
	s32i.n	a13, sp, 60
.LVL31:
	.loc 2 101 0
	l32i.n	a13, sp, 8
.LVL32:
	mull	a10, a11, a5
	mull	a9, a7, a13
	muluh	a15, a7, a13
	add.n	a10, a9, a10
	muluh	a13, a11, a5
	movi.n	a14, 1
	bltu	a10, a9, .L27
	movi.n	a14, 0
.L27:
	add.n	a13, a15, a13
	add.n	a13, a14, a13
	l32i.n	a14, sp, 0
	mull	a9, a4, a14
	muluh	a15, a4, a14
	add.n	a9, a10, a9
	movi.n	a14, 1
	bltu	a9, a10, .L28
	movi.n	a14, 0
.L28:
	mull	a10, a6, a12
	add.n	a13, a13, a15
	add.n	a10, a9, a10
	add.n	a13, a14, a13
	muluh	a15, a6, a12
	movi.n	a14, 1
	bltu	a10, a9, .L29
	movi.n	a14, 0
.L29:
	add.n	a13, a13, a15
	l32i.n	a15, sp, 4
	add.n	a13, a14, a13
	mull	a9, a15, a8
	muluh	a14, a15, a8
	add.n	a9, a10, a9
	movi.n	a15, 1
	bltu	a9, a10, .L30
	movi.n	a15, 0
.L30:
	add.n	a13, a13, a14
	add.n	a13, a15, a13
	s32i	a13, sp, 64
.LVL33:
	.loc 2 104 0
	l32i.n	a13, sp, 16
.LVL34:
	movi.n	a15, 1
	mull	a14, a7, a13
	muluh	a7, a7, a13
.LVL35:
	mull	a13, a5, a12
	muluh	a5, a5, a12
.LVL36:
	add.n	a13, a14, a13
	bltu	a13, a14, .L31
	movi.n	a15, 0
.L31:
	add.n	a5, a7, a5
	add.n	a5, a15, a5
	l32i.n	a15, sp, 8
	mull	a14, a4, a15
	muluh	a4, a4, a15
.LVL37:
	add.n	a14, a13, a14
	movi.n	a15, 1
	bltu	a14, a13, .L32
	movi.n	a15, 0
.L32:
	add.n	a5, a5, a4
	l32i.n	a4, sp, 0
	add.n	a5, a15, a5
	mull	a13, a6, a4
	movi.n	a15, 1
	add.n	a13, a14, a13
	muluh	a6, a6, a4
.LVL38:
	bltu	a13, a14, .L33
	movi.n	a15, 0
.L33:
	mull	a7, a11, a8
	add.n	a5, a5, a6
	add.n	a7, a13, a7
	add.n	a5, a15, a5
	muluh	a8, a11, a8
.LVL39:
	movi.n	a14, 1
	bltu	a7, a13, .L34
	movi.n	a14, 0
.L34:
	add.n	a5, a5, a8
	add.n	a10, a14, a5
.LVL40:
	.loc 2 111 0
	l32i.n	a6, sp, 52
	.loc 2 110 0
	l32i.n	a5, sp, 32
	.loc 2 111 0
	slli	a15, a6, 6
	.loc 2 110 0
	l32r	a8, .LC2
	.loc 2 111 0
	extui	a6, a5, 26, 6
	l32i.n	a13, sp, 40
	or	a6, a15, a6
	.loc 2 110 0
	and	a14, a5, a8
.LVL41:
	.loc 2 111 0
	add.n	a5, a6, a13
	movi.n	a15, 1
	bltu	a5, a6, .L35
	movi.n	a15, 0
.L35:
	l32i.n	a4, sp, 56
	.loc 2 113 0
	and	a8, a5, a8
	.loc 2 111 0
	add.n	a15, a15, a4
.LVL42:
	.loc 2 114 0
	slli	a15, a15, 6
.LVL43:
	extui	a5, a5, 26, 6
	l32i.n	a13, sp, 44
	or	a5, a15, a5
	add.n	a6, a5, a13
	movi.n	a4, 1
	bltu	a6, a5, .L36
	movi.n	a4, 0
.L36:
	l32i.n	a15, sp, 60
	.loc 2 116 0
	l32r	a5, .LC2
	.loc 2 114 0
	add.n	a4, a4, a15
.LVL44:
	.loc 2 116 0
	and	a13, a6, a5
.LVL45:
	.loc 2 117 0
	slli	a4, a4, 6
.LVL46:
	extui	a6, a6, 26, 6
	or	a6, a4, a6
	add.n	a9, a6, a9
.LVL47:
	movi.n	a15, 1
	bltu	a9, a6, .L37
	movi.n	a15, 0
.L37:
	l32i	a4, sp, 64
	.loc 2 119 0
	and	a5, a9, a5
	.loc 2 117 0
	add.n	a15, a15, a4
.LVL48:
	.loc 2 120 0
	slli	a15, a15, 6
.LVL49:
	extui	a9, a9, 26, 6
	or	a9, a15, a9
	add.n	a7, a9, a7
.LVL50:
	movi.n	a4, 1
	bltu	a7, a9, .L38
	movi.n	a4, 0
.L38:
	.loc 2 122 0
	l32r	a15, .LC2
	.loc 2 120 0
	add.n	a10, a4, a10
.LVL51:
	.loc 2 122 0
	and	a9, a7, a15
.LVL52:
	.loc 2 123 0
	slli	a10, a10, 6
.LVL53:
	extui	a7, a7, 26, 6
	or	a7, a10, a7
	addx4	a7, a7, a7
	add.n	a14, a7, a14
.LVL54:
	.loc 2 129 0
	l32i.n	a6, sp, 24
	.loc 2 126 0
	extui	a4, a14, 26, 6
.LVL55:
	.loc 2 125 0
	and	a7, a14, a15
.LVL56:
	.loc 2 129 0
	l32i.n	a14, sp, 24
	.loc 2 126 0
	add.n	a4, a4, a8
.LVL57:
	.loc 2 129 0
	addi	a8, a6, -16
	.loc 2 128 0
	addi	a3, a3, 16
.LVL58:
	.loc 2 129 0
	movi.n	a6, 1
	bltu	a8, a14, .L39
	movi.n	a6, 0
.L39:
	l32i.n	a15, sp, 28
	s32i.n	a8, sp, 24
.LVL59:
	addi.n	a10, a15, -1
	add.n	a10, a6, a10
	s32i.n	a10, sp, 28
.LVL60:
.L14:
	.loc 2 83 0
	l32i.n	a6, sp, 28
	bnez.n	a6, .L40
	l32i.n	a14, sp, 24
	movi.n	a8, 0xf
	bltu	a8, a14, .L40
	.loc 2 132 0
	s32i.n	a7, a2, 20
	.loc 2 133 0
	s32i.n	a4, a2, 24
	.loc 2 134 0
	s32i.n	a13, a2, 28
	.loc 2 135 0
	s32i.n	a5, a2, 32
	.loc 2 136 0
	s32i.n	a9, a2, 36
	retw.n
.LFE13:
	.size	poly1305_blocks, .-poly1305_blocks
	.section	.text.poly1305_update,"ax",@progbits
	.literal_position
	.literal .LC5, 0, 0
	.literal .LC6, 16, 0
	.align	4
	.type	poly1305_update, @function
poly1305_update:
.LFB15:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c"
	.loc 3 17 0
.LVL61:
	entry	sp, 32
.LCFI2:
	.loc 3 21 0
	l32i.n	a10, a2, 56
	l32i.n	a6, a2, 60
	or	a8, a10, a6
	beqz.n	a8, .L45
.LBB2:
	.loc 3 22 0
	movi.n	a8, 0x10
	sub	a12, a8, a10
	movi.n	a11, 1
	bltu	a8, a12, .L47
	movi.n	a11, 0
.L47:
	neg	a8, a6
	sub	a11, a8, a11
.LVL62:
	mov.n	a9, a5
	mov.n	a8, a4
	bltu	a11, a5, .L49
	bne	a5, a11, .L48
	bgeu	a12, a4, .L48
.L49:
	mov.n	a8, a12
	mov.n	a9, a11
.L48:
.LVL63:
	mov.n	a11, a3
	add.n	a12, a2, a10
	add.n	a3, a3, a8
.LVL64:
	.loc 3 27 0
	j	.L50
.LVL65:
.L51:
	.loc 3 28 0 discriminator 3
	l8ui	a13, a11, 0
	addi.n	a11, a11, 1
	s8i	a13, a12, 63
.L50:
	addi.n	a12, a12, 1
	.loc 3 27 0 discriminator 1
	bne	a3, a11, .L51
.LVL66:
	.loc 3 32 0
	add.n	a11, a10, a8
	movi.n	a12, 1
	bltu	a11, a10, .L52
	movi.n	a12, 0
.L52:
	add.n	a6, a6, a9
	add.n	a6, a12, a6
	s32i.n	a11, a2, 56
	s32i.n	a6, a2, 60
	.loc 3 33 0
	bnez.n	a6, .L53
	movi.n	a6, 0xf
	bgeu	a6, a11, .L44
.L53:
	.loc 3 30 0
	sub	a8, a4, a8
.LVL67:
	movi.n	a6, 1
	bltu	a4, a8, .L56
	movi.n	a6, 0
.L56:
	.loc 3 36 0
	l32r	a12, .LC6
	l32r	a13, .LC6+4
	addi	a11, a2, 64
	mov.n	a10, a2
	.loc 3 30 0
	sub	a5, a5, a9
	mov.n	a4, a8
	.loc 3 36 0
	call8	poly1305_blocks
.LVL68:
	.loc 3 37 0
	l32r	a8, .LC5
	l32r	a9, .LC5+4
	.loc 3 30 0
	sub	a5, a5, a6
	.loc 3 37 0
	s32i.n	a8, a2, 56
	s32i.n	a9, a2, 60
.L45:
.LVL69:
.LBE2:
	.loc 3 41 0
	bnez.n	a5, .L66
	movi.n	a6, 0xf
	bgeu	a6, a4, .L57
.L66:
.LBB3:
	.loc 3 42 0
	movi.n	a6, -0x10
	and	a6, a6, a4
.LVL70:
	.loc 3 44 0
	mov.n	a12, a6
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	.loc 3 45 0
	add.n	a3, a3, a6
.LVL71:
	.loc 3 46 0
	sub	a6, a4, a6
.LVL72:
	.loc 3 44 0
	call8	poly1305_blocks
.LVL73:
	.loc 3 46 0
	movi.n	a5, 1
.LVL74:
	bltu	a4, a6, .L59
	movi.n	a5, 0
.L59:
	mov.n	a4, a6
	neg	a5, a5
.L57:
.LVL75:
.LBE3:
	.loc 3 50 0
	or	a6, a4, a5
	beqz.n	a6, .L44
	movi.n	a6, 0
	mov.n	a9, a6
.L71:
.LVL76:
	.loc 3 52 0 discriminator 3
	add.n	a8, a3, a6
	l8ui	a10, a8, 0
	l32i.n	a8, a2, 56
	add.n	a8, a6, a8
	add.n	a8, a2, a8
	s8i	a10, a8, 64
	.loc 3 51 0 discriminator 3
	addi.n	a10, a6, 1
	movi.n	a8, 1
	bltu	a10, a6, .L63
	movi.n	a8, 0
.L63:
	add.n	a8, a8, a9
	mov.n	a6, a10
.LVL77:
	mov.n	a9, a8
.LVL78:
	bne	a4, a10, .L71
	bne	a5, a8, .L71
	.loc 3 54 0
	l32i.n	a6, a2, 56
.LVL79:
	l32i.n	a8, a2, 60
.LVL80:
	add.n	a4, a6, a4
.LVL81:
	movi.n	a3, 1
.LVL82:
	bltu	a4, a6, .L65
	movi.n	a3, 0
.L65:
	add.n	a5, a8, a5
	add.n	a5, a3, a5
	s32i.n	a4, a2, 56
	s32i.n	a5, a2, 60
.LVL83:
.L44:
	retw.n
.LFE15:
	.size	poly1305_update, .-poly1305_update
	.section	.text.crypto_onetimeauth_poly1305_donna_update,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_update, @function
crypto_onetimeauth_poly1305_donna_update:
.LFB18:
	.loc 3 87 0
.LVL84:
	entry	sp, 32
.LCFI3:
	.loc 3 88 0
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	call8	poly1305_update
.LVL85:
	.loc 3 91 0
	movi.n	a2, 0
.LVL86:
	retw.n
.LFE18:
	.size	crypto_onetimeauth_poly1305_donna_update, .-crypto_onetimeauth_poly1305_donna_update
	.section	.text.poly1305_init,"ax",@progbits
	.literal_position
	.literal .LC8, 67108863
	.literal .LC9, 67108611
	.literal .LC10, 67092735
	.literal .LC11, 66076671
	.literal .LC12, 1048575
	.literal .LC13, 0, 0
	.align	4
	.type	poly1305_init, @function
poly1305_init:
.LFB12:
	.loc 2 30 0
.LVL87:
	entry	sp, 32
.LCFI4:
	.loc 2 32 0
	mov.n	a10, a3
	call8	load32_le
.LVL88:
	l32r	a4, .LC8
	and	a10, a10, a4
	s32i.n	a10, a2, 0
	.loc 2 33 0
	addi.n	a10, a3, 3
	call8	load32_le
.LVL89:
	l32r	a4, .LC9
	srli	a10, a10, 2
	and	a10, a10, a4
	s32i.n	a10, a2, 4
	.loc 2 34 0
	addi.n	a10, a3, 6
	call8	load32_le
.LVL90:
	l32r	a4, .LC10
	srli	a10, a10, 4
	and	a10, a10, a4
	s32i.n	a10, a2, 8
	.loc 2 35 0
	addi.n	a10, a3, 9
	call8	load32_le
.LVL91:
	l32r	a4, .LC11
	srli	a10, a10, 6
	and	a10, a10, a4
	s32i.n	a10, a2, 12
	.loc 2 36 0
	addi.n	a10, a3, 12
	call8	load32_le
.LVL92:
	l32r	a4, .LC12
	srli	a10, a10, 8
	and	a10, a10, a4
	.loc 2 39 0
	movi.n	a4, 0
	.loc 2 36 0
	s32i.n	a10, a2, 16
	.loc 2 39 0
	s32i.n	a4, a2, 20
	.loc 2 40 0
	s32i.n	a4, a2, 24
	.loc 2 41 0
	s32i.n	a4, a2, 28
	.loc 2 42 0
	s32i.n	a4, a2, 32
	.loc 2 43 0
	s32i.n	a4, a2, 36
	.loc 2 46 0
	addi	a10, a3, 16
	call8	load32_le
.LVL93:
	s32i.n	a10, a2, 40
	.loc 2 47 0
	addi	a10, a3, 20
	call8	load32_le
.LVL94:
	s32i.n	a10, a2, 44
	.loc 2 48 0
	addi	a10, a3, 24
	call8	load32_le
.LVL95:
	s32i.n	a10, a2, 48
	.loc 2 49 0
	addi	a10, a3, 28
	call8	load32_le
.LVL96:
	.loc 2 51 0
	l32r	a8, .LC13
	l32r	a9, .LC13+4
	.loc 2 49 0
	s32i.n	a10, a2, 52
	.loc 2 51 0
	s32i.n	a8, a2, 56
	s32i.n	a9, a2, 60
	.loc 2 52 0
	s8i	a4, a2, 80
	retw.n
.LFE12:
	.size	poly1305_init, .-poly1305_init
	.section	.text.crypto_onetimeauth_poly1305_donna_init,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_init, @function
crypto_onetimeauth_poly1305_donna_init:
.LFB17:
	.loc 3 75 0
.LVL97:
	entry	sp, 32
.LCFI5:
	.loc 3 78 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	poly1305_init
.LVL98:
	.loc 3 81 0
	movi.n	a2, 0
.LVL99:
	retw.n
.LFE17:
	.size	crypto_onetimeauth_poly1305_donna_init, .-crypto_onetimeauth_poly1305_donna_init
	.section	.text.poly1305_finish,"ax",@progbits
	.literal_position
	.literal .LC16, 16, 0
	.literal .LC17, 67108863
	.literal .LC18, -67108864
	.align	4
	.type	poly1305_finish, @function
poly1305_finish:
.LFB14:
	.loc 2 141 0
.LVL100:
	entry	sp, 64
.LCFI6:
	.loc 2 148 0
	l32i.n	a4, a2, 56
	l32i.n	a5, a2, 60
	or	a6, a4, a5
	beqz.n	a6, .L84
.LVL101:
.LBB13:
	.loc 2 151 0
	add.n	a6, a2, a4
	movi.n	a7, 1
	s8i	a7, a6, 64
	.loc 2 152 0
	movi.n	a8, 0xf
	j	.L86
.LVL102:
.L101:
	.loc 2 153 0 discriminator 2
	add.n	a6, a2, a4
	s8i	a5, a6, 64
.LVL103:
.L86:
	addi.n	a7, a4, 1
	movi.n	a6, 1
	bltu	a7, a4, .L87
	movi.n	a6, 0
.L87:
	add.n	a5, a6, a5
.LVL104:
	mov.n	a4, a7
	.loc 2 152 0 discriminator 1
	bnez.n	a5, .L97
	bgeu	a8, a7, .L101
.L97:
	.loc 2 155 0
	movi.n	a4, 1
	.loc 2 156 0
	l32r	a12, .LC16
	l32r	a13, .LC16+4
	.loc 2 155 0
	s8i	a4, a2, 80
	.loc 2 156 0
	addi	a11, a2, 64
	mov.n	a10, a2
	call8	poly1305_blocks
.LVL105:
.L84:
.LBE13:
	.loc 2 167 0
	l32r	a8, .LC17
	.loc 2 161 0
	l32i.n	a7, a2, 24
	.loc 2 162 0
	l32i.n	a15, a2, 28
	.loc 2 167 0
	and	a4, a7, a8
	.loc 2 168 0
	extui	a7, a7, 26, 6
	add.n	a15, a7, a15
	.loc 2 163 0
	l32i.n	a9, a2, 32
	.loc 2 171 0
	extui	a14, a15, 26, 6
	add.n	a14, a14, a9
	.loc 2 164 0
	l32i.n	a6, a2, 36
	.loc 2 174 0
	extui	a7, a14, 26, 6
	add.n	a7, a7, a6
	.loc 2 176 0
	and	a6, a7, a8
	.loc 2 160 0
	l32i.n	a5, a2, 20
.LVL106:
	.loc 2 177 0
	extui	a7, a7, 26, 6
	addx4	a7, a7, a7
	add.n	a5, a7, a5
.LVL107:
	.loc 2 179 0
	and	a7, a5, a8
	.loc 2 170 0
	and	a10, a15, a8
	.loc 2 180 0
	extui	a9, a5, 26, 6
.LVL108:
	.loc 2 183 0
	addi.n	a11, a7, 5
	.loc 2 173 0
	and	a12, a14, a8
	.loc 2 180 0
	add.n	a4, a9, a4
.LVL109:
	.loc 2 170 0
	s32i.n	a10, sp, 16
.LVL110:
	.loc 2 186 0
	extui	a9, a11, 26, 6
	.loc 2 173 0
	s32i.n	a12, sp, 20
.LVL111:
	.loc 2 186 0
	add.n	a9, a9, a4
.LVL112:
	.loc 2 189 0
	l32i.n	a12, sp, 16
.LVL113:
	extui	a10, a9, 26, 6
.LVL114:
	add.n	a10, a10, a12
.LVL115:
	s32i.n	a10, sp, 24
.LVL116:
	.loc 2 192 0
	extui	a13, a10, 26, 6
.LVL117:
	l32i.n	a10, sp, 20
.LVL118:
	and	a9, a9, a8
.LVL119:
	add.n	a13, a13, a10
.LVL120:
	.loc 2 195 0
	l32r	a10, .LC18
	extui	a12, a13, 26, 6
.LVL121:
	add.n	a10, a6, a10
	add.n	a10, a12, a10
.LVL122:
	.loc 2 198 0
	extui	a12, a10, 31, 1
.LVL123:
	addi.n	a12, a12, -1
.LVL124:
	xor	a11, a5, a11
.LVL125:
	xor	a9, a9, a4
	and	a9, a9, a12
	and	a11, a11, a8
	l32i.n	a5, sp, 24
	and	a11, a11, a12
	.loc 2 207 0
	xor	a4, a4, a9
.LVL126:
	.loc 2 206 0
	xor	a7, a7, a11
.LVL127:
	xor	a13, a14, a13
.LVL128:
	xor	a15, a15, a5
	.loc 2 213 0
	slli	a11, a4, 26
	and	a15, a15, a8
	.loc 2 208 0
	l32i.n	a9, sp, 16
	and	a8, a13, a8
.LVL129:
	.loc 2 213 0
	or	a11, a11, a7
	.loc 2 209 0
	l32i.n	a5, sp, 20
	.loc 2 219 0
	l32i.n	a7, a2, 40
.LVL130:
	and	a15, a15, a12
	and	a8, a8, a12
	.loc 2 208 0
	xor	a15, a9, a15
.LVL131:
	xor	a10, a6, a10
.LVL132:
	.loc 2 209 0
	xor	a8, a5, a8
.LVL133:
	.loc 2 221 0
	add.n	a13, a11, a7
	and	a12, a10, a12
.LVL134:
	.loc 2 214 0
	srli	a4, a4, 6
.LVL135:
	.loc 2 215 0
	srli	a14, a15, 12
.LVL136:
	.loc 2 216 0
	extui	a10, a8, 18, 14
.LVL137:
	.loc 2 221 0
	movi.n	a9, 1
	bltu	a13, a11, .L90
	movi.n	a9, 0
.L90:
	slli	a15, a15, 20
.LVL138:
	l32i.n	a5, a2, 44
	or	a15, a15, a4
	add.n	a5, a15, a5
	movi.n	a4, 1
.LVL139:
	bltu	a5, a15, .L91
	movi.n	a4, 0
.L91:
	add.n	a9, a5, a9
	movi.n	a7, 1
.LVL140:
	bltu	a9, a5, .L92
	movi.n	a7, 0
.L92:
	add.n	a4, a7, a4
.LVL141:
	.loc 2 223 0
	slli	a8, a8, 14
.LVL142:
	l32i.n	a7, a2, 48
	or	a14, a8, a14
.LVL143:
	add.n	a7, a14, a7
	movi.n	a5, 1
	bltu	a7, a14, .L93
	movi.n	a5, 0
.L93:
	add.n	a4, a7, a4
.LVL144:
	movi.n	a8, 1
	bltu	a4, a7, .L94
	movi.n	a8, 0
.L94:
	.loc 2 225 0
	xor	a6, a6, a12
.LVL145:
	l32i.n	a7, a2, 52
	slli	a6, a6, 8
	or	a6, a6, a10
	add.n	a6, a6, a7
	.loc 2 223 0
	add.n	a5, a8, a5
.LVL146:
	.loc 2 225 0
	add.n	a5, a6, a5
.LVL147:
.LBB14:
.LBB15:
	.loc 1 99 0
	srli	a7, a13, 8
	extui	a6, a13, 16, 16
	s8i	a7, a3, 1
.LVL148:
	s8i	a6, a3, 2
	extui	a7, a13, 24, 8
.LBE15:
.LBE14:
.LBB18:
.LBB19:
	srli	a6, a9, 8
	extui	a8, a9, 16, 16
.LBE19:
.LBE18:
.LBB23:
.LBB16:
	s8i	a7, a3, 3
.LBE16:
.LBE23:
.LBB24:
.LBB20:
	s8i	a6, a3, 5
	s8i	a8, a3, 6
.LBE20:
.LBE24:
.LBB25:
.LBB26:
	s8i	a4, a3, 8
.LBE26:
.LBE25:
.LBB29:
.LBB21:
	extui	a6, a9, 24, 8
.LBE21:
.LBE29:
.LBB30:
.LBB27:
	srli	a8, a4, 8
	extui	a7, a4, 16, 16
	s32i.n	a4, sp, 8
	extui	a4, a4, 24, 8
.LVL149:
.LBE27:
.LBE30:
.LBB31:
.LBB17:
	s8i	a13, a3, 0
.LBE17:
.LBE31:
.LBB32:
.LBB22:
	s8i	a9, a3, 4
	s8i	a6, a3, 7
.LBE22:
.LBE32:
.LBB33:
.LBB28:
	s8i	a8, a3, 9
	s8i	a7, a3, 10
	s8i	a4, a3, 11
.LBE28:
.LBE33:
.LBB34:
.LBB35:
	s8i	a5, a3, 12
	addi.n	a4, a3, 12
	srli	a6, a5, 8
	extui	a3, a5, 16, 16
.LVL150:
	s32i.n	a5, sp, 12
	extui	a5, a5, 24, 8
.LVL151:
	s8i	a6, a4, 1
	s8i	a3, a4, 2
	s8i	a5, a4, 3
.LBE35:
.LBE34:
	.loc 2 234 0
	movi.n	a11, 0x58
	mov.n	a10, a2
	s32i.n	a13, sp, 0
.LVL152:
	s32i.n	a9, sp, 4
.LVL153:
	call8	sodium_memzero
.LVL154:
	retw.n
.LFE14:
	.size	poly1305_finish, .-poly1305_finish
	.section	.text.crypto_onetimeauth_poly1305_donna_final,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_final, @function
crypto_onetimeauth_poly1305_donna_final:
.LFB19:
	.loc 3 96 0
.LVL155:
	entry	sp, 32
.LCFI7:
	.loc 3 97 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	poly1305_finish
.LVL156:
	.loc 3 100 0
	movi.n	a2, 0
.LVL157:
	retw.n
.LFE19:
	.size	crypto_onetimeauth_poly1305_donna_final, .-crypto_onetimeauth_poly1305_donna_final
	.section	.text.crypto_onetimeauth_poly1305_donna,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna, @function
crypto_onetimeauth_poly1305_donna:
.LFB16:
	.loc 3 62 0
.LVL158:
	entry	sp, 48
	mov.n	a13, a5
	movi	a5, -0xa0
	add.n	a5, sp, a5
	mov.n	a7, sp
.LCFI8:
	.loc 3 62 0
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	slli	a5, a5, 6
	.loc 3 65 0
	mov.n	a11, a6
	mov.n	a10, a5
	s32i.n	a13, a7, 4
	s32i.n	a4, a7, 0
	call8	poly1305_init
.LVL159:
	.loc 3 66 0
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	mov.n	a11, a3
	mov.n	a10, a5
	call8	poly1305_update
.LVL160:
	.loc 3 67 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	poly1305_finish
.LVL161:
	.loc 3 70 0
	movi.n	a2, 0
.LVL162:
	retw.n
.LFE16:
	.size	crypto_onetimeauth_poly1305_donna, .-crypto_onetimeauth_poly1305_donna
	.section	.text.crypto_onetimeauth_poly1305_donna_verify,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_verify, @function
crypto_onetimeauth_poly1305_donna_verify:
.LFB20:
	.loc 3 107 0
.LVL163:
	entry	sp, 48
.LCFI9:
	.loc 3 110 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_onetimeauth_poly1305_donna
.LVL164:
	.loc 3 112 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_16
.LVL165:
	.loc 3 113 0
	mov.n	a2, a10
.LVL166:
	retw.n
.LFE20:
	.size	crypto_onetimeauth_poly1305_donna_verify, .-crypto_onetimeauth_poly1305_donna_verify
	.global	crypto_onetimeauth_poly1305_donna_implementation
	.section	.data.crypto_onetimeauth_poly1305_donna_implementation,"aw",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_implementation, @object
	.size	crypto_onetimeauth_poly1305_donna_implementation, 20
crypto_onetimeauth_poly1305_donna_implementation:
	.word	crypto_onetimeauth_poly1305_donna
	.word	crypto_onetimeauth_poly1305_donna_verify
	.word	crypto_onetimeauth_poly1305_donna_init
	.word	crypto_onetimeauth_poly1305_donna_update
	.word	crypto_onetimeauth_poly1305_donna_final
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/../onetimeauth_poly1305.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa28
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0x68
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x4
	.byte	0x12
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x5
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x61
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF15
	.2byte	0x100
	.byte	0x6
	.byte	0x13
	.4byte	0xc5
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x14
	.4byte	0xc5
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.4byte	0xd5
	.uleb128 0x9
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0xab
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x14
	.byte	0x7
	.byte	0x7
	.4byte	0x129
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8
	.4byte	0x152
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa
	.4byte	0x176
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x7
	.byte	0xc
	.4byte	0x196
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x7
	.byte	0xe
	.4byte	0x1b5
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x7
	.byte	0x11
	.4byte	0x1cf
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x9e
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d
	.uleb128 0xd
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.4byte	0x129
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x176
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x158
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17c
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x1b5
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19c
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x1cf
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x9e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x58
	.byte	0x2
	.byte	0x13
	.4byte	0x226
	.uleb128 0xe
	.string	"r"
	.byte	0x2
	.byte	0x14
	.4byte	0x226
	.byte	0
	.uleb128 0xe
	.string	"h"
	.byte	0x2
	.byte	0x15
	.4byte	0x226
	.byte	0x14
	.uleb128 0xe
	.string	"pad"
	.byte	0x2
	.byte	0x16
	.4byte	0x236
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0x17
	.4byte	0x25
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x2
	.byte	0x18
	.4byte	0x246
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x2
	.byte	0x19
	.4byte	0x53
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x236
	.uleb128 0x9
	.4byte	0x90
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x246
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x2
	.byte	0x1a
	.4byte	0x1d5
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x296
	.uleb128 0x10
	.string	"src"
	.byte	0x1
	.byte	0x4f
	.4byte	0x296
	.4byte	.LLST0
	.uleb128 0x11
	.string	"w"
	.byte	0x1
	.byte	0x52
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29c
	.uleb128 0xd
	.4byte	0x73
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x2
	.byte	0x38
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x465
	.uleb128 0x13
	.string	"st"
	.byte	0x2
	.byte	0x38
	.4byte	0x465
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.string	"m"
	.byte	0x2
	.byte	0x38
	.4byte	0x147
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x2
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x2
	.byte	0x3b
	.4byte	0x46b
	.4byte	.LLST3
	.uleb128 0x16
	.string	"r0"
	.byte	0x2
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST4
	.uleb128 0x16
	.string	"r1"
	.byte	0x2
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST5
	.uleb128 0x16
	.string	"r2"
	.byte	0x2
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST6
	.uleb128 0x16
	.string	"r3"
	.byte	0x2
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST7
	.uleb128 0x16
	.string	"r4"
	.byte	0x2
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST8
	.uleb128 0x16
	.string	"s1"
	.byte	0x2
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0x16
	.string	"s2"
	.byte	0x2
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0x16
	.string	"s3"
	.byte	0x2
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST11
	.uleb128 0x16
	.string	"s4"
	.byte	0x2
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST12
	.uleb128 0x16
	.string	"h0"
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST13
	.uleb128 0x16
	.string	"h1"
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST14
	.uleb128 0x16
	.string	"h2"
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST15
	.uleb128 0x16
	.string	"h3"
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST16
	.uleb128 0x16
	.string	"h4"
	.byte	0x2
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST17
	.uleb128 0x16
	.string	"d0"
	.byte	0x2
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x16
	.string	"d1"
	.byte	0x2
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x16
	.string	"d2"
	.byte	0x2
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x16
	.string	"d3"
	.byte	0x2
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x16
	.string	"d4"
	.byte	0x2
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x16
	.string	"c"
	.byte	0x2
	.byte	0x40
	.4byte	0x97
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	.LVL16
	.4byte	0x261
	.4byte	0x418
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x261
	.4byte	0x42c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x261
	.4byte	0x440
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x261
	.4byte	0x454
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 9
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x261
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x256
	.uleb128 0xd
	.4byte	0x97
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x3
	.byte	0xf
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x518
	.uleb128 0x13
	.string	"st"
	.byte	0x3
	.byte	0xf
	.4byte	0x465
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.string	"m"
	.byte	0x3
	.byte	0xf
	.4byte	0x147
	.4byte	.LLST24
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x3
	.byte	0x10
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x16
	.string	"i"
	.byte	0x3
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x4ee
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x3
	.byte	0x16
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x2a1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x3
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0x2a1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x3
	.byte	0x54
	.4byte	0x33
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x575
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x3
	.byte	0x55
	.4byte	0x190
	.4byte	.LLST29
	.uleb128 0x13
	.string	"in"
	.byte	0x3
	.byte	0x55
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x3
	.byte	0x56
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LVL85
	.4byte	0x470
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x2
	.byte	0x1d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x13
	.string	"st"
	.byte	0x2
	.byte	0x1d
	.4byte	0x465
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"key"
	.byte	0x2
	.byte	0x1d
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL88
	.4byte	0x261
	.4byte	0x5b7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL89
	.4byte	0x261
	.4byte	0x5cb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LVL90
	.4byte	0x261
	.4byte	0x5df
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL91
	.4byte	0x261
	.4byte	0x5f3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 9
	.byte	0
	.uleb128 0x17
	.4byte	.LVL92
	.4byte	0x261
	.4byte	0x607
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x17
	.4byte	.LVL93
	.4byte	0x261
	.4byte	0x61b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.uleb128 0x17
	.4byte	.LVL94
	.4byte	0x261
	.4byte	0x62f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL95
	.4byte	0x261
	.4byte	0x643
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL96
	.4byte	0x261
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x3
	.byte	0x49
	.4byte	0x33
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x3
	.byte	0x49
	.4byte	0x190
	.4byte	.LLST30
	.uleb128 0x13
	.string	"key"
	.byte	0x3
	.byte	0x4a
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL98
	.4byte	0x575
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.4byte	0x6c1
	.uleb128 0x1e
	.string	"dst"
	.byte	0x1
	.byte	0x60
	.4byte	0x6c1
	.uleb128 0x1e
	.string	"w"
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x2
	.byte	0x8c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x879
	.uleb128 0x13
	.string	"st"
	.byte	0x2
	.byte	0x8c
	.4byte	0x465
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.string	"mac"
	.byte	0x2
	.byte	0x8c
	.4byte	0x9e
	.4byte	.LLST31
	.uleb128 0x16
	.string	"h0"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST32
	.uleb128 0x16
	.string	"h1"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST33
	.uleb128 0x16
	.string	"h2"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST34
	.uleb128 0x16
	.string	"h3"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST35
	.uleb128 0x16
	.string	"h4"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST36
	.uleb128 0x16
	.string	"c"
	.byte	0x2
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST37
	.uleb128 0x16
	.string	"g0"
	.byte	0x2
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST38
	.uleb128 0x16
	.string	"g1"
	.byte	0x2
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST39
	.uleb128 0x16
	.string	"g2"
	.byte	0x2
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST40
	.uleb128 0x16
	.string	"g3"
	.byte	0x2
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST41
	.uleb128 0x16
	.string	"g4"
	.byte	0x2
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST42
	.uleb128 0x16
	.string	"f"
	.byte	0x2
	.byte	0x90
	.4byte	0x25
	.4byte	.LLST43
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x2
	.byte	0x91
	.4byte	0x97
	.4byte	.LLST44
	.uleb128 0x1a
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x7da
	.uleb128 0x1f
	.string	"i"
	.byte	0x2
	.byte	0x95
	.4byte	0x25
	.uleb128 0x19
	.4byte	.LVL105
	.4byte	0x2a1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x6a0
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0xe4
	.4byte	0x7ff
	.uleb128 0x21
	.4byte	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.4byte	0x6ac
	.4byte	.LLST45
	.byte	0
	.uleb128 0x20
	.4byte	0x6a0
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0xe5
	.4byte	0x820
	.uleb128 0x21
	.4byte	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.4byte	0x6ac
	.byte	0
	.uleb128 0x20
	.4byte	0x6a0
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x2
	.byte	0xe6
	.4byte	0x841
	.uleb128 0x21
	.4byte	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.4byte	0x6ac
	.byte	0
	.uleb128 0x24
	.4byte	0x6a0
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x2
	.byte	0xe7
	.4byte	0x862
	.uleb128 0x21
	.4byte	0x6b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.4byte	0x6ac
	.byte	0
	.uleb128 0x19
	.4byte	.LVL154
	.4byte	0xa15
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x3
	.byte	0x5e
	.4byte	0x33
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c5
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x3
	.byte	0x5f
	.4byte	0x190
	.4byte	.LLST46
	.uleb128 0x13
	.string	"out"
	.byte	0x3
	.byte	0x5f
	.4byte	0x9e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL156
	.4byte	0x6c7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x3
	.byte	0x3b
	.4byte	0x33
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x970
	.uleb128 0x10
	.string	"out"
	.byte	0x3
	.byte	0x3b
	.4byte	0x9e
	.4byte	.LLST47
	.uleb128 0x13
	.string	"m"
	.byte	0x3
	.byte	0x3b
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x3
	.byte	0x3c
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x13
	.string	"key"
	.byte	0x3
	.byte	0x3d
	.4byte	0x147
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF34
	.byte	0x3
	.byte	0x3f
	.4byte	0x256
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.4byte	.LVL159
	.4byte	0x575
	.4byte	0x93f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL160
	.4byte	0x470
	.4byte	0x959
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL161
	.4byte	0x6c7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x3
	.byte	0x67
	.4byte	0x33
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa04
	.uleb128 0x10
	.string	"h"
	.byte	0x3
	.byte	0x67
	.4byte	0x147
	.4byte	.LLST48
	.uleb128 0x13
	.string	"in"
	.byte	0x3
	.byte	0x68
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x3
	.byte	0x69
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x13
	.string	"k"
	.byte	0x3
	.byte	0x6a
	.4byte	0x147
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x3
	.byte	0x6c
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL164
	.4byte	0x8c5
	.4byte	0x9ed
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL165
	.4byte	0xa20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF50
	.byte	0x3
	.byte	0x74
	.4byte	0xe0
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_onetimeauth_poly1305_donna_implementation
	.uleb128 0x27
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x16
	.uleb128 0x27
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.byte	0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x91
	.sleb128 -104
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LVL59
	.2byte	0xa
	.byte	0x91
	.sleb128 -104
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL60
	.4byte	.LFE13
	.2byte	0xa
	.byte	0x91
	.sleb128 -104
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL15
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL15
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL11
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL12
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL13
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL60
	.2byte	0xa
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	.LVL42
	.2byte	0xa
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x8
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LVL44
	.2byte	0xa
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x7
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL100
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	.LVL111
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x6b
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x27
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL137
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x7
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x25
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x44
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x34
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x27
	.byte	0x44
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x156
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x27
	.byte	0x44
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0x27
	.byte	0x36
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL121
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL131
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL136
	.4byte	.LVL142
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x3e
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x40
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x27
	.byte	0x3e
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x6e
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x27
	.byte	0x3e
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x27
	.byte	0x3c
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0xa0
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x27
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x27
	.byte	0x3e
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x27
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x27
	.byte	0x3c
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149
	.4byte	.LVL154-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137
	.4byte	.LVL145
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x38
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x38
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL151
	.4byte	.LVL154-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL111
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x1f
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE14
	.2byte	0xc
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL111
	.4byte	.LVL124
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0xc
	.byte	0x77
	.sleb128 5
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x2a
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL134
	.2byte	0x27
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x3b
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL145
	.2byte	0x55
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x6e
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL112
	.4byte	.LVL119
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0xa
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL134
	.2byte	0xd
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x21
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x3a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0xc
	.byte	0x7d
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL134
	.2byte	0x13
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x27
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x40
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x16
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x2a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x5c
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0xe
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0xf
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 40
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL124
	.4byte	.LVL134
	.2byte	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL145
	.2byte	0x15
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2e
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL158
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/libsodium"
.LASF6:
	.string	"__uint8_t"
.LASF37:
	.string	"crypto_onetimeauth_poly1305_donna_init"
.LASF33:
	.string	"crypto_onetimeauth_poly1305_donna_update"
.LASF17:
	.string	"opaque"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"leftover"
.LASF49:
	.string	"store32_le"
.LASF8:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF30:
	.string	"poly1305_update"
.LASF34:
	.string	"state"
.LASF11:
	.string	"long int"
.LASF47:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c"
.LASF7:
	.string	"__uint32_t"
.LASF39:
	.string	"mask"
.LASF40:
	.string	"crypto_onetimeauth_poly1305_donna_final"
.LASF20:
	.string	"onetimeauth_init"
.LASF35:
	.string	"inlen"
.LASF36:
	.string	"poly1305_init"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"onetimeauth_update"
.LASF38:
	.string	"poly1305_finish"
.LASF13:
	.string	"long unsigned int"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"poly1305_blocks"
.LASF2:
	.string	"short unsigned int"
.LASF42:
	.string	"crypto_onetimeauth_poly1305_donna_verify"
.LASF22:
	.string	"onetimeauth_final"
.LASF15:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF12:
	.string	"sizetype"
.LASF23:
	.string	"poly1305_state_internal_t"
.LASF16:
	.string	"crypto_onetimeauth_poly1305_implementation"
.LASF44:
	.string	"sodium_memzero"
.LASF28:
	.string	"hibit"
.LASF4:
	.string	"unsigned char"
.LASF41:
	.string	"crypto_onetimeauth_poly1305_donna"
.LASF5:
	.string	"short int"
.LASF50:
	.string	"crypto_onetimeauth_poly1305_donna_implementation"
.LASF26:
	.string	"final"
.LASF10:
	.string	"uint32_t"
.LASF32:
	.string	"load32_le"
.LASF19:
	.string	"onetimeauth_verify"
.LASF14:
	.string	"char"
.LASF25:
	.string	"buffer"
.LASF31:
	.string	"want"
.LASF18:
	.string	"onetimeauth"
.LASF43:
	.string	"correct"
.LASF27:
	.string	"bytes"
.LASF9:
	.string	"uint8_t"
.LASF45:
	.string	"crypto_verify_16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
