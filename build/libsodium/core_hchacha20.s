	.file	"core_hchacha20.c"
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
	.section	.text.crypto_core_hchacha20,"ax",@progbits
	.literal_position
	.literal .LC0, 1797285236
	.literal .LC1, 2036477234
	.literal .LC2, 857760878
	.literal .LC3, 1634760805
	.align	4
	.global	crypto_core_hchacha20
	.type	crypto_core_hchacha20, @function
crypto_core_hchacha20:
.LFB12:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hchacha20/core_hchacha20.c"
	.loc 2 19 0
.LVL4:
	entry	sp, 96
.LCFI2:
	.loc 2 24 0
	beqz.n	a5, .L7
	.loc 2 30 0
	mov.n	a10, a5
	call8	load32_le
.LVL5:
	mov.n	a11, a10
.LVL6:
	.loc 2 31 0
	addi.n	a10, a5, 4
.LVL7:
	s32i.n	a11, sp, 44
	call8	load32_le
.LVL8:
	mov.n	a12, a10
.LVL9:
	.loc 2 32 0
	addi.n	a10, a5, 8
.LVL10:
	s32i.n	a12, sp, 48
	call8	load32_le
.LVL11:
	mov.n	a9, a10
.LVL12:
	.loc 2 33 0
	addi.n	a10, a5, 12
	s32i.n	a9, sp, 52
	call8	load32_le
.LVL13:
	mov.n	a8, a10
.LVL14:
	l32i.n	a9, sp, 52
	l32i.n	a11, sp, 44
	l32i.n	a12, sp, 48
	j	.L4
.LVL15:
.L7:
	.loc 2 28 0
	l32r	a8, .LC0
	.loc 2 27 0
	l32r	a9, .LC1
	.loc 2 26 0
	l32r	a12, .LC2
	.loc 2 25 0
	l32r	a11, .LC3
.L4:
.LVL16:
	.loc 2 35 0
	mov.n	a10, a4
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 52
	s32i.n	a11, sp, 44
	s32i.n	a12, sp, 48
	call8	load32_le
.LVL17:
	mov.n	a7, a10
.LVL18:
	.loc 2 36 0
	addi.n	a10, a4, 4
	call8	load32_le
.LVL19:
	s32i.n	a10, sp, 4
.LVL20:
	.loc 2 37 0
	addi.n	a10, a4, 8
.LVL21:
	call8	load32_le
.LVL22:
	s32i.n	a10, sp, 8
.LVL23:
	.loc 2 38 0
	addi.n	a10, a4, 12
.LVL24:
	call8	load32_le
.LVL25:
	mov.n	a15, a10
.LVL26:
	.loc 2 39 0
	addi	a10, a4, 16
.LVL27:
	s32i.n	a15, sp, 40
	call8	load32_le
.LVL28:
	mov.n	a13, a10
.LVL29:
	.loc 2 40 0
	addi	a10, a4, 20
.LVL30:
	s32i.n	a13, sp, 36
	call8	load32_le
.LVL31:
	mov.n	a14, a10
.LVL32:
	.loc 2 41 0
	addi	a10, a4, 24
.LVL33:
	s32i.n	a14, sp, 32
	call8	load32_le
.LVL34:
	s32i.n	a10, sp, 12
.LVL35:
	.loc 2 42 0
	addi	a10, a4, 28
.LVL36:
	call8	load32_le
.LVL37:
	s32i.n	a10, sp, 16
.LVL38:
	.loc 2 43 0
	mov.n	a10, a3
.LVL39:
	call8	load32_le
.LVL40:
	mov.n	a6, a10
.LVL41:
	.loc 2 44 0
	addi.n	a10, a3, 4
	call8	load32_le
.LVL42:
	mov.n	a5, a10
.LVL43:
	.loc 2 45 0
	addi.n	a10, a3, 8
	call8	load32_le
.LVL44:
	mov.n	a4, a10
.LVL45:
	.loc 2 46 0
	addi.n	a10, a3, 12
	call8	load32_le
.LVL46:
	mov.n	a3, a10
.LVL47:
	.loc 2 48 0
	movi.n	a10, 0xb
	s32i.n	a10, sp, 0
	l32i.n	a8, sp, 56
	l32i.n	a9, sp, 52
	l32i.n	a11, sp, 44
	l32i.n	a12, sp, 48
	l32i.n	a13, sp, 36
	l32i.n	a14, sp, 32
	l32i.n	a15, sp, 40
	j	.L5
.LVL48:
.L6:
	.loc 2 49 0 discriminator 3
	add.n	a11, a11, a7
.LVL49:
.LBB66:
.LBB67:
	.loc 1 14 0 discriminator 3
	xor	a6, a6, a11
.LVL50:
	ssai	16
	src	a6, a6, a6
.LVL51:
.LBE67:
.LBE66:
	.loc 2 49 0 discriminator 3
	add.n	a13, a13, a6
.LVL52:
.LBB68:
.LBB69:
	.loc 1 14 0 discriminator 3
	xor	a7, a7, a13
.LVL53:
	ssai	20
	src	a7, a7, a7
.LVL54:
.LBE69:
.LBE68:
	.loc 2 49 0 discriminator 3
	add.n	a11, a11, a7
.LVL55:
.LBB70:
.LBB71:
	.loc 1 14 0 discriminator 3
	xor	a6, a6, a11
.LVL56:
	ssai	24
	src	a6, a6, a6
.LVL57:
.LBE71:
.LBE70:
	.loc 2 49 0 discriminator 3
	add.n	a13, a13, a6
.LVL58:
.LBB73:
.LBB74:
	.loc 1 14 0 discriminator 3
	xor	a7, a7, a13
.LBE74:
.LBE73:
.LBB76:
.LBB72:
	s32i.n	a6, sp, 60
.LBE72:
.LBE76:
.LBB77:
.LBB75:
	ssai	25
	src	a6, a7, a7
	s32i.n	a6, sp, 24
.LBE75:
.LBE77:
	.loc 2 50 0 discriminator 3
	l32i.n	a6, sp, 4
	.loc 2 49 0 discriminator 3
	s32i.n	a13, sp, 20
.LVL59:
	.loc 2 50 0 discriminator 3
	add.n	a12, a12, a6
.LVL60:
.LBB78:
.LBB79:
	.loc 1 14 0 discriminator 3
	xor	a5, a5, a12
.LVL61:
	ssai	16
	src	a6, a5, a5
.LBE79:
.LBE78:
.LBB80:
.LBB81:
	l32i.n	a5, sp, 4
.LVL62:
.LBE81:
.LBE80:
	.loc 2 50 0 discriminator 3
	add.n	a14, a14, a6
.LVL63:
.LBB83:
.LBB82:
	.loc 1 14 0 discriminator 3
	xor	a7, a5, a14
.LVL64:
	ssai	20
	src	a7, a7, a7
.LVL65:
.LBE82:
.LBE83:
	.loc 2 50 0 discriminator 3
	add.n	a12, a12, a7
.LVL66:
.LBB84:
.LBB85:
	.loc 1 14 0 discriminator 3
	xor	a6, a6, a12
.LVL67:
	ssai	24
	src	a13, a6, a6
.LVL68:
.LBE85:
.LBE84:
	.loc 2 51 0 discriminator 3
	l32i.n	a6, sp, 8
.LVL69:
	.loc 2 50 0 discriminator 3
	add.n	a14, a14, a13
.LVL70:
	.loc 2 51 0 discriminator 3
	add.n	a9, a9, a6
.LVL71:
.LBB86:
.LBB87:
	.loc 1 14 0 discriminator 3
	xor	a5, a7, a14
.LBE87:
.LBE86:
	.loc 2 50 0 discriminator 3
	s32i.n	a14, sp, 28
.LVL72:
.LBB89:
.LBB90:
	.loc 1 14 0 discriminator 3
	xor	a4, a4, a9
.LVL73:
.LBE90:
.LBE89:
	.loc 2 51 0 discriminator 3
	l32i.n	a14, sp, 12
.LVL74:
.LBB92:
.LBB91:
	.loc 1 14 0 discriminator 3
	ssai	16
	src	a4, a4, a4
.LBE91:
.LBE92:
	.loc 2 51 0 discriminator 3
	add.n	a6, a14, a4
.LBB93:
.LBB94:
	.loc 1 14 0 discriminator 3
	l32i.n	a14, sp, 8
.LBE94:
.LBE93:
	.loc 2 52 0 discriminator 3
	add.n	a8, a8, a15
.LVL75:
.LBB96:
.LBB95:
	.loc 1 14 0 discriminator 3
	xor	a7, a14, a6
	ssai	20
	src	a7, a7, a7
.LBE95:
.LBE96:
	.loc 2 51 0 discriminator 3
	add.n	a9, a9, a7
.LBB97:
.LBB98:
	.loc 1 14 0 discriminator 3
	xor	a4, a4, a9
	ssai	24
	src	a14, a4, a4
.LBE98:
.LBE97:
	.loc 2 52 0 discriminator 3
	l32i.n	a10, sp, 16
.LVL76:
.LBB99:
.LBB100:
	.loc 1 14 0 discriminator 3
	xor	a3, a3, a8
.LVL77:
.LBE100:
.LBE99:
	.loc 2 51 0 discriminator 3
	add.n	a6, a6, a14
.LBB102:
.LBB101:
	.loc 1 14 0 discriminator 3
	ssai	16
	src	a3, a3, a3
.LBE101:
.LBE102:
.LBB103:
.LBB104:
	xor	a4, a7, a6
.LBE104:
.LBE103:
	.loc 2 52 0 discriminator 3
	add.n	a7, a10, a3
.LBB106:
.LBB107:
	.loc 1 14 0 discriminator 3
	xor	a15, a15, a7
.LVL78:
	ssai	20
	src	a15, a15, a15
.LBE107:
.LBE106:
	.loc 2 52 0 discriminator 3
	add.n	a8, a8, a15
.LBB108:
.LBB88:
	.loc 1 14 0 discriminator 3
	ssai	25
	src	a5, a5, a5
.LVL79:
.LBE88:
.LBE108:
.LBB109:
.LBB110:
	xor	a3, a3, a8
.LBE110:
.LBE109:
	.loc 2 53 0 discriminator 3
	add.n	a11, a11, a5
.LVL80:
.LBB112:
.LBB111:
	.loc 1 14 0 discriminator 3
	ssai	24
	src	a3, a3, a3
.LBE111:
.LBE112:
	.loc 2 52 0 discriminator 3
	add.n	a7, a7, a3
.LBB113:
.LBB114:
	.loc 1 14 0 discriminator 3
	xor	a3, a3, a11
	ssai	16
	src	a3, a3, a3
.LBE114:
.LBE113:
	.loc 2 53 0 discriminator 3
	add.n	a6, a6, a3
.LVL81:
.LBB115:
.LBB116:
	.loc 1 14 0 discriminator 3
	xor	a5, a5, a6
	ssai	20
	src	a5, a5, a5
.LBE116:
.LBE115:
	.loc 2 53 0 discriminator 3
	add.n	a11, a11, a5
.LBB117:
.LBB118:
	.loc 1 14 0 discriminator 3
	xor	a3, a3, a11
	ssai	24
	src	a3, a3, a3
.LBE118:
.LBE117:
	.loc 2 53 0 discriminator 3
	add.n	a6, a6, a3
.LBB119:
.LBB120:
	.loc 1 14 0 discriminator 3
	xor	a5, a5, a6
	ssai	25
	src	a5, a5, a5
.LBE120:
.LBE119:
.LBB122:
.LBB105:
	ssai	25
	src	a4, a4, a4
.LVL82:
.LBE105:
.LBE122:
.LBB123:
.LBB121:
	s32i.n	a5, sp, 4
.LBE121:
.LBE123:
.LBB124:
.LBB125:
	l32i.n	a5, sp, 60
.LBE125:
.LBE124:
	.loc 2 54 0 discriminator 3
	add.n	a12, a12, a4
.LVL83:
	.loc 2 53 0 discriminator 3
	s32i.n	a6, sp, 12
.LBB127:
.LBB126:
	.loc 1 14 0 discriminator 3
	xor	a6, a5, a12
	ssai	16
	src	a6, a6, a6
.LBE126:
.LBE127:
.LBB128:
.LBB129:
	xor	a15, a15, a7
.LVL84:
.LBE129:
.LBE128:
	.loc 2 54 0 discriminator 3
	add.n	a7, a7, a6
.LVL85:
.LBB131:
.LBB132:
	.loc 1 14 0 discriminator 3
	xor	a4, a4, a7
	ssai	20
	src	a4, a4, a4
.LBE132:
.LBE131:
	.loc 2 54 0 discriminator 3
	add.n	a12, a12, a4
.LBB133:
.LBB134:
	.loc 1 14 0 discriminator 3
	xor	a6, a6, a12
	ssai	24
	src	a6, a6, a6
.LBE134:
.LBE133:
	.loc 2 54 0 discriminator 3
	add.n	a5, a7, a6
.LBB135:
.LBB136:
	.loc 1 14 0 discriminator 3
	xor	a4, a4, a5
.LBE136:
.LBE135:
.LBB139:
.LBB130:
	ssai	25
	src	a15, a15, a15
.LVL86:
.LBE130:
.LBE139:
.LBB140:
.LBB137:
	ssai	25
	src	a4, a4, a4
.LBE137:
.LBE140:
	.loc 2 55 0 discriminator 3
	add.n	a9, a9, a15
.LVL87:
.LBB141:
.LBB138:
	.loc 1 14 0 discriminator 3
	s32i.n	a4, sp, 8
.LBE138:
.LBE141:
	.loc 2 56 0 discriminator 3
	l32i.n	a4, sp, 24
	.loc 2 55 0 discriminator 3
	l32i.n	a10, sp, 20
	.loc 2 54 0 discriminator 3
	s32i.n	a5, sp, 16
.LVL88:
.LBB142:
.LBB143:
	.loc 1 14 0 discriminator 3
	xor	a5, a13, a9
.LVL89:
	ssai	16
	src	a5, a5, a5
.LVL90:
.LBE143:
.LBE142:
	.loc 2 56 0 discriminator 3
	add.n	a8, a4, a8
.LVL91:
	.loc 2 55 0 discriminator 3
	add.n	a13, a10, a5
.LVL92:
.LBB144:
.LBB145:
	.loc 1 14 0 discriminator 3
	xor	a4, a14, a8
.LBE145:
.LBE144:
	.loc 2 56 0 discriminator 3
	l32i.n	a10, sp, 28
.LBB147:
.LBB146:
	.loc 1 14 0 discriminator 3
	ssai	16
	src	a4, a4, a4
.LBE146:
.LBE147:
	.loc 2 56 0 discriminator 3
	add.n	a14, a10, a4
.LBB148:
.LBB149:
	.loc 1 14 0 discriminator 3
	l32i.n	a10, sp, 24
.LBE149:
.LBE148:
.LBB152:
.LBB153:
	xor	a15, a15, a13
.LVL93:
.LBE153:
.LBE152:
.LBB155:
.LBB150:
	xor	a7, a10, a14
.LBE150:
.LBE155:
.LBB156:
.LBB154:
	ssai	20
	src	a15, a15, a15
.LVL94:
.LBE154:
.LBE156:
.LBB157:
.LBB151:
	ssai	20
	src	a7, a7, a7
.LBE151:
.LBE157:
	.loc 2 55 0 discriminator 3
	add.n	a9, a9, a15
.LVL95:
	.loc 2 56 0 discriminator 3
	add.n	a8, a8, a7
.LBB158:
.LBB159:
	.loc 1 14 0 discriminator 3
	xor	a5, a5, a9
.LVL96:
.LBE159:
.LBE158:
.LBB161:
.LBB162:
	xor	a4, a4, a8
.LBE162:
.LBE161:
.LBB164:
.LBB160:
	ssai	24
	src	a5, a5, a5
.LVL97:
.LBE160:
.LBE164:
.LBB165:
.LBB163:
	ssai	24
	src	a4, a4, a4
.LBE163:
.LBE165:
	.loc 2 55 0 discriminator 3
	add.n	a13, a13, a5
.LVL98:
	.loc 2 56 0 discriminator 3
	add.n	a14, a14, a4
.LBB166:
.LBB167:
	.loc 1 14 0 discriminator 3
	xor	a15, a15, a13
.LVL99:
.LBE167:
.LBE166:
.LBB169:
.LBB170:
	xor	a7, a7, a14
.LBE170:
.LBE169:
.LBB172:
.LBB168:
	ssai	25
	src	a15, a15, a15
.LVL100:
.LBE168:
.LBE172:
.LBB173:
.LBB171:
	ssai	25
	src	a7, a7, a7
.LVL101:
.L5:
	l32i.n	a10, sp, 0
	addi.n	a10, a10, -1
	s32i.n	a10, sp, 0
.LVL102:
.LBE171:
.LBE173:
	.loc 2 48 0 discriminator 1
	bnez.n	a10, .L6
	.loc 2 59 0
	mov.n	a10, a2
.LVL103:
	s32i.n	a8, sp, 56
	s32i.n	a9, sp, 52
	s32i.n	a12, sp, 48
	call8	store32_le
.LVL104:
	.loc 2 60 0
	l32i.n	a12, sp, 48
	addi.n	a10, a2, 4
	mov.n	a11, a12
	call8	store32_le
.LVL105:
	.loc 2 61 0
	l32i.n	a9, sp, 52
	addi.n	a10, a2, 8
	mov.n	a11, a9
	call8	store32_le
.LVL106:
	.loc 2 62 0
	l32i.n	a8, sp, 56
	addi.n	a10, a2, 12
	mov.n	a11, a8
	call8	store32_le
.LVL107:
	.loc 2 63 0
	mov.n	a11, a6
	addi	a10, a2, 16
	call8	store32_le
.LVL108:
	.loc 2 64 0
	mov.n	a11, a5
	addi	a10, a2, 20
	call8	store32_le
.LVL109:
	.loc 2 65 0
	mov.n	a11, a4
	addi	a10, a2, 24
	call8	store32_le
.LVL110:
	.loc 2 66 0
	addi	a10, a2, 28
	mov.n	a11, a3
	call8	store32_le
.LVL111:
	.loc 2 69 0
	l32i.n	a2, sp, 0
.LVL112:
	retw.n
.LFE12:
	.size	crypto_core_hchacha20, .-crypto_core_hchacha20
	.section	.text.crypto_core_hchacha20_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_outputbytes
	.type	crypto_core_hchacha20_outputbytes, @function
crypto_core_hchacha20_outputbytes:
.LFB20:
	entry	sp, 32
.LCFI3:
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	crypto_core_hchacha20_outputbytes, .-crypto_core_hchacha20_outputbytes
	.section	.text.crypto_core_hchacha20_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_inputbytes
	.type	crypto_core_hchacha20_inputbytes, @function
crypto_core_hchacha20_inputbytes:
.LFB18:
	entry	sp, 32
.LCFI4:
	movi.n	a2, 0x10
	retw.n
.LFE18:
	.size	crypto_core_hchacha20_inputbytes, .-crypto_core_hchacha20_inputbytes
	.section	.text.crypto_core_hchacha20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_keybytes
	.type	crypto_core_hchacha20_keybytes, @function
crypto_core_hchacha20_keybytes:
.LFB15:
	.loc 2 85 0
	.loc 2 85 0
	entry	sp, 32
.LCFI5:
	.loc 2 87 0
	movi.n	a2, 0x20
	retw.n
.LFE15:
	.size	crypto_core_hchacha20_keybytes, .-crypto_core_hchacha20_keybytes
	.section	.text.crypto_core_hchacha20_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_constbytes
	.type	crypto_core_hchacha20_constbytes, @function
crypto_core_hchacha20_constbytes:
.LFB16:
	.loc 2 91 0
	entry	sp, 32
.LCFI6:
	.loc 2 93 0
	movi.n	a2, 0x10
	retw.n
.LFE16:
	.size	crypto_core_hchacha20_constbytes, .-crypto_core_hchacha20_constbytes
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
	.uleb128 0x60
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x93b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.Ldebug_ranges0+0x1f0
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
	.4byte	.LASF20
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
	.4byte	.LASF21
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
	.4byte	.LASF22
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
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x2
	.byte	0x11
	.4byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fd
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x11
	.4byte	0xa5
	.4byte	.LLST2
	.uleb128 0xa
	.string	"in"
	.byte	0x2
	.byte	0x11
	.4byte	0x8fd
	.4byte	.LLST3
	.uleb128 0xa
	.string	"k"
	.byte	0x2
	.byte	0x12
	.4byte	0x8fd
	.4byte	.LLST4
	.uleb128 0xa
	.string	"c"
	.byte	0x2
	.byte	0x12
	.4byte	0x8fd
	.4byte	.LLST5
	.uleb128 0xf
	.string	"i"
	.byte	0x2
	.byte	0x14
	.4byte	0x48
	.4byte	.LLST6
	.uleb128 0xf
	.string	"x0"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xf
	.string	"x1"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST8
	.uleb128 0xf
	.string	"x2"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0xf
	.string	"x3"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0xf
	.string	"x4"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0xf
	.string	"x5"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0xf
	.string	"x6"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST13
	.uleb128 0xf
	.string	"x7"
	.byte	0x2
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0xf
	.string	"x8"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0xf
	.string	"x9"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST16
	.uleb128 0xf
	.string	"x10"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0xf
	.string	"x11"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0xf
	.string	"x12"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0xf
	.string	"x13"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0xf
	.string	"x14"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0xf
	.string	"x15"
	.byte	0x2
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x2
	.byte	0x31
	.4byte	0x2be
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST24
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x2
	.byte	0x31
	.4byte	0x2e4
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST25
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST26
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x31
	.4byte	0x30a
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST27
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST28
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x31
	.4byte	0x32c
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST29
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x2
	.byte	0x32
	.4byte	0x352
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST30
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST31
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB80
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x2
	.byte	0x32
	.4byte	0x378
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST32
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST33
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x2
	.byte	0x32
	.4byte	0x39e
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST34
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST35
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB86
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x2
	.byte	0x32
	.4byte	0x3c4
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST36
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST37
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x2
	.byte	0x33
	.4byte	0x3e6
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST38
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB93
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x2
	.byte	0x33
	.4byte	0x408
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST39
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x2
	.byte	0x33
	.4byte	0x42a
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST40
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x2
	.byte	0x34
	.4byte	0x44c
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST41
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB103
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x2
	.byte	0x33
	.4byte	0x46e
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST42
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x2
	.byte	0x34
	.4byte	0x490
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST43
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB109
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x2
	.byte	0x34
	.4byte	0x4b2
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST44
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x2
	.byte	0x35
	.4byte	0x4d4
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST45
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x2
	.byte	0x35
	.4byte	0x4f6
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST46
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x2
	.byte	0x35
	.4byte	0x518
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST47
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB119
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x2
	.byte	0x35
	.4byte	0x53a
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST48
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB124
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x2
	.byte	0x36
	.4byte	0x55c
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST45
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB128
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x2
	.byte	0x34
	.4byte	0x582
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST50
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST51
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.byte	0x2
	.byte	0x36
	.4byte	0x5a4
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST46
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x2
	.byte	0x36
	.4byte	0x5c6
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST47
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB135
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x2
	.byte	0x36
	.4byte	0x5e8
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST54
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.4byte	0xb2
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x2
	.byte	0x37
	.4byte	0x60e
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST55
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST56
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB144
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x2
	.byte	0x38
	.4byte	0x630
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST57
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB148
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x2
	.byte	0x38
	.4byte	0x652
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST58
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB152
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x2
	.byte	0x37
	.4byte	0x678
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST59
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST60
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB158
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x2
	.byte	0x37
	.4byte	0x69e
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST61
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST62
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB161
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x2
	.byte	0x38
	.4byte	0x6c0
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST63
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB166
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x2
	.byte	0x37
	.4byte	0x6e6
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST64
	.uleb128 0x11
	.4byte	0xc2
	.4byte	.LLST65
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	.LBB169
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x2
	.byte	0x38
	.4byte	0x708
	.uleb128 0x11
	.4byte	0xcb
	.4byte	.LLST66
	.uleb128 0x13
	.4byte	0xc2
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0xdf
	.4byte	0x71c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0xdf
	.4byte	0x730
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0xdf
	.4byte	0x744
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.byte	0
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0xdf
	.4byte	0x758
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0xdf
	.4byte	0x76c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0xdf
	.4byte	0x780
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0xdf
	.4byte	0x794
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0xdf
	.4byte	0x7a8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL28
	.4byte	0xdf
	.4byte	0x7bc
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0xdf
	.4byte	0x7d0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0xdf
	.4byte	0x7e4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x14
	.4byte	.LVL37
	.4byte	0xdf
	.4byte	0x7f8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0x14
	.4byte	.LVL40
	.4byte	0xdf
	.4byte	0x80c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL42
	.4byte	0xdf
	.4byte	0x820
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.4byte	.LVL44
	.4byte	0xdf
	.4byte	0x834
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x14
	.4byte	.LVL46
	.4byte	0xdf
	.4byte	0x848
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL104
	.4byte	0x11f
	.4byte	0x85c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL105
	.4byte	0x11f
	.4byte	0x870
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.4byte	.LVL106
	.4byte	0x11f
	.4byte	0x884
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x14
	.4byte	.LVL107
	.4byte	0x11f
	.4byte	0x898
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL108
	.4byte	0x11f
	.4byte	0x8b2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL109
	.4byte	0x11f
	.4byte	0x8cc
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL110
	.4byte	0x11f
	.4byte	0x8e6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL111
	.4byte	0x11f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x903
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0x2
	.byte	0x54
	.4byte	0x85
	.byte	0x1
	.uleb128 0x18
	.4byte	0x908
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF17
	.byte	0x2
	.byte	0x5a
	.4byte	0x85
	.byte	0x1
	.uleb128 0x18
	.4byte	0x923
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL76
	.2byte	0x5
	.byte	0x3a
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL101
	.2byte	0x7
	.byte	0x3a
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x7
	.byte	0x3b
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x5
	.byte	0x3a
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE12
	.2byte	0x7
	.byte	0x3a
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL92
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL74
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL100
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL47
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL52
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL55
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL59
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL60
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL63
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL66
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL72
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL79
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL79
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL82
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL79
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL82
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL82
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL82
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL88
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL88
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	0
	.4byte	0
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB139
	.4byte	.LBE139
	.4byte	0
	.4byte	0
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	.LBB140
	.4byte	.LBE140
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	0
	.4byte	0
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	0
	.4byte	0
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	0
	.4byte	0
	.4byte	.LBB158
	.4byte	.LBE158
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	0
	.4byte	0
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	0
	.4byte	0
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB172
	.4byte	.LBE172
	.4byte	0
	.4byte	0
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	.LBB173
	.4byte	.LBE173
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF16:
	.string	"crypto_core_hchacha20_keybytes"
.LASF22:
	.string	"store32_le"
.LASF18:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"crypto_core_hchacha20_constbytes"
.LASF5:
	.string	"__uint32_t"
.LASF21:
	.string	"load32_le"
.LASF20:
	.string	"rotl32"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF6:
	.string	"unsigned int"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"crypto_core_hchacha20"
.LASF19:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_core/hchacha20/core_hchacha20.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
