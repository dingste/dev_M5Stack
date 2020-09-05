	.file	"p_256_ecc_pp.c"
	.text
.Ltext0:
	.section	.text.ECC_Double,"ax",@progbits
	.align	4
	.type	ECC_Double, @function
ECC_Double:
.LFB7:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 144
.LCFI0:
	.loc 1 56 0
	addi	a7, a3, 64
	mov.n	a11, a4
	mov.n	a10, a7
	call8	multiprecision_iszero
.LVL1:
	addi	a6, a2, 64
	beqz.n	a10, .L2
	.loc 1 57 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	multiprecision_init
.LVL2:
	retw.n
.L2:
.LVL3:
	.loc 1 61 0
	addi	a5, a3, 32
	.loc 1 64 0
	mov.n	a12, a4
	mov.n	a11, a7
	addi	a10, sp, 64
	.loc 1 61 0
	s32i	a5, sp, 96
.LVL4:
	.loc 1 64 0
	call8	multiprecision_mersenns_squa_mod
.LVL5:
	.loc 1 65 0
	mov.n	a13, a4
	addi	a12, sp, 64
	mov.n	a11, a3
	addi	a10, sp, 32
	call8	multiprecision_sub_mod
.LVL6:
	.loc 1 66 0
	addi	a12, sp, 64
	mov.n	a13, a4
	mov.n	a11, a3
	mov.n	a10, a12
	call8	multiprecision_add_mod
.LVL7:
	.loc 1 67 0
	addi	a12, sp, 32
	mov.n	a13, a4
	addi	a11, sp, 64
	mov.n	a10, a12
	call8	multiprecision_mersenns_mult_mod
.LVL8:
	.loc 1 68 0
	mov.n	a12, a4
	addi	a11, sp, 32
	mov.n	a10, sp
	call8	multiprecision_lshift_mod
.LVL9:
	.loc 1 69 0
	addi	a12, sp, 32
	mov.n	a13, a4
	mov.n	a11, sp
	mov.n	a10, a12
	call8	multiprecision_add_mod
.LVL10:
	.loc 1 71 0
	l32i	a11, sp, 96
	mov.n	a13, a4
	mov.n	a12, a7
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL11:
	.loc 1 72 0
	mov.n	a12, a4
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_lshift_mod
.LVL12:
	.loc 1 62 0
	addi	a5, a2, 32
.LVL13:
	.loc 1 74 0
	l32i	a11, sp, 96
	mov.n	a12, a4
	mov.n	a10, a5
	call8	multiprecision_mersenns_squa_mod
.LVL14:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_lshift_mod
.LVL15:
	.loc 1 76 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a5
	mov.n	a10, sp
	call8	multiprecision_mersenns_mult_mod
.LVL16:
	.loc 1 77 0
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, sp
	call8	multiprecision_lshift_mod
.LVL17:
	.loc 1 78 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_mersenns_squa_mod
.LVL18:
	.loc 1 79 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_lshift_mod
.LVL19:
	.loc 1 81 0
	mov.n	a12, a4
	addi	a11, sp, 32
	mov.n	a10, a2
	call8	multiprecision_mersenns_squa_mod
.LVL20:
	.loc 1 82 0
	mov.n	a12, a4
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	multiprecision_lshift_mod
.LVL21:
	.loc 1 83 0
	mov.n	a13, a4
	addi	a12, sp, 64
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL22:
	.loc 1 84 0
	mov.n	a13, a4
	mov.n	a12, a2
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	multiprecision_sub_mod
.LVL23:
	.loc 1 85 0
	addi	a11, sp, 64
	mov.n	a13, a4
	addi	a12, sp, 32
	mov.n	a10, a11
	call8	multiprecision_mersenns_mult_mod
.LVL24:
	.loc 1 86 0
	mov.n	a13, a4
	mov.n	a12, a5
	addi	a11, sp, 64
	mov.n	a10, a5
	call8	multiprecision_sub_mod
.LVL25:
	retw.n
.LFE7:
	.size	ECC_Double, .-ECC_Double
	.section	.text.ECC_Add,"ax",@progbits
	.align	4
	.type	ECC_Add, @function
ECC_Add:
.LFB8:
	.loc 1 91 0
.LVL26:
	entry	sp, 112
.LCFI1:
.LVL27:
	.loc 1 109 0
	mov.n	a11, a5
	addi	a10, a4, 64
.LVL28:
	call8	multiprecision_iszero
.LVL29:
.LBB6:
.LBB7:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a3
.LBE7:
.LBE6:
	.loc 1 109 0
	bnez.n	a10, .L11
.L5:
	.loc 1 104 0
	addi	a6, a3, 64
.LVL30:
	.loc 1 115 0
	mov.n	a11, a5
	mov.n	a10, a6
	call8	multiprecision_iszero
.LVL31:
	beqz.n	a10, .L7
.LVL32:
.LBB8:
.LBB9:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a4
.LVL33:
.L11:
	mov.n	a10, a2
	call8	memcpy
.LVL34:
	retw.n
.LVL35:
.L7:
.LBE9:
.LBE8:
	.loc 1 106 0
	addi	a8, a2, 64
	.loc 1 120 0
	mov.n	a12, a5
	mov.n	a11, a6
	addi	a10, sp, 32
	.loc 1 106 0
	s32i	a8, sp, 64
	.loc 1 120 0
	call8	multiprecision_mersenns_squa_mod
.LVL36:
	.loc 1 121 0
	mov.n	a13, a5
	addi	a12, sp, 32
	mov.n	a11, a6
	mov.n	a10, sp
	call8	multiprecision_mersenns_mult_mod
.LVL37:
	.loc 1 122 0
	addi	a12, sp, 32
	mov.n	a10, a12
	mov.n	a13, a5
	mov.n	a11, a4
	call8	multiprecision_mersenns_mult_mod
.LVL38:
	.loc 1 123 0
	mov.n	a13, a5
	mov.n	a12, sp
	addi	a11, a4, 32
	mov.n	a10, sp
	call8	multiprecision_mersenns_mult_mod
.LVL39:
	.loc 1 125 0
	addi	a11, sp, 32
	mov.n	a10, a11
	mov.n	a13, a5
	mov.n	a12, a3
	call8	multiprecision_sub_mod
.LVL40:
	.loc 1 104 0
	addi	a7, a3, 32
	.loc 1 126 0
	mov.n	a11, sp
	mov.n	a10, sp
	mov.n	a13, a5
	mov.n	a12, a7
	call8	multiprecision_sub_mod
.LVL41:
	.loc 1 128 0
	mov.n	a11, a5
	addi	a10, sp, 32
	call8	multiprecision_iszero
.LVL42:
	beqz.n	a10, .L8
	.loc 1 129 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	multiprecision_iszero
.LVL43:
	beqz.n	a10, .L9
	.loc 1 130 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a2
	call8	ECC_Double
.LVL44:
	.loc 1 131 0
	retw.n
.L9:
	.loc 1 133 0
	l32i	a10, sp, 64
	mov.n	a11, a5
	call8	multiprecision_init
.LVL45:
	.loc 1 134 0
	retw.n
.L8:
	.loc 1 138 0
	l32i	a10, sp, 64
	mov.n	a13, a5
	addi	a12, sp, 32
	mov.n	a11, a6
	.loc 1 106 0
	addi	a4, a2, 32
.LVL46:
	.loc 1 138 0
	call8	multiprecision_mersenns_mult_mod
.LVL47:
	.loc 1 139 0
	mov.n	a12, a5
	addi	a11, sp, 32
	mov.n	a10, a4
	call8	multiprecision_mersenns_squa_mod
.LVL48:
	.loc 1 140 0
	mov.n	a13, a5
	addi	a12, sp, 32
	mov.n	a11, a4
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL49:
	.loc 1 141 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a4
	call8	multiprecision_mersenns_mult_mod
.LVL50:
	.loc 1 142 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi	a10, sp, 32
	call8	multiprecision_lshift_mod
.LVL51:
	.loc 1 143 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	multiprecision_mersenns_squa_mod
.LVL52:
	.loc 1 144 0
	mov.n	a13, a5
	addi	a12, sp, 32
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL53:
	.loc 1 145 0
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL54:
	.loc 1 146 0
	mov.n	a13, a5
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a4
	call8	multiprecision_sub_mod
.LVL55:
	.loc 1 147 0
	mov.n	a13, a5
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a4
	call8	multiprecision_mersenns_mult_mod
.LVL56:
	.loc 1 148 0
	mov.n	a13, a5
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL57:
	.loc 1 149 0
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a4
	call8	multiprecision_sub_mod
.LVL58:
	retw.n
.LFE8:
	.size	ECC_Add, .-ECC_Add
	.section	.text.ECC_PointMult_Bin_NAF,"ax",@progbits
	.literal_position
	.literal .LC2, curve_p256+68
	.literal .LC3, curve+68
	.align	4
	.global	ECC_PointMult_Bin_NAF
	.type	ECC_PointMult_Bin_NAF, @function
ECC_PointMult_Bin_NAF:
.LFB10:
	.loc 1 190 0
.LVL59:
	entry	sp, 320
.LCFI2:
	.loc 1 201 0
	l32r	a8, .LC3
	l32r	a6, .LC2
.LBB23:
.LBB24:
	.loc 1 35 0
	movi	a12, 0x60
.LBE24:
.LBE23:
	.loc 1 201 0
	addi	a7, a5, -8
.LBB27:
.LBB25:
	.loc 1 35 0
	movi.n	a11, 0
	mov.n	a10, sp
.LBE25:
.LBE27:
	.loc 1 201 0
	movnez	a6, a8, a7
.LVL60:
.LBB28:
.LBB26:
	.loc 1 35 0
	call8	memset
.LVL61:
.LBE26:
.LBE28:
	.loc 1 205 0
	mov.n	a11, a5
	addi	a10, a3, 64
	call8	multiprecision_init
.LVL62:
	.loc 1 206 0
	movi.n	a7, 1
	s32i	a7, a3, 64
.LVL63:
.LBB29:
.LBB30:
	.loc 1 35 0
	movi	a12, 0x60
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL64:
.LBE30:
.LBE29:
	.loc 1 212 0
	mov.n	a12, a5
	mov.n	a11, a3
	addi	a10, sp, 96
	call8	multiprecision_copy
.LVL65:
	.loc 1 213 0
	mov.n	a11, a6
	addi	a6, sp, 96
.LVL66:
	mov.n	a13, a5
	addi	a12, a3, 32
	addi	a10, a6, 32
	call8	multiprecision_sub
.LVL67:
	.loc 1 215 0
	addi	a8, sp, 96
	addi	a10, a8, 64
	mov.n	a11, a5
	.loc 1 219 0
	movi	a6, 0xc0
	.loc 1 215 0
	call8	multiprecision_init
.LVL68:
	.loc 1 219 0
	add.n	a6, sp, a6
	movi.n	a12, 0x41
	movi.n	a11, 0
	mov.n	a10, a6
	.loc 1 216 0
	s32i	a7, sp, 160
	.loc 1 219 0
	call8	memset
.LVL69:
.LBB31:
.LBB32:
	.loc 1 156 0
	movi.n	a7, 0
	j	.L14
.LVL70:
.L18:
	.loc 1 161 0
	l32i.n	a8, a4, 0
	.loc 1 177 0
	movi.n	a13, 0
	.loc 1 161 0
	bbc	a8, a13, .L15
	.loc 1 162 0
	extui	a13, a8, 0, 2
.LVL71:
	.loc 1 165 0
	bnei	a13, 1, .L16
	.loc 1 166 0
	movi.n	a9, -2
	and	a8, a8, a9
	s32i.n	a8, a4, 0
	j	.L15
.L16:
	.loc 1 168 0
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 0
	.loc 1 169 0
	bnez.n	a8, .L15
	addi.n	a10, a4, 4
.LVL72:
.L17:
	.loc 1 172 0
	l32i.n	a8, a10, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a10, 0
	addi.n	a10, a10, 4
	.loc 1 173 0
	beqz.n	a8, .L17
.LVL73:
.L15:
	.loc 1 180 0
	mov.n	a10, a4
	mov.n	a12, a5
	mov.n	a11, a4
	s32i	a13, sp, 272
	call8	multiprecision_rshift
.LVL74:
	.loc 1 181 0
	srai	a8, a7, 2
	extui	a10, a7, 0, 2
	l32i	a13, sp, 272
	add.n	a8, a6, a8
	slli	a10, a10, 1
	ssl	a10
	sll	a13, a13
	l8ui	a10, a8, 0
	.loc 1 182 0
	addi.n	a7, a7, 1
.LVL75:
	.loc 1 181 0
	or	a13, a13, a10
	s8i	a13, a8, 0
.LVL76:
.L14:
	.loc 1 160 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	multiprecision_most_signbits
.LVL77:
	bnez.n	a10, .L18
.LVL78:
.LBE32:
.LBE31:
.LBB33:
	.loc 1 222 0
	addi.n	a4, a7, -1
.LVL79:
	.loc 1 225 0
	movi	a7, 0xc0
.LVL80:
	.loc 1 222 0
	j	.L19
.LVL81:
.L22:
.LBB34:
.LBB35:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a2
	mov.n	a10, sp
.LVL82:
	call8	memcpy
.LVL83:
.LBE35:
.LBE34:
	.loc 1 224 0
	mov.n	a12, a5
	mov.n	a11, sp
.LVL84:
	mov.n	a10, a2
	call8	ECC_Double
.LVL85:
	.loc 1 225 0
	movi	a8, 0xc0
	add.n	a8, a8, sp
	srai	a6, a4, 2
	add.n	a6, a8, a6
	l8ui	a8, a6, 0
	extui	a6, a4, 0, 2
	slli	a6, a6, 1
	ssr	a6
	sra	a6, a8
	extui	a6, a6, 0, 2
.LVL86:
	.loc 1 227 0
	bnei	a6, 1, .L20
.LVL87:
.LBB36:
.LBB37:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a2
	mov.n	a10, sp
.LVL88:
	call8	memcpy
.LVL89:
.LBE37:
.LBE36:
	.loc 1 229 0
	mov.n	a13, a5
	mov.n	a12, a3
	j	.L28
.LVL90:
.L20:
	.loc 1 230 0
	bnei	a6, 3, .L21
.LVL91:
.LBB38:
.LBB39:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a2
	mov.n	a10, sp
.LVL92:
	call8	memcpy
.LVL93:
.LBE39:
.LBE38:
	.loc 1 232 0
	mov.n	a13, a5
	addi	a12, sp, 96
.LVL94:
.L28:
	mov.n	a11, sp
.LVL95:
	mov.n	a10, a2
	call8	ECC_Add
.LVL96:
.L21:
	.loc 1 222 0 discriminator 2
	addi.n	a4, a4, -1
.LVL97:
.L19:
	.loc 1 222 0 is_stmt 0 discriminator 1
	bnei	a4, -1, .L22
.LBE33:
	.loc 1 236 0 is_stmt 1
	addi	a3, a2, 64
.LVL98:
	mov.n	a12, a5
	mov.n	a11, a3
	addi	a10, sp, 96
	call8	multiprecision_inv_mod
.LVL99:
	.loc 1 237 0
	mov.n	a12, a5
	addi	a11, sp, 96
	mov.n	a10, a3
	call8	multiprecision_mersenns_squa_mod
.LVL100:
	.loc 1 238 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_mersenns_mult_mod
.LVL101:
	.loc 1 239 0
	mov.n	a13, a5
	addi	a12, sp, 96
	mov.n	a11, a3
	mov.n	a10, a3
	call8	multiprecision_mersenns_mult_mod
.LVL102:
	.loc 1 240 0
	addi	a10, a2, 32
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a10
	call8	multiprecision_mersenns_mult_mod
.LVL103:
	retw.n
.LFE10:
	.size	ECC_PointMult_Bin_NAF, .-ECC_PointMult_Bin_NAF
	.section	.text.ECC_CheckPointIsInElliCur_P256,"ax",@progbits
	.literal_position
	.literal .LC4, curve_p256+32
	.align	4
	.global	ECC_CheckPointIsInElliCur_P256
	.type	ECC_CheckPointIsInElliCur_P256, @function
ECC_CheckPointIsInElliCur_P256:
.LFB11:
	.loc 1 244 0
.LVL104:
	entry	sp, 192
.LCFI3:
	.loc 1 246 0
	movi.n	a3, 0x20
	movi	a10, 0x80
	mov.n	a12, a3
	movi.n	a11, 0
	add.n	a10, a10, sp
	call8	memset
.LVL105:
	.loc 1 248 0
	mov.n	a12, a3
	movi.n	a11, 0
	addi	a10, sp, 96
	call8	memset
.LVL106:
	.loc 1 250 0
	mov.n	a12, a3
	movi.n	a11, 0
	addi	a10, sp, 64
	call8	memset
.LVL107:
	.loc 1 253 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL108:
	.loc 1 255 0
	movi	a10, 0x80
	add.n	a11, a2, a3
	add.n	a10, a10, sp
	movi.n	a12, 8
	call8	multiprecision_mersenns_squa_mod
.LVL109:
	.loc 1 257 0
	mov.n	a12, a2
	movi.n	a13, 8
	mov.n	a11, a2
	mov.n	a10, sp
	call8	multiprecision_mult
.LVL110:
	.loc 1 261 0
	l32i.n	a8, sp, 0
	.loc 1 264 0
	mov.n	a11, sp
	.loc 1 261 0
	addi	a8, a8, -3
	.loc 1 264 0
	addi	a10, sp, 96
	.loc 1 261 0
	s32i.n	a8, sp, 0
	.loc 1 264 0
	call8	multiprecision_fast_mod_P256
.LVL111:
	.loc 1 266 0
	mov.n	a12, a2
	movi.n	a13, 8
	addi	a11, sp, 96
	mov.n	a10, sp
	call8	multiprecision_mult
.LVL112:
	.loc 1 268 0
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	multiprecision_fast_mod_P256
.LVL113:
	.loc 1 270 0
	l32r	a12, .LC4
	movi.n	a13, 8
	addi	a11, sp, 64
	addi	a10, sp, 96
	call8	multiprecision_add_mod
.LVL114:
	.loc 1 272 0
	movi	a10, 0x80
	movi.n	a12, 8
	addi	a11, sp, 96
	add.n	a10, a10, sp
	call8	multiprecision_compare
.LVL115:
	movi.n	a3, 1
	movi.n	a2, 0
.LVL116:
	moveqz	a2, a3, a10
	.loc 1 277 0
	retw.n
.LFE11:
	.size	ECC_CheckPointIsInElliCur_P256, .-ECC_CheckPointIsInElliCur_P256
	.comm	curve_p256,228,4
	.comm	curve,228,4
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI1-.LFB8
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0xc0
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x114f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0x20
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1a
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.4byte	0xa5
	.4byte	0xc7
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x60
	.byte	0x5
	.byte	0x1f
	.4byte	0xee
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x20
	.4byte	0xee
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x21
	.4byte	0xee
	.byte	0x20
	.uleb128 0x8
	.string	"z"
	.byte	0x5
	.byte	0x22
	.4byte	0xee
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	0x81
	.4byte	0xfe
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.4byte	0xc7
	.uleb128 0x7
	.byte	0xe4
	.byte	0x5
	.byte	0x25
	.4byte	0x152
	.uleb128 0x8
	.string	"a"
	.byte	0x5
	.byte	0x27
	.4byte	0xee
	.byte	0
	.uleb128 0x8
	.string	"b"
	.byte	0x5
	.byte	0x28
	.4byte	0xee
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.4byte	0x25
	.byte	0x40
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0x2e
	.4byte	0xee
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x31
	.4byte	0xee
	.byte	0x64
	.uleb128 0x8
	.string	"G"
	.byte	0x5
	.byte	0x34
	.4byte	0xfe
	.byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.4byte	0x109
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0x2c
	.4byte	0x514
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x2c
	.4byte	0x514
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"t1"
	.byte	0x1
	.byte	0x2e
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.string	"t2"
	.byte	0x1
	.byte	0x2f
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.string	"t3"
	.byte	0x1
	.byte	0x30
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.string	"x1"
	.byte	0x1
	.byte	0x31
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"x3"
	.byte	0x1
	.byte	0x32
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.string	"y1"
	.byte	0x1
	.byte	0x33
	.4byte	0x51a
	.4byte	.LLST0
	.uleb128 0xd
	.string	"y3"
	.byte	0x1
	.byte	0x34
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"z1"
	.byte	0x1
	.byte	0x35
	.4byte	0x51a
	.4byte	.LLST1
	.uleb128 0xd
	.string	"z3"
	.byte	0x1
	.byte	0x36
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x109b
	.4byte	0x225
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x10a6
	.4byte	0x23f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x10b1
	.4byte	0x260
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x10bc
	.4byte	0x288
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x10c7
	.4byte	0x2b0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x10d2
	.4byte	0x2d9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x10dd
	.4byte	0x2fb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x10c7
	.4byte	0x324
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x10d2
	.4byte	0x34b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x10dd
	.4byte	0x36b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x10b1
	.4byte	0x38c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x10dd
	.4byte	0x3ac
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x10d2
	.4byte	0x3d3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x10dd
	.4byte	0x3f5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x10b1
	.4byte	0x415
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x10dd
	.4byte	0x435
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL20
	.4byte	0x10b1
	.4byte	0x456
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x10dd
	.4byte	0x478
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL22
	.4byte	0x10bc
	.4byte	0x49f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL23
	.4byte	0x10bc
	.4byte	0x4c7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x10d2
	.4byte	0x4f0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x10bc
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x12
	.byte	0x4
	.4byte	0x81
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	0x53f
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x26
	.4byte	0x514
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x26
	.4byte	0x514
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b9
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x5a
	.4byte	0x514
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x5a
	.4byte	0x514
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0x5a
	.4byte	0x514
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5a
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"t1"
	.byte	0x1
	.byte	0x5c
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.string	"t2"
	.byte	0x1
	.byte	0x5d
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.string	"x1"
	.byte	0x1
	.byte	0x5e
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"x2"
	.byte	0x1
	.byte	0x5f
	.4byte	0x51a
	.4byte	.LLST3
	.uleb128 0xd
	.string	"x3"
	.byte	0x1
	.byte	0x60
	.4byte	0x51a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"y1"
	.byte	0x1
	.byte	0x61
	.4byte	0x51a
	.uleb128 0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.uleb128 0xe
	.string	"y2"
	.byte	0x1
	.byte	0x62
	.4byte	0x51a
	.4byte	.LLST4
	.uleb128 0xd
	.string	"y3"
	.byte	0x1
	.byte	0x63
	.4byte	0x51a
	.uleb128 0x3
	.byte	0x72
	.sleb128 32
	.byte	0x9f
	.uleb128 0xe
	.string	"z1"
	.byte	0x1
	.byte	0x64
	.4byte	0x51a
	.4byte	.LLST5
	.uleb128 0xe
	.string	"z2"
	.byte	0x1
	.byte	0x65
	.4byte	0x51a
	.4byte	.LLST6
	.uleb128 0xd
	.string	"z3"
	.byte	0x1
	.byte	0x66
	.4byte	0x51a
	.uleb128 0x4
	.byte	0x72
	.sleb128 64
	.byte	0x9f
	.uleb128 0x16
	.4byte	0x520
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x6e
	.4byte	0x639
	.uleb128 0x17
	.4byte	0x535
	.uleb128 0x17
	.4byte	0x52c
	.byte	0
	.uleb128 0x16
	.4byte	0x520
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x74
	.4byte	0x66f
	.uleb128 0x18
	.4byte	0x535
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	0x52c
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0x10e8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL29
	.4byte	0x109b
	.4byte	0x68a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL31
	.4byte	0x109b
	.4byte	0x6a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL36
	.4byte	0x10b1
	.4byte	0x6c5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL37
	.4byte	0x10d2
	.4byte	0x6ed
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL38
	.4byte	0x10d2
	.4byte	0x715
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL39
	.4byte	0x10d2
	.4byte	0x73d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL40
	.4byte	0x10bc
	.4byte	0x765
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL41
	.4byte	0x10bc
	.4byte	0x78d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL42
	.4byte	0x109b
	.4byte	0x7a8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL43
	.4byte	0x109b
	.4byte	0x7c3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL44
	.4byte	0x15d
	.4byte	0x7e3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL45
	.4byte	0x10a6
	.4byte	0x7fe
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL47
	.4byte	0x10d2
	.4byte	0x826
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL48
	.4byte	0x10b1
	.4byte	0x847
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL49
	.4byte	0x10d2
	.4byte	0x86e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL50
	.4byte	0x10d2
	.4byte	0x894
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL51
	.4byte	0x10dd
	.4byte	0x8b5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL52
	.4byte	0x10b1
	.4byte	0x8d6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL53
	.4byte	0x10bc
	.4byte	0x8fd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL54
	.4byte	0x10bc
	.4byte	0x923
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL55
	.4byte	0x10bc
	.4byte	0x949
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL56
	.4byte	0x10d2
	.4byte	0x970
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL57
	.4byte	0x10d2
	.4byte	0x996
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL58
	.4byte	0x10bc
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	0xa18
	.uleb128 0x14
	.string	"naf"
	.byte	0x1
	.byte	0x99
	.4byte	0xa18
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x1
	.byte	0x99
	.4byte	0xa1e
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x99
	.4byte	0x51a
	.uleb128 0x19
	.4byte	.LASF21
	.byte	0x1
	.byte	0x99
	.4byte	0x9a
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9b
	.4byte	0x9a
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0x9d
	.4byte	0x25
	.uleb128 0x1b
	.string	"var"
	.byte	0x1
	.byte	0x9e
	.4byte	0x9a
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x12
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0xa3a
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x21
	.4byte	0x514
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5b
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0xbd
	.4byte	0x514
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xbd
	.4byte	0x514
	.4byte	.LLST9
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xbd
	.4byte	0x51a
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xbd
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0xbf
	.4byte	0x9a
	.4byte	.LLST11
	.uleb128 0xd
	.string	"naf"
	.byte	0x1
	.byte	0xc0
	.4byte	0xe5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc1
	.4byte	0x9a
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc2
	.4byte	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0xc3
	.4byte	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc4
	.4byte	0x51a
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	0xa24
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcc
	.4byte	0xb12
	.uleb128 0x18
	.4byte	0xa30
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.LVL61
	.4byte	0x10f1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa24
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0xd1
	.4byte	0xb48
	.uleb128 0x20
	.4byte	0xa30
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL64
	.4byte	0x10f1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x9b9
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xdc
	.4byte	0xbe2
	.uleb128 0x20
	.4byte	0x9e4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	0x9db
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	0x9d0
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2719
	.sleb128 0
	.uleb128 0x20
	.4byte	0x9c5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x21
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x22
	.4byte	0x9ef
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	0x9fa
	.4byte	.LLST17
	.uleb128 0x23
	.4byte	0xa03
	.uleb128 0x22
	.4byte	0xa0c
	.4byte	.LLST18
	.uleb128 0xf
	.4byte	.LVL74
	.4byte	0x10fa
	.4byte	0xbca
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL77
	.4byte	0x1105
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xcfc
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xde
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	0x520
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xdf
	.4byte	0xc3d
	.uleb128 0x18
	.4byte	0x535
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	0x52c
	.4byte	.LLST20
	.uleb128 0x11
	.4byte	.LVL83
	.4byte	0x10e8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x520
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0xe4
	.4byte	0xc80
	.uleb128 0x18
	.4byte	0x535
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	0x52c
	.4byte	.LLST22
	.uleb128 0x11
	.4byte	.LVL89
	.4byte	0x10e8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x520
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xe7
	.4byte	0xcc3
	.uleb128 0x18
	.4byte	0x535
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	0x52c
	.4byte	.LLST24
	.uleb128 0x11
	.4byte	.LVL93
	.4byte	0x10e8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL85
	.4byte	0x15d
	.4byte	0xce4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL96
	.4byte	0x53f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL62
	.4byte	0x10a6
	.4byte	0xd17
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL65
	.4byte	0x1110
	.4byte	0xd38
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL67
	.4byte	0x111b
	.4byte	0xd6f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x13
	.byte	0x3
	.4byte	curve+68
	.byte	0x3
	.4byte	curve_p256+68
	.byte	0x75
	.sleb128 0
	.byte	0x38
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL68
	.4byte	0x10a6
	.4byte	0xd8a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL69
	.4byte	0x10f1
	.4byte	0xda9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.uleb128 0xf
	.4byte	.LVL99
	.4byte	0x1126
	.4byte	0xdca
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL100
	.4byte	0x10b1
	.4byte	0xdeb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL101
	.4byte	0x10d2
	.4byte	0xe11
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL102
	.4byte	0x10d2
	.4byte	0xe38
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL103
	.4byte	0x10d2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xa5
	.4byte	0xe6b
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.4byte	0xb0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1039
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xf3
	.4byte	0x514
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf6
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf8
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.string	"x_q"
	.byte	0x1
	.byte	0xfa
	.4byte	0xee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.string	"x_x"
	.byte	0x1
	.byte	0xfd
	.4byte	0x1039
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xf
	.4byte	.LVL105
	.4byte	0x10f1
	.4byte	0xeeb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL106
	.4byte	0x10f1
	.4byte	0xf0b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL107
	.4byte	0x10f1
	.4byte	0xf2b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL108
	.4byte	0x10f1
	.4byte	0xf4b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LVL109
	.4byte	0x10b1
	.4byte	0xf6d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.4byte	.LVL110
	.4byte	0x1131
	.4byte	0xf93
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.4byte	.LVL111
	.4byte	0x113c
	.4byte	0xfaf
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0xf
	.4byte	.LVL112
	.4byte	0x1131
	.4byte	0xfd6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.4byte	.LVL113
	.4byte	0x113c
	.4byte	0xff2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0xf
	.4byte	.LVL114
	.4byte	0x10c7
	.4byte	0x101c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	curve_p256+32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.4byte	.LVL115
	.4byte	0x1147
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x81
	.4byte	0x1049
	.uleb128 0x6
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x26
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2b8
	.4byte	0x105c
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x27
	.4byte	0xb7
	.uleb128 0x26
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2b9
	.4byte	0x1074
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xb7
	.uleb128 0x28
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1e
	.4byte	0x152
	.uleb128 0x5
	.byte	0x3
	.4byte	curve
	.uleb128 0x28
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1f
	.4byte	0x152
	.uleb128 0x5
	.byte	0x3
	.4byte	curve_p256
	.uleb128 0x29
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x28
	.uleb128 0x29
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x29
	.uleb128 0x29
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x38
	.uleb128 0x29
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x32
	.uleb128 0x29
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x30
	.uleb128 0x29
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x37
	.uleb128 0x29
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x34
	.uleb128 0x2a
	.4byte	.LASF45
	.4byte	.LASF45
	.uleb128 0x2a
	.4byte	.LASF46
	.4byte	.LASF46
	.uleb128 0x29
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0x33
	.uleb128 0x29
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x2d
	.uleb128 0x29
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x2a
	.uleb128 0x29
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x31
	.uleb128 0x29
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x2e
	.uleb128 0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x3a
	.uleb128 0x29
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x3c
	.uleb128 0x29
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x27
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x26
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x74
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE8
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x73
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0x73
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0x74
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0x74
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE8
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL59
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LFE10
	.2byte	0x14
	.byte	0x3
	.4byte	curve+68
	.byte	0x3
	.4byte	curve_p256+68
	.byte	0x75
	.sleb128 0
	.byte	0x38
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85-1
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL95
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL69
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL81
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85-1
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL95
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LVL90
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL94
	.2byte	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL104
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"bd_addr_null"
.LASF44:
	.string	"multiprecision_lshift_mod"
.LASF49:
	.string	"multiprecision_copy"
.LASF54:
	.string	"multiprecision_compare"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"ECC_Double"
.LASF39:
	.string	"multiprecision_init"
.LASF10:
	.string	"sizetype"
.LASF52:
	.string	"multiprecision_mult"
.LASF59:
	.string	"ECC_CheckPointIsInElliCur_P256"
.LASF6:
	.string	"__uint32_t"
.LASF42:
	.string	"multiprecision_add_mod"
.LASF33:
	.string	"x_x_q"
.LASF21:
	.string	"keyLength"
.LASF4:
	.string	"short int"
.LASF45:
	.string	"memcpy"
.LASF31:
	.string	"modp"
.LASF13:
	.string	"uint8_t"
.LASF14:
	.string	"uint32_t"
.LASF51:
	.string	"multiprecision_inv_mod"
.LASF20:
	.string	"elliptic_curve_t"
.LASF30:
	.string	"minus_p"
.LASF7:
	.string	"long long int"
.LASF29:
	.string	"NumNaf"
.LASF46:
	.string	"memset"
.LASF9:
	.string	"long int"
.LASF15:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF19:
	.string	"omega"
.LASF57:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"y_y_q"
.LASF40:
	.string	"multiprecision_mersenns_squa_mod"
.LASF18:
	.string	"a_minus3"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"Point"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"multiprecision_sub"
.LASF37:
	.string	"curve_p256"
.LASF12:
	.string	"char"
.LASF41:
	.string	"multiprecision_sub_mod"
.LASF26:
	.string	"NumNAF"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"ECC_Add"
.LASF28:
	.string	"p_256_init_point"
.LASF38:
	.string	"multiprecision_iszero"
.LASF16:
	.string	"_Bool"
.LASF58:
	.string	"ECC_PointMult_Bin_NAF"
.LASF25:
	.string	"ECC_NAF"
.LASF53:
	.string	"multiprecision_fast_mod_P256"
.LASF11:
	.string	"long unsigned int"
.LASF27:
	.string	"sign"
.LASF36:
	.string	"curve"
.LASF47:
	.string	"multiprecision_rshift"
.LASF43:
	.string	"multiprecision_mersenns_mult_mod"
.LASF48:
	.string	"multiprecision_most_signbits"
.LASF34:
	.string	"bd_addr_any"
.LASF24:
	.string	"p_256_copy_point"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF56:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
