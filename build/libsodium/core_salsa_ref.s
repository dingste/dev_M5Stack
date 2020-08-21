	.file	"core_salsa_ref.c"
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
	.section	.text.store32_le,"ax",@progbits
	.align	4
	.type	store32_le, @function
store32_le:
.LFB7:
	.loc 1 97 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 99 0
	srli	a9, a3, 8
	extui	a8, a3, 16, 16
	s8i	a3, a2, 0
	extui	a3, a3, 24, 8
.LVL3:
	s8i	a9, a2, 1
	s8i	a8, a2, 2
	s8i	a3, a2, 3
	retw.n
.LFE7:
	.size	store32_le, .-store32_le
	.section	.text.crypto_core_salsa,"ax",@progbits
	.literal_position
	.literal .LC0, 1797285236
	.literal .LC1, 2036477234
	.literal .LC2, 857760878
	.literal .LC3, 1634760805
	.align	4
	.type	crypto_core_salsa, @function
crypto_core_salsa:
.LFB12:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/salsa/ref/core_salsa_ref.c"
	.loc 2 14 0
.LVL4:
	entry	sp, 160
.LCFI2:
.LVL5:
	.loc 2 14 0
	s32i	a6, sp, 104
	.loc 2 25 0
	beqz.n	a5, .L7
	.loc 2 26 0
	mov.n	a10, a5
	call8	load32_le
.LVL6:
	s32i.n	a10, sp, 24
.LVL7:
	.loc 2 27 0
	addi.n	a10, a5, 4
.LVL8:
	call8	load32_le
.LVL9:
	s32i.n	a10, sp, 28
.LVL10:
	.loc 2 28 0
	addi.n	a10, a5, 8
.LVL11:
	call8	load32_le
.LVL12:
	s32i.n	a10, sp, 32
.LVL13:
	.loc 2 29 0
	addi.n	a10, a5, 12
.LVL14:
	call8	load32_le
.LVL15:
	s32i.n	a10, sp, 36
.LVL16:
	j	.L4
.LVL17:
.L7:
	.loc 2 24 0
	l32r	a5, .LC0
.LVL18:
	.loc 2 23 0
	l32r	a6, .LC1
.LVL19:
	.loc 2 22 0
	l32r	a8, .LC2
	.loc 2 21 0
	l32r	a9, .LC3
	.loc 2 24 0
	s32i.n	a5, sp, 36
	.loc 2 23 0
	s32i.n	a6, sp, 32
	.loc 2 22 0
	s32i.n	a8, sp, 28
	.loc 2 21 0
	s32i.n	a9, sp, 24
.LVL20:
.L4:
	.loc 2 31 0
	mov.n	a10, a4
	call8	load32_le
.LVL21:
	s32i.n	a10, sp, 52
.LVL22:
	.loc 2 32 0
	addi.n	a10, a4, 4
.LVL23:
	call8	load32_le
.LVL24:
	s32i.n	a10, sp, 56
.LVL25:
	.loc 2 33 0
	addi.n	a10, a4, 8
.LVL26:
	call8	load32_le
.LVL27:
	s32i.n	a10, sp, 60
.LVL28:
	.loc 2 34 0
	addi.n	a10, a4, 12
.LVL29:
	call8	load32_le
.LVL30:
	s32i	a10, sp, 64
.LVL31:
	.loc 2 35 0
	addi	a10, a4, 16
.LVL32:
	call8	load32_le
.LVL33:
	s32i	a10, sp, 68
.LVL34:
	.loc 2 36 0
	addi	a10, a4, 20
.LVL35:
	call8	load32_le
.LVL36:
	s32i	a10, sp, 72
.LVL37:
	.loc 2 37 0
	addi	a10, a4, 24
.LVL38:
	call8	load32_le
.LVL39:
	s32i	a10, sp, 76
.LVL40:
	.loc 2 38 0
	addi	a10, a4, 28
.LVL41:
	call8	load32_le
.LVL42:
	s32i	a10, sp, 80
.LVL43:
	.loc 2 40 0
	mov.n	a10, a3
.LVL44:
	call8	load32_le
.LVL45:
	s32i	a10, sp, 84
.LVL46:
	.loc 2 41 0
	addi.n	a10, a3, 4
.LVL47:
	call8	load32_le
.LVL48:
	s32i	a10, sp, 88
.LVL49:
	.loc 2 42 0
	addi.n	a10, a3, 8
.LVL50:
	call8	load32_le
.LVL51:
	s32i	a10, sp, 92
.LVL52:
	.loc 2 43 0
	addi.n	a10, a3, 12
.LVL53:
	call8	load32_le
.LVL54:
	.loc 2 41 0
	l32i	a3, sp, 88
.LVL55:
	.loc 2 45 0
	l32i.n	a12, sp, 36
	.loc 2 40 0
	l32i	a6, sp, 84
	.loc 2 33 0
	l32i.n	a9, sp, 60
	.loc 2 41 0
	s32i.n	a3, sp, 12
	.loc 2 32 0
	l32i.n	a3, sp, 56
	.loc 2 45 0
	s32i.n	a12, sp, 0
	.loc 2 40 0
	s32i.n	a6, sp, 4
	.loc 2 33 0
	s32i.n	a9, sp, 16
	.loc 2 32 0
	s32i.n	a3, sp, 8
	.loc 2 43 0
	s32i	a10, sp, 96
.LVL56:
	.loc 2 38 0
	l32i	a15, sp, 80
	.loc 2 37 0
	l32i	a4, sp, 76
.LVL57:
	.loc 2 36 0
	l32i	a8, sp, 72
	.loc 2 35 0
	l32i	a12, sp, 68
	.loc 2 45 0
	l32i.n	a13, sp, 32
	.loc 2 43 0
	mov.n	a14, a10
	.loc 2 42 0
	l32i	a5, sp, 92
	.loc 2 45 0
	l32i.n	a6, sp, 28
	.loc 2 34 0
	l32i	a7, sp, 64
	.loc 2 31 0
	l32i.n	a3, sp, 52
	.loc 2 45 0
	l32i.n	a11, sp, 24
	movi.n	a9, 0
	j	.L8
.LVL58:
.L6:
	.loc 2 46 0 discriminator 3
	add.n	a9, a11, a8
.LVL59:
	ssai	25
	src	a9, a9, a9
.LVL60:
	xor	a9, a9, a7
.LVL61:
	.loc 2 47 0 discriminator 3
	add.n	a7, a11, a9
.LVL62:
	ssai	23
	src	a7, a7, a7
.LVL63:
	xor	a5, a7, a5
.LVL64:
	s32i.n	a5, sp, 44
.LVL65:
	.loc 2 48 0 discriminator 3
	add.n	a5, a9, a5
.LVL66:
	.loc 2 49 0 discriminator 3
	l32i.n	a10, sp, 44
.LVL67:
	.loc 2 48 0 discriminator 3
	ssai	19
	src	a5, a5, a5
.LVL68:
	xor	a5, a5, a8
	.loc 2 50 0 discriminator 3
	add.n	a8, a3, a6
.LVL69:
	.loc 2 48 0 discriminator 3
	s32i	a5, sp, 100
.LVL70:
	.loc 2 50 0 discriminator 3
	ssai	25
	src	a8, a8, a8
	.loc 2 49 0 discriminator 3
	add.n	a5, a10, a5
.LVL71:
	.loc 2 50 0 discriminator 3
	xor	a8, a8, a14
	.loc 2 49 0 discriminator 3
	ssai	14
	src	a5, a5, a5
.LVL72:
	xor	a11, a5, a11
.LVL73:
	.loc 2 51 0 discriminator 3
	add.n	a5, a6, a8
.LVL74:
	ssai	23
	src	a5, a5, a5
.LVL75:
	xor	a5, a5, a4
	.loc 2 52 0 discriminator 3
	add.n	a4, a8, a5
.LVL76:
	ssai	19
	src	a4, a4, a4
	xor	a3, a4, a3
.LVL77:
	.loc 2 53 0 discriminator 3
	add.n	a14, a5, a3
	.loc 2 51 0 discriminator 3
	s32i.n	a5, sp, 48
.LVL78:
	.loc 2 54 0 discriminator 3
	l32i.n	a5, sp, 4
.LVL79:
	.loc 2 53 0 discriminator 3
	ssai	14
	src	a14, a14, a14
.LVL80:
	.loc 2 54 0 discriminator 3
	add.n	a4, a5, a13
	ssai	25
	src	a4, a4, a4
	xor	a4, a4, a15
	.loc 2 53 0 discriminator 3
	xor	a14, a14, a6
.LVL81:
	.loc 2 54 0 discriminator 3
	s32i.n	a4, sp, 20
.LVL82:
	.loc 2 55 0 discriminator 3
	l32i.n	a6, sp, 8
.LVL83:
	add.n	a4, a13, a4
.LVL84:
	.loc 2 56 0 discriminator 3
	l32i.n	a10, sp, 20
	.loc 2 55 0 discriminator 3
	ssai	23
	src	a4, a4, a4
.LVL85:
	xor	a4, a4, a6
.LVL86:
	.loc 2 56 0 discriminator 3
	add.n	a6, a10, a4
.LVL87:
	ssai	19
	src	a6, a6, a6
.LVL88:
	xor	a6, a6, a5
.LVL89:
	.loc 2 57 0 discriminator 3
	add.n	a5, a4, a6
.LVL90:
	ssai	14
	src	a5, a5, a5
.LVL91:
	xor	a13, a5, a13
.LVL92:
	.loc 2 58 0 discriminator 3
	l32i.n	a5, sp, 0
	add.n	a10, a12, a5
.LVL93:
	l32i.n	a5, sp, 16
	ssai	25
	src	a10, a10, a10
.LVL94:
	xor	a10, a10, a5
.LVL95:
	.loc 2 59 0 discriminator 3
	l32i.n	a5, sp, 0
	add.n	a15, a5, a10
.LVL96:
	l32i.n	a5, sp, 12
	ssai	23
	src	a15, a15, a15
.LVL97:
	xor	a15, a15, a5
.LVL98:
	.loc 2 60 0 discriminator 3
	add.n	a5, a10, a15
.LVL99:
	ssai	19
	src	a5, a5, a5
.LVL100:
	xor	a5, a5, a12
.LVL101:
	.loc 2 61 0 discriminator 3
	add.n	a12, a15, a5
.LVL102:
	ssai	14
	src	a7, a12, a12
	l32i.n	a12, sp, 0
.LVL103:
	xor	a12, a7, a12
	.loc 2 62 0 discriminator 3
	add.n	a7, a11, a10
	ssai	25
	src	a7, a7, a7
	xor	a3, a7, a3
.LVL104:
	.loc 2 63 0 discriminator 3
	add.n	a7, a11, a3
	ssai	23
	src	a7, a7, a7
	xor	a4, a7, a4
.LVL105:
	s32i.n	a4, sp, 8
	.loc 2 64 0 discriminator 3
	add.n	a4, a3, a4
	.loc 2 61 0 discriminator 3
	s32i.n	a12, sp, 0
.LVL106:
	.loc 2 64 0 discriminator 3
	ssai	19
	src	a4, a4, a4
.LVL107:
	.loc 2 65 0 discriminator 3
	l32i.n	a12, sp, 8
.LVL108:
	.loc 2 64 0 discriminator 3
	xor	a4, a4, a10
	s32i.n	a4, sp, 16
.LVL109:
	.loc 2 65 0 discriminator 3
	add.n	a4, a12, a4
.LVL110:
	ssai	14
	src	a4, a4, a4
.LVL111:
	xor	a11, a4, a11
.LVL112:
	.loc 2 66 0 discriminator 3
	add.n	a4, a9, a14
.LVL113:
	ssai	25
	src	a4, a4, a4
.LVL114:
	xor	a4, a4, a6
	s32i.n	a4, sp, 4
.LVL115:
	.loc 2 67 0 discriminator 3
	add.n	a4, a14, a4
.LVL116:
	.loc 2 68 0 discriminator 3
	l32i.n	a6, sp, 4
	.loc 2 67 0 discriminator 3
	ssai	23
	src	a4, a4, a4
.LVL117:
	xor	a4, a4, a15
	.loc 2 68 0 discriminator 3
	add.n	a7, a6, a4
	ssai	19
	src	a7, a7, a7
	xor	a7, a7, a9
	.loc 2 69 0 discriminator 3
	add.n	a6, a4, a7
	.loc 2 67 0 discriminator 3
	s32i.n	a4, sp, 12
.LVL118:
	.loc 2 70 0 discriminator 3
	add.n	a4, a8, a13
.LVL119:
	ssai	25
	src	a4, a4, a4
	xor	a12, a4, a5
	.loc 2 71 0 discriminator 3
	add.n	a5, a13, a12
.LVL120:
	l32i.n	a9, sp, 44
.LVL121:
	ssai	23
	src	a5, a5, a5
	xor	a5, a5, a9
	.loc 2 69 0 discriminator 3
	ssai	14
	src	a6, a6, a6
.LVL122:
	xor	a6, a6, a14
.LVL123:
	.loc 2 72 0 discriminator 3
	add.n	a14, a12, a5
.LVL124:
	ssai	19
	src	a14, a14, a14
.LVL125:
	xor	a14, a14, a8
.LVL126:
	.loc 2 73 0 discriminator 3
	add.n	a4, a5, a14
.LVL127:
	ssai	14
	src	a4, a4, a4
.LVL128:
	.loc 2 74 0 discriminator 3
	l32i.n	a10, sp, 20
.LVL129:
	.loc 2 73 0 discriminator 3
	xor	a13, a4, a13
.LVL130:
	.loc 2 74 0 discriminator 3
	l32i.n	a4, sp, 0
	l32i	a9, sp, 100
	add.n	a8, a10, a4
.LVL131:
	ssai	25
	src	a8, a8, a8
.LVL132:
	xor	a8, a8, a9
.LVL133:
	.loc 2 75 0 discriminator 3
	l32i.n	a10, sp, 48
	add.n	a4, a4, a8
.LVL134:
	ssai	23
	src	a4, a4, a4
.LVL135:
	xor	a4, a4, a10
.LVL136:
	.loc 2 76 0 discriminator 3
	add.n	a9, a8, a4
.LVL137:
	l32i.n	a10, sp, 20
	ssai	19
	src	a9, a9, a9
.LVL138:
	xor	a15, a9, a10
.LVL139:
	.loc 2 77 0 discriminator 3
	add.n	a9, a4, a15
.LVL140:
	l32i.n	a10, sp, 0
	ssai	14
	src	a9, a9, a9
.LVL141:
	xor	a9, a9, a10
	s32i.n	a9, sp, 0
.LVL142:
	.loc 2 45 0 discriminator 3
	l32i.n	a9, sp, 40
.LVL143:
	addi.n	a9, a9, 2
.LVL144:
.L8:
	s32i.n	a9, sp, 40
.LVL145:
	l32i.n	a10, sp, 40
	l32i	a9, sp, 104
.LVL146:
	blt	a10, a9, .L6
	.loc 2 79 0
	l32i.n	a9, sp, 24
	mov.n	a10, a2
.LVL147:
	add.n	a11, a9, a11
.LVL148:
	s32i	a15, sp, 124
	s32i	a8, sp, 120
	s32i	a12, sp, 116
	s32i	a13, sp, 112
	s32i	a14, sp, 108
	call8	store32_le
.LVL149:
	.loc 2 80 0
	l32i.n	a9, sp, 52
	addi.n	a10, a2, 4
	add.n	a11, a3, a9
	call8	store32_le
.LVL150:
	.loc 2 81 0
	l32i.n	a9, sp, 56
	l32i.n	a3, sp, 8
.LVL151:
	addi.n	a10, a2, 8
	add.n	a11, a3, a9
	call8	store32_le
.LVL152:
	.loc 2 82 0
	l32i.n	a9, sp, 60
	l32i.n	a3, sp, 16
	addi.n	a10, a2, 12
	add.n	a11, a3, a9
	call8	store32_le
.LVL153:
	.loc 2 83 0
	l32i	a3, sp, 64
	addi	a10, a2, 16
	add.n	a11, a7, a3
	call8	store32_le
.LVL154:
	.loc 2 84 0
	l32i.n	a9, sp, 28
	addi	a10, a2, 20
	add.n	a11, a9, a6
	call8	store32_le
.LVL155:
	.loc 2 85 0
	l32i.n	a3, sp, 4
	l32i	a6, sp, 84
.LVL156:
	addi	a10, a2, 24
	add.n	a11, a3, a6
	call8	store32_le
.LVL157:
	.loc 2 86 0
	l32i.n	a9, sp, 12
	l32i	a3, sp, 88
	addi	a10, a2, 28
	add.n	a11, a9, a3
	call8	store32_le
.LVL158:
	.loc 2 87 0
	l32i	a6, sp, 92
	addi	a10, a2, 32
	add.n	a11, a5, a6
	call8	store32_le
.LVL159:
	.loc 2 88 0
	l32i	a14, sp, 108
	l32i	a9, sp, 96
	addi	a10, a2, 36
	add.n	a11, a14, a9
	call8	store32_le
.LVL160:
	.loc 2 89 0
	l32i	a13, sp, 112
	l32i.n	a3, sp, 32
	addi	a10, a2, 40
	add.n	a11, a3, a13
	call8	store32_le
.LVL161:
	.loc 2 90 0
	l32i	a12, sp, 116
	l32i	a5, sp, 68
.LVL162:
	addi	a10, a2, 44
	add.n	a11, a12, a5
	call8	store32_le
.LVL163:
	.loc 2 91 0
	l32i	a8, sp, 120
	l32i	a6, sp, 72
	addi	a10, a2, 48
	add.n	a11, a8, a6
	call8	store32_le
.LVL164:
	.loc 2 92 0
	l32i	a8, sp, 76
	addi	a10, a2, 52
	add.n	a11, a4, a8
	call8	store32_le
.LVL165:
	.loc 2 93 0
	l32i	a15, sp, 124
	l32i	a9, sp, 80
	addi	a10, a2, 56
	add.n	a11, a15, a9
	call8	store32_le
.LVL166:
	.loc 2 94 0
	l32i.n	a12, sp, 36
	l32i.n	a3, sp, 0
	addi	a10, a2, 60
	add.n	a11, a12, a3
	call8	store32_le
.LVL167:
	retw.n
.LFE12:
	.size	crypto_core_salsa, .-crypto_core_salsa
	.section	.text.crypto_core_salsa20,"ax",@progbits
	.align	4
	.global	crypto_core_salsa20
	.type	crypto_core_salsa20, @function
crypto_core_salsa20:
.LFB13:
	.loc 2 100 0
.LVL168:
	entry	sp, 32
.LCFI3:
	.loc 2 101 0
	mov.n	a10, a2
	movi.n	a14, 0x14
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	crypto_core_salsa
.LVL169:
	.loc 2 103 0
	movi.n	a2, 0
.LVL170:
	retw.n
.LFE13:
	.size	crypto_core_salsa20, .-crypto_core_salsa20
	.section	.text.crypto_core_salsa20_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa20_outputbytes
	.type	crypto_core_salsa20_outputbytes, @function
crypto_core_salsa20_outputbytes:
.LFB45:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0x40
	retw.n
.LFE45:
	.size	crypto_core_salsa20_outputbytes, .-crypto_core_salsa20_outputbytes
	.section	.text.crypto_core_salsa20_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa20_inputbytes
	.type	crypto_core_salsa20_inputbytes, @function
crypto_core_salsa20_inputbytes:
.LFB37:
	entry	sp, 32
.LCFI5:
	movi.n	a2, 0x10
	retw.n
.LFE37:
	.size	crypto_core_salsa20_inputbytes, .-crypto_core_salsa20_inputbytes
	.section	.text.crypto_core_salsa20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa20_keybytes
	.type	crypto_core_salsa20_keybytes, @function
crypto_core_salsa20_keybytes:
.LFB41:
	entry	sp, 32
.LCFI6:
	movi.n	a2, 0x20
	retw.n
.LFE41:
	.size	crypto_core_salsa20_keybytes, .-crypto_core_salsa20_keybytes
	.section	.text.crypto_core_salsa20_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa20_constbytes
	.type	crypto_core_salsa20_constbytes, @function
crypto_core_salsa20_constbytes:
.LFB35:
	entry	sp, 32
.LCFI7:
	movi.n	a2, 0x10
	retw.n
.LFE35:
	.size	crypto_core_salsa20_constbytes, .-crypto_core_salsa20_constbytes
	.section	.text.crypto_core_salsa2012,"ax",@progbits
	.align	4
	.global	crypto_core_salsa2012
	.type	crypto_core_salsa2012, @function
crypto_core_salsa2012:
.LFB18:
	.loc 2 134 0
.LVL171:
	.loc 2 134 0
	entry	sp, 32
.LCFI8:
	.loc 2 135 0
	mov.n	a10, a2
	movi.n	a14, 0xc
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	crypto_core_salsa
.LVL172:
	.loc 2 137 0
	movi.n	a2, 0
.LVL173:
	retw.n
.LFE18:
	.size	crypto_core_salsa2012, .-crypto_core_salsa2012
	.section	.text.crypto_core_salsa2012_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa2012_outputbytes
	.type	crypto_core_salsa2012_outputbytes, @function
crypto_core_salsa2012_outputbytes:
.LFB43:
	entry	sp, 32
.LCFI9:
	movi.n	a2, 0x40
	retw.n
.LFE43:
	.size	crypto_core_salsa2012_outputbytes, .-crypto_core_salsa2012_outputbytes
	.section	.text.crypto_core_salsa2012_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa2012_inputbytes
	.type	crypto_core_salsa2012_inputbytes, @function
crypto_core_salsa2012_inputbytes:
.LFB33:
	entry	sp, 32
.LCFI10:
	movi.n	a2, 0x10
	retw.n
.LFE33:
	.size	crypto_core_salsa2012_inputbytes, .-crypto_core_salsa2012_inputbytes
	.section	.text.crypto_core_salsa2012_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa2012_keybytes
	.type	crypto_core_salsa2012_keybytes, @function
crypto_core_salsa2012_keybytes:
.LFB39:
	entry	sp, 32
.LCFI11:
	movi.n	a2, 0x20
	retw.n
.LFE39:
	.size	crypto_core_salsa2012_keybytes, .-crypto_core_salsa2012_keybytes
	.section	.text.crypto_core_salsa2012_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa2012_constbytes
	.type	crypto_core_salsa2012_constbytes, @function
crypto_core_salsa2012_constbytes:
.LFB31:
	entry	sp, 32
.LCFI12:
	movi.n	a2, 0x10
	retw.n
.LFE31:
	.size	crypto_core_salsa2012_constbytes, .-crypto_core_salsa2012_constbytes
	.section	.text.crypto_core_salsa208,"ax",@progbits
	.align	4
	.global	crypto_core_salsa208
	.type	crypto_core_salsa208, @function
crypto_core_salsa208:
.LFB23:
	.loc 2 166 0
.LVL174:
	.loc 2 166 0
	entry	sp, 32
.LCFI13:
	.loc 2 167 0
	mov.n	a10, a2
	movi.n	a14, 8
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	crypto_core_salsa
.LVL175:
	.loc 2 169 0
	movi.n	a2, 0
.LVL176:
	retw.n
.LFE23:
	.size	crypto_core_salsa208, .-crypto_core_salsa208
	.section	.text.crypto_core_salsa208_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa208_outputbytes
	.type	crypto_core_salsa208_outputbytes, @function
crypto_core_salsa208_outputbytes:
.LFB24:
	.loc 2 173 0
	entry	sp, 32
.LCFI14:
	.loc 2 175 0
	movi.n	a2, 0x40
	retw.n
.LFE24:
	.size	crypto_core_salsa208_outputbytes, .-crypto_core_salsa208_outputbytes
	.section	.text.crypto_core_salsa208_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa208_inputbytes
	.type	crypto_core_salsa208_inputbytes, @function
crypto_core_salsa208_inputbytes:
.LFB29:
	entry	sp, 32
.LCFI15:
	movi.n	a2, 0x10
	retw.n
.LFE29:
	.size	crypto_core_salsa208_inputbytes, .-crypto_core_salsa208_inputbytes
	.section	.text.crypto_core_salsa208_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa208_keybytes
	.type	crypto_core_salsa208_keybytes, @function
crypto_core_salsa208_keybytes:
.LFB26:
	.loc 2 185 0
	.loc 2 185 0
	entry	sp, 32
.LCFI16:
	.loc 2 187 0
	movi.n	a2, 0x20
	retw.n
.LFE26:
	.size	crypto_core_salsa208_keybytes, .-crypto_core_salsa208_keybytes
	.section	.text.crypto_core_salsa208_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_salsa208_constbytes
	.type	crypto_core_salsa208_constbytes, @function
crypto_core_salsa208_constbytes:
.LFB27:
	.loc 2 191 0
	entry	sp, 32
.LCFI17:
	.loc 2 193 0
	movi.n	a2, 0x10
	retw.n
.LFE27:
	.size	crypto_core_salsa208_constbytes, .-crypto_core_salsa208_constbytes
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI3-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI4-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI5-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI6-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI7-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI9-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI11-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI12-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI13-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI14-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI15-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI16-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI17-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x81b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x33
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc
	.4byte	0x7a
	.byte	0x3
	.4byte	0xd5
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0xc
	.4byte	0xd5
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.byte	0xc
	.4byte	0xda
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4f
	.4byte	0x7a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114
	.uleb128 0xa
	.string	"src"
	.byte	0x1
	.byte	0x4f
	.4byte	0x114
	.4byte	.LLST0
	.uleb128 0xb
	.string	"w"
	.byte	0x1
	.byte	0x52
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x8
	.4byte	0x6f
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x60
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x60
	.4byte	0x14f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"w"
	.byte	0x1
	.byte	0x60
	.4byte	0x7a
	.4byte	.LLST1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x2
	.byte	0xb
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66c
	.uleb128 0xd
	.string	"out"
	.byte	0x2
	.byte	0xb
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"in"
	.byte	0x2
	.byte	0xb
	.4byte	0x66c
	.4byte	.LLST2
	.uleb128 0xa
	.string	"k"
	.byte	0x2
	.byte	0xc
	.4byte	0x66c
	.4byte	.LLST3
	.uleb128 0xa
	.string	"c"
	.byte	0x2
	.byte	0xc
	.4byte	0x66c
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x2
	.byte	0xd
	.4byte	0xda
	.4byte	.LLST5
	.uleb128 0xf
	.string	"x0"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0xf
	.string	"x1"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xf
	.string	"x2"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST8
	.uleb128 0xf
	.string	"x3"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0xf
	.string	"x4"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0xf
	.string	"x5"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0xf
	.string	"x6"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0xf
	.string	"x7"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST13
	.uleb128 0xf
	.string	"x8"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0xf
	.string	"x9"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0xf
	.string	"x10"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST16
	.uleb128 0xf
	.string	"x11"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0xf
	.string	"x12"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0xf
	.string	"x13"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0xf
	.string	"x14"
	.byte	0x2
	.byte	0xf
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0xf
	.string	"x15"
	.byte	0x2
	.byte	0x10
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0xf
	.string	"j0"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST22
	.uleb128 0xf
	.string	"j1"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST23
	.uleb128 0xf
	.string	"j2"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST24
	.uleb128 0xf
	.string	"j3"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST25
	.uleb128 0xf
	.string	"j4"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST26
	.uleb128 0xf
	.string	"j5"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST27
	.uleb128 0xf
	.string	"j6"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST28
	.uleb128 0xf
	.string	"j7"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST29
	.uleb128 0xf
	.string	"j8"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST30
	.uleb128 0xf
	.string	"j9"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST31
	.uleb128 0xf
	.string	"j10"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST32
	.uleb128 0xf
	.string	"j11"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST33
	.uleb128 0xf
	.string	"j12"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST34
	.uleb128 0xf
	.string	"j13"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST35
	.uleb128 0xf
	.string	"j14"
	.byte	0x2
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST36
	.uleb128 0xf
	.string	"j15"
	.byte	0x2
	.byte	0x12
	.4byte	0x7a
	.4byte	.LLST37
	.uleb128 0xf
	.string	"i"
	.byte	0x2
	.byte	0x13
	.4byte	0x48
	.4byte	.LLST38
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0xdf
	.4byte	0x39b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0xdf
	.4byte	0x3af
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0xdf
	.4byte	0x3c3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0xdf
	.4byte	0x3d7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0xdf
	.4byte	0x3eb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL24
	.4byte	0xdf
	.4byte	0x3ff
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL27
	.4byte	0xdf
	.4byte	0x413
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL30
	.4byte	0xdf
	.4byte	0x427
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	0xdf
	.4byte	0x43b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.4byte	.LVL36
	.4byte	0xdf
	.4byte	0x44f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL39
	.4byte	0xdf
	.4byte	0x463
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x10
	.4byte	.LVL42
	.4byte	0xdf
	.4byte	0x477
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0x10
	.4byte	.LVL45
	.4byte	0xdf
	.4byte	0x48b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL48
	.4byte	0xdf
	.4byte	0x49f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.4byte	.LVL51
	.4byte	0xdf
	.4byte	0x4b3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL54
	.4byte	0xdf
	.4byte	0x4c7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x10
	.4byte	.LVL149
	.4byte	0x11f
	.4byte	0x4db
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL150
	.4byte	0x11f
	.4byte	0x4fa
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL152
	.4byte	0x11f
	.4byte	0x519
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL153
	.4byte	0x11f
	.4byte	0x538
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL154
	.4byte	0x11f
	.4byte	0x555
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL155
	.4byte	0x11f
	.4byte	0x574
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL157
	.4byte	0x11f
	.4byte	0x591
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL158
	.4byte	0x11f
	.4byte	0x5b0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL159
	.4byte	0x11f
	.4byte	0x5cd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL160
	.4byte	0x11f
	.4byte	0x5e1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.byte	0
	.uleb128 0x10
	.4byte	.LVL161
	.4byte	0x11f
	.4byte	0x5f5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL163
	.4byte	0x11f
	.4byte	0x609
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 44
	.byte	0
	.uleb128 0x10
	.4byte	.LVL164
	.4byte	0x11f
	.4byte	0x61d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL165
	.4byte	0x11f
	.4byte	0x63c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 52
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL166
	.4byte	0x11f
	.4byte	0x650
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 56
	.byte	0
	.uleb128 0x12
	.4byte	.LVL167
	.4byte	0x11f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 60
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -124
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x672
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x2
	.byte	0x62
	.4byte	0x48
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e9
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x62
	.4byte	0xa5
	.4byte	.LLST39
	.uleb128 0xd
	.string	"in"
	.byte	0x2
	.byte	0x62
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"k"
	.byte	0x2
	.byte	0x63
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"c"
	.byte	0x2
	.byte	0x63
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LVL169
	.4byte	0x155
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x2
	.byte	0x84
	.4byte	0x48
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75b
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x84
	.4byte	0xa5
	.4byte	.LLST40
	.uleb128 0xd
	.string	"in"
	.byte	0x2
	.byte	0x84
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"k"
	.byte	0x2
	.byte	0x85
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"c"
	.byte	0x2
	.byte	0x85
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LVL172
	.4byte	0x155
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x2
	.byte	0xa4
	.4byte	0x48
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cd
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0xa4
	.4byte	0xa5
	.4byte	.LLST41
	.uleb128 0xd
	.string	"in"
	.byte	0x2
	.byte	0xa4
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"k"
	.byte	0x2
	.byte	0xa5
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"c"
	.byte	0x2
	.byte	0xa5
	.4byte	0x66c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LVL175
	.4byte	0x155
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x2
	.byte	0xac
	.4byte	0x85
	.byte	0x1
	.uleb128 0x15
	.4byte	0x7cd
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x2
	.byte	0xb8
	.4byte	0x85
	.byte	0x1
	.uleb128 0x15
	.4byte	0x7e8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x2
	.byte	0xbe
	.4byte	0x85
	.byte	0x1
	.uleb128 0x15
	.4byte	0x803
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x6
	.byte	0xc
	.4byte	0x61707865
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x61707865
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL58
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL58
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL58
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL86
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL58
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL95
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL61
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3320646e
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3320646e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL58
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL123
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL145
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL58
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL89
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL58
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL98
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	.LVL123
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL73
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL126
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xc
	.4byte	0x79622d32
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x79622d32
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL58
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL145
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL58
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL123
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL145
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL58
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL133
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL58
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL136
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL58
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL145
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xc
	.4byte	0x6b206574
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x6b206574
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	.LVL58
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL145
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x6
	.byte	0xc
	.4byte	0x61707865
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x61707865
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x6
	.byte	0xc
	.4byte	0x3320646e
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3320646e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xc
	.4byte	0x79622d32
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x79622d32
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x6
	.byte	0xc
	.4byte	0x6b206574
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x6b206574
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -124
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"size_t"
.LASF4:
	.string	"__uint8_t"
.LASF8:
	.string	"long long unsigned int"
.LASF16:
	.string	"store32_le"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"rotl32"
.LASF12:
	.string	"long int"
.LASF18:
	.string	"rounds"
.LASF5:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF14:
	.string	"long unsigned int"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"crypto_core_salsa208"
.LASF19:
	.string	"crypto_core_salsa20"
.LASF13:
	.string	"sizetype"
.LASF26:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/salsa/ref/core_salsa_ref.c"
.LASF24:
	.string	"crypto_core_salsa208_constbytes"
.LASF23:
	.string	"crypto_core_salsa208_keybytes"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"crypto_core_salsa208_outputbytes"
.LASF10:
	.string	"uint32_t"
.LASF28:
	.string	"load32_le"
.LASF20:
	.string	"crypto_core_salsa2012"
.LASF15:
	.string	"char"
.LASF9:
	.string	"uint8_t"
.LASF17:
	.string	"crypto_core_salsa"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
