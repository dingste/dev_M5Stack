	.file	"sdmmc_mmc.c"
	.text
.Ltext0:
	.section	.text.MMC_RSP_BITS,"ax",@progbits
	.literal_position
	.literal .LC0, -2147483617
	.align	4
	.type	MMC_RSP_BITS, @function
MMC_RSP_BITS:
.LFB27:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_defs.h"
	.loc 1 379 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 380 0
	extui	a8, a4, 0, 5
	movi.n	a10, -1
	beqz.n	a8, .L2
	.loc 1 380 0 is_stmt 0 discriminator 1
	l32r	a8, .LC0
	and	a8, a4, a8
	bgez	a8, .L3
	add.n	a8, a8, a10
	movi.n	a9, -0x20
	or	a8, a8, a9
	addi.n	a8, a8, 1
.L3:
	neg	a8, a8
	movi.n	a10, -1
	ssr	a8
	srl	a10, a10
.L2:
.LVL1:
	.loc 1 382 0 is_stmt 1 discriminator 4
	l32r	a8, .LC0
	and	a8, a3, a8
	bgez	a8, .L4
	addi.n	a8, a8, -1
	movi.n	a9, -0x20
	or	a8, a8, a9
	addi.n	a8, a8, 1
.L4:
.LVL2:
	.loc 1 383 0 discriminator 4
	addi	a9, a3, 31
	movltz	a3, a9, a3
.LVL3:
	srai	a3, a3, 5
	addx4	a3, a3, a2
	l32i.n	a9, a3, 0
.LVL4:
	.loc 1 384 0 discriminator 4
	add.n	a4, a4, a8
.LVL5:
	movi.n	a11, 0x20
	.loc 1 383 0 discriminator 4
	ssr	a8
	srl	a9, a9
.LVL6:
	.loc 1 384 0 discriminator 4
	movi.n	a2, 0
.LVL7:
	bgeu	a11, a4, .L5
	.loc 1 384 0 is_stmt 0 discriminator 1
	l32i.n	a2, a3, 4
	neg	a8, a8
.LVL8:
	ssl	a8
	sll	a2, a2
.LVL9:
.L5:
	.loc 1 385 0 is_stmt 1 discriminator 4
	or	a2, a2, a9
.LVL10:
	.loc 1 386 0 discriminator 4
	and	a2, a2, a10
	retw.n
.LFE27:
	.size	MMC_RSP_BITS, .-MMC_RSP_BITS
	.section	.text.sdmmc_mmc_decode_cid,"ax",@progbits
	.align	4
	.global	sdmmc_mmc_decode_cid
	.type	sdmmc_mmc_decode_cid, @function
sdmmc_mmc_decode_cid:
.LFB33:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_mmc.c"
	.loc 2 158 0
.LVL11:
	entry	sp, 32
.LCFI1:
	.loc 2 159 0
	bgeui	a2, 2, .L10
	.loc 2 161 0
	movi.n	a12, 0x18
	movi	a11, 0x68
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL12:
	.loc 2 162 0
	movi.n	a2, 0
.LVL13:
	.loc 2 161 0
	s32i.n	a10, a4, 0
	.loc 2 163 0
	movi.n	a12, 8
	movi	a11, 0x60
	.loc 2 162 0
	s32i.n	a2, a4, 4
	.loc 2 163 0
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL14:
	s8i	a10, a4, 8
	movi.n	a12, 8
	movi.n	a11, 0x58
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL15:
	s8i	a10, a4, 9
	movi.n	a12, 8
	movi.n	a11, 0x50
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL16:
	s8i	a10, a4, 10
	movi.n	a12, 8
	movi.n	a11, 0x48
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL17:
	s8i	a10, a4, 11
	movi.n	a12, 8
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL18:
	s8i	a10, a4, 12
	movi.n	a12, 8
	movi.n	a11, 0x38
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL19:
	s8i	a10, a4, 13
	movi.n	a12, 8
	movi.n	a11, 0x30
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL20:
	s8i	a10, a4, 14
	.loc 2 164 0
	movi.n	a12, 8
	movi.n	a11, 0x28
	.loc 2 163 0
	s8i	a2, a4, 15
	.loc 2 164 0
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL21:
	s32i.n	a10, a4, 16
	.loc 2 165 0
	movi.n	a12, 0x18
	movi.n	a11, 0x10
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL22:
	.loc 2 166 0
	movi.n	a12, 8
	.loc 2 165 0
	s32i.n	a10, a4, 20
	.loc 2 166 0
	mov.n	a11, a12
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL23:
	s32i.n	a10, a4, 24
	j	.L11
.LVL24:
.L10:
	.loc 2 167 0
	addi	a2, a2, -2
.LVL25:
	bgeui	a2, 3, .L11
	.loc 2 170 0
	movi.n	a12, 8
	movi	a11, 0x78
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL26:
	s32i.n	a10, a4, 0
	.loc 2 171 0
	movi.n	a12, 0x10
	movi	a11, 0x68
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL27:
	s32i.n	a10, a4, 4
	.loc 2 172 0
	movi.n	a12, 8
	movi	a11, 0x60
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL28:
	s8i	a10, a4, 8
	movi.n	a12, 8
	movi.n	a11, 0x58
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL29:
	s8i	a10, a4, 9
	movi.n	a12, 8
	movi.n	a11, 0x50
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL30:
	s8i	a10, a4, 10
	movi.n	a12, 8
	movi.n	a11, 0x48
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL31:
	s8i	a10, a4, 11
	movi.n	a12, 8
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL32:
	s8i	a10, a4, 12
	movi.n	a12, 8
	movi.n	a11, 0x38
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL33:
	s8i	a10, a4, 13
	movi.n	a12, 8
	movi.n	a11, 0x30
	movi.n	a2, 0
.LVL34:
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL35:
	s8i	a2, a4, 15
	.loc 2 173 0
	movi.n	a2, 0
	.loc 2 172 0
	s8i	a10, a4, 14
	.loc 2 173 0
	s32i.n	a2, a4, 16
	.loc 2 174 0
	movi.n	a12, 0x18
	movi.n	a11, 0x10
	mov.n	a10, a3
	call8	MMC_RSP_BITS
.LVL36:
	s32i.n	a10, a4, 20
	.loc 2 175 0
	s32i.n	a2, a4, 24
.L11:
	.loc 2 178 0
	movi.n	a2, 0
	retw.n
.LFE33:
	.size	sdmmc_mmc_decode_cid, .-sdmmc_mmc_decode_cid
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"sdmmc_mmc"
.LC3:
	.string	"\033[0;31mE (%d) %s: unknown MMC CSD structure version 0x%x\n\033[0m\n"
	.section	.text.sdmmc_mmc_decode_csd,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	sdmmc_mmc_decode_csd
	.type	sdmmc_mmc_decode_csd, @function
sdmmc_mmc_decode_csd:
.LFB34:
	.loc 2 181 0
.LVL37:
	entry	sp, 32
.LCFI2:
	.loc 2 182 0
	movi.n	a12, 2
	movi	a11, 0x7e
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL38:
	s32i.n	a10, a3, 0
	.loc 2 183 0
	addi.n	a10, a10, -1
	bgeui	a10, 3, .L13
	.loc 2 186 0
	movi.n	a12, 4
	movi	a11, 0x7a
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL39:
	s32i.n	a10, a3, 4
	.loc 2 187 0
	movi.n	a12, 0xc
	movi.n	a11, 0x3e
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL40:
	mov.n	a4, a10
	movi.n	a12, 3
	movi.n	a11, 0x2f
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL41:
	addi.n	a10, a10, 2
	addi.n	a4, a4, 1
	ssl	a10
	sll	a4, a4
	s32i.n	a4, a3, 8
	.loc 2 188 0
	mov.n	a10, a2
	movi.n	a12, 4
	movi.n	a11, 0x50
	call8	MMC_RSP_BITS
.LVL42:
	.loc 2 193 0
	movi.n	a8, 1
	.loc 2 188 0
	s32i.n	a10, a3, 16
	.loc 2 194 0
	movi	a2, 0x200
.LVL43:
	.loc 2 193 0
	ssl	a10
	sll	a10, a8
.LVL44:
	.loc 2 194 0
	min	a2, a10, a2
	s32i.n	a2, a3, 12
	.loc 2 195 0
	blt	a2, a10, .L14
	j	.L15
.LVL45:
.L13:
	.loc 2 190 0 discriminator 2
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC2
	l32i.n	a15, a3, 0
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 2 191 0 discriminator 2
	movi.n	a2, 1
.LVL48:
	retw.n
.LVL49:
.L14:
	.loc 2 196 0
	quos	a10, a10, a2
.LVL50:
	mull	a4, a10, a4
	s32i.n	a4, a3, 8
.L15:
	.loc 2 199 0
	movi.n	a2, 0
	s32i.n	a2, a3, 24
	.loc 2 201 0
	retw.n
.LFE34:
	.size	sdmmc_mmc_decode_csd, .-sdmmc_mmc_decode_csd
	.section	.rodata.str1.1
.LC7:
	.string	"esp_ptr_dma_capable(out_data)"
.LC10:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_mmc.c"
	.section	.text.sdmmc_mmc_send_ext_csd_data,"ax",@progbits
	.literal_position
	.literal .LC5, -1073405952
	.literal .LC6, 335871
	.literal .LC8, .LC7
	.literal .LC9, __func__$5873
	.literal .LC11, .LC10
	.literal .LC12, 7248
	.align	4
	.global	sdmmc_mmc_send_ext_csd_data
	.type	sdmmc_mmc_send_ext_csd_data, @function
sdmmc_mmc_send_ext_csd_data:
.LFB35:
	.loc 2 204 0
.LVL51:
	entry	sp, 80
.LCFI3:
.LVL52:
	.loc 2 205 0
	l32r	a8, .LC5
	l32r	a9, .LC6
	add.n	a8, a3, a8
	bgeu	a9, a8, .L18
.LVL53:
.LBB12:
.LBB13:
	l32r	a13, .LC8
	l32r	a12, .LC9
	l32r	a10, .LC11
	movi	a11, 0xcd
	call8	__assert_func
.LVL54:
.L18:
.LBE13:
.LBE12:
	.loc 2 206 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL55:
	s32i.n	a3, sp, 24
	l32r	a3, .LC12
.LVL56:
	movi.n	a8, 8
	.loc 2 214 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 2 206 0
	s32i.n	a8, sp, 0
	s32i.n	a4, sp, 28
	s32i.n	a4, sp, 32
	s32i.n	a3, sp, 36
	.loc 2 214 0
	call8	sdmmc_send_cmd
.LVL57:
	.loc 2 215 0
	mov.n	a2, a10
.LVL58:
	retw.n
.LFE35:
	.size	sdmmc_mmc_send_ext_csd_data, .-sdmmc_mmc_send_ext_csd_data
	.section	.rodata.str1.1
.LC15:
	.string	"\033[0;31mE (%d) %s: %s: could not allocate ext_csd\033[0m\n"
.LC17:
	.string	"\033[0;31mE (%d) %s: %s: send_ext_csd_data error 0x%x\033[0m\n"
.LC22:
	.string	"\033[0;33mW (%d) %s: %s: unknown CARD_TYPE 0x%x\033[0m\n"
	.section	.text.sdmmc_init_mmc_read_ext_csd,"ax",@progbits
	.literal_position
	.literal .LC13, __func__$5843
	.literal .LC14, .LC1
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC19, -13536
	.literal .LC20, 25999
	.literal .LC21, 26000
	.literal .LC23, .LC22
	.literal .LC24, 4194304
	.align	4
	.global	sdmmc_init_mmc_read_ext_csd
	.type	sdmmc_init_mmc_read_ext_csd, @function
sdmmc_init_mmc_read_ext_csd:
.LFB30:
	.loc 2 25 0
.LVL59:
	entry	sp, 48
.LCFI4:
.LVL60:
	.loc 2 29 0
	movi.n	a11, 8
	movi	a10, 0x200
	call8	heap_caps_malloc
.LVL61:
	mov.n	a3, a10
.LVL62:
	.loc 2 30 0
	bnez.n	a10, .L20
	.loc 2 31 0 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC14
	l32r	a15, .LC13
	l32r	a12, .LC16
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
	.loc 2 32 0 discriminator 2
	movi	a2, 0x101
.LVL65:
	retw.n
.LVL66:
.L20:
	.loc 2 38 0
	l32i	a5, a2, 92
	.loc 2 39 0
	movi	a4, 0x106
	.loc 2 38 0
	blti	a5, 4, .L22
	.loc 2 44 0
	mov.n	a11, a10
	movi	a12, 0x200
	mov.n	a10, a2
	call8	sdmmc_mmc_send_ext_csd_data
.LVL67:
	mov.n	a4, a10
.LVL68:
	.loc 2 45 0
	beqz.n	a10, .L23
	.loc 2 46 0 discriminator 2
	call8	esp_log_timestamp
.LVL69:
	l32r	a11, .LC14
	l32r	a15, .LC13
	l32r	a12, .LC18
	mov.n	a13, a10
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL70:
	.loc 2 47 0 discriminator 2
	j	.L22
.L23:
	.loc 2 51 0
	movi	a5, 0x82
	add.n	a5, a2, a5
	l16ui	a9, a5, 0
	movi	a8, -0x101
	.loc 2 49 0
	l8ui	a6, a3, 196
.LVL71:
	.loc 2 51 0
	and	a8, a9, a8
	s16i	a8, a5, 0
	.loc 2 52 0
	bbci	a6, 2, .L24
	.loc 2 53 0
	l32r	a6, .LC19
.LVL72:
	s16i	a6, a2, 128
	.loc 2 54 0
	l32i.n	a6, a2, 0
	bbci	a6, 4, .L26
	.loc 2 54 0 is_stmt 0 discriminator 1
	l32i.n	a6, a2, 8
	l32r	a8, .LC20
	bge	a8, a6, .L26
	.loc 2 56 0 is_stmt 1
	l32i.n	a6, a2, 24
	l32i.n	a10, a2, 4
	callx8	a6
.LVL73:
	.loc 2 55 0
	bnei	a10, 4, .L26
	.loc 2 58 0
	l16ui	a8, a5, 0
	movi	a6, 0x100
	or	a6, a8, a6
	s16i	a6, a5, 0
	j	.L26
.LVL74:
.L24:
	.loc 2 60 0
	bbci	a6, 1, .L28
	.loc 2 61 0
	l32r	a5, .LC19
	s16i	a5, a2, 128
	j	.L26
.L28:
	.loc 2 62 0
	bbci	a6, 0, .L29
	.loc 2 63 0
	l32r	a6, .LC21
.LVL75:
	s16i	a6, a2, 128
	j	.L26
.LVL76:
.L29:
	.loc 2 65 0 discriminator 4
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC14
	l32r	a15, .LC13
	l32r	a12, .LC23
	mov.n	a13, a10
	s32i.n	a6, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL78:
.L26:
	.loc 2 68 0
	l16ui	a5, a2, 128
	.loc 2 70 0
	l32i.n	a8, a2, 8
	.loc 2 68 0
	slli	a9, a5, 5
	sub	a9, a9, a5
	addx4	a9, a9, a5
	.loc 2 70 0
	min	a8, a5, a8
	.loc 2 68 0
	slli	a9, a9, 3
	.loc 2 70 0
	extui	a8, a8, 0, 16
	.loc 2 72 0
	l32i.n	a6, a2, 0
	.loc 2 68 0
	s32i	a9, a2, 112
	.loc 2 70 0
	s16i	a8, a2, 128
	.loc 2 72 0
	bbci	a6, 2, .L30
	.loc 2 73 0
	l32r	a6, .LC21
	movi	a5, 0xcb
	bgeu	a6, a8, .L31
	movi	a5, 0xca
.L31:
	.loc 2 73 0 is_stmt 0 discriminator 4
	add.n	a5, a3, a5
	l8ui	a5, a5, 0
	.loc 2 75 0 is_stmt 1 discriminator 4
	movi	a6, 0xc0
	.loc 2 73 0 discriminator 4
	srli	a5, a5, 4
	s8i	a5, a2, 124
	.loc 2 75 0 discriminator 4
	movi	a5, 0x82
	add.n	a5, a2, a5
	l16ui	a8, a5, 0
	j	.L39
.L30:
	.loc 2 76 0
	movi.n	a5, 2
	and	a5, a6, a5
	beqz.n	a5, .L33
	.loc 2 77 0
	l32r	a6, .LC21
	movi	a5, 0xcb
	bgeu	a6, a8, .L34
	movi	a5, 0xca
.L34:
	.loc 2 77 0 is_stmt 0 discriminator 4
	add.n	a5, a3, a5
	l8ui	a5, a5, 0
	.loc 2 79 0 is_stmt 1 discriminator 4
	movi	a6, -0xc1
	.loc 2 77 0 discriminator 4
	extui	a5, a5, 0, 4
	s8i	a5, a2, 124
	.loc 2 79 0 discriminator 4
	movi	a5, 0x82
	add.n	a5, a2, a5
	l16ui	a8, a5, 0
	and	a8, a8, a6
	movi	a6, 0x80
.L39:
	or	a6, a8, a6
	j	.L38
.L33:
	.loc 2 81 0
	s8i	a5, a2, 124
	.loc 2 82 0
	movi	a5, 0x82
	add.n	a5, a2, a5
	l16ui	a8, a5, 0
	movi	a6, -0xc1
	and	a6, a8, a6
.L38:
	s16i	a6, a5, 0
	l8ui	a9, a3, 213
	l8ui	a11, a3, 212
	l8ui	a8, a3, 214
	slli	a9, a9, 8
	slli	a8, a8, 16
	or	a10, a9, a11
	or	a9, a8, a10
	l8ui	a8, a3, 215
	.loc 2 90 0
	l32r	a5, .LC24
	slli	a8, a8, 24
	or	a8, a8, a9
.LVL79:
	bgeu	a5, a8, .L22
	.loc 2 91 0
	s32i	a8, a2, 96
.LVL80:
.L22:
	.loc 2 95 0
	mov.n	a10, a3
	call8	free
.LVL81:
	.loc 2 96 0
	mov.n	a2, a4
.LVL82:
	.loc 2 97 0
	retw.n
.LFE30:
	.size	sdmmc_init_mmc_read_ext_csd, .-sdmmc_init_mmc_read_ext_csd
	.section	.text.sdmmc_mmc_switch,"ax",@progbits
	.literal_position
	.literal .LC25, 50331648
	.literal .LC26, 15616
	.align	4
	.global	sdmmc_mmc_switch
	.type	sdmmc_mmc_switch, @function
sdmmc_mmc_switch:
.LFB36:
	.loc 2 218 0
.LVL83:
	entry	sp, 80
.LCFI5:
	.loc 2 219 0
	movi.n	a11, 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL84:
	movi.n	a8, 6
	s32i.n	a8, sp, 0
	l32r	a8, .LC25
	.loc 2 218 0
	extui	a3, a3, 0, 8
	extui	a5, a5, 0, 8
	extui	a4, a4, 0, 8
	.loc 2 219 0
	slli	a5, a5, 8
.LVL85:
	or	a3, a3, a8
.LVL86:
	or	a3, a5, a3
	slli	a4, a4, 16
.LVL87:
	or	a4, a3, a4
	l32r	a3, .LC26
	.loc 2 224 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 2 219 0
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 36
	.loc 2 224 0
	call8	sdmmc_send_cmd
.LVL88:
	.loc 2 225 0
	bnez.n	a10, .L41
	.loc 2 227 0
	l32i.n	a3, sp, 8
	.loc 2 228 0
	movi	a2, 0x108
.LVL89:
	.loc 2 227 0
	extui	a3, a3, 7, 1
	.loc 2 228 0
	movnez	a10, a2, a3
.LVL90:
.L41:
	.loc 2 232 0
	mov.n	a2, a10
	retw.n
.LFE36:
	.size	sdmmc_mmc_switch, .-sdmmc_mmc_switch
	.section	.rodata.str1.1
.LC29:
	.string	"\033[0;31mE (%d) %s: %s: can't change power class (%d bit), 0x%x\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: %s: can't change bus width (%d bit), 0x%x\033[0m\n"
	.section	.text.sdmmc_init_mmc_bus_width,"ax",@progbits
	.literal_position
	.literal .LC27, __func__$5850
	.literal .LC28, .LC1
	.literal .LC30, .LC29
	.literal .LC31, 12582912
	.literal .LC32, 8388608
	.literal .LC33, 16777216
	.literal .LC35, .LC34
	.align	4
	.global	sdmmc_init_mmc_bus_width
	.type	sdmmc_init_mmc_bus_width, @function
sdmmc_init_mmc_bus_width:
.LFB31:
	.loc 2 100 0
.LVL91:
	entry	sp, 48
.LCFI6:
	.loc 2 102 0
	l8ui	a13, a2, 124
	beqz.n	a13, .L45
	.loc 2 103 0
	movi	a12, 0xbb
	movi.n	a11, 1
	mov.n	a10, a2
	call8	sdmmc_mmc_switch
.LVL92:
	mov.n	a3, a10
.LVL93:
	.loc 2 105 0
	beqz.n	a10, .L45
	.loc 2 106 0 discriminator 2
	call8	esp_log_timestamp
.LVL94:
	s32i.n	a3, sp, 4
	l32r	a11, .LC28
	l8ui	a2, a2, 124
.LVL95:
	l32r	a15, .LC27
	l32r	a12, .LC30
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL96:
	.loc 2 108 0 discriminator 2
	mov.n	a10, a3
	j	.L46
.LVL97:
.L45:
	.loc 2 112 0
	l32i	a3, a2, 128
	extui	a4, a3, 22, 2
	.loc 2 138 0
	mov.n	a10, a4
	.loc 2 112 0
	beqz.n	a4, .L46
.LVL98:
.LBB14:
	.loc 2 115 0
	l32r	a8, .LC31
	l32r	a4, .LC32
	and	a9, a3, a8
	bne	a9, a4, .L47
	.loc 2 116 0
	l32r	a9, .LC33
	.loc 2 121 0
	movi.n	a4, 4
	.loc 2 116 0
	and	a8, a3, a9
	.loc 2 121 0
	movi.n	a13, 5
	movi.n	a3, 1
	j	.L61
.L47:
	.loc 2 114 0
	movi.n	a4, 1
	.loc 2 113 0
	movi.n	a13, 0
	.loc 2 122 0
	bne	a9, a8, .L48
	.loc 2 123 0
	l32r	a8, .LC33
	.loc 2 128 0
	movi.n	a4, 8
	.loc 2 123 0
	and	a8, a3, a8
	.loc 2 128 0
	movi.n	a13, 6
	movi.n	a3, 2
.L61:
	moveqz	a13, a3, a8
.L48:
.LVL99:
	.loc 2 130 0
	mov.n	a10, a2
	movi	a12, 0xb7
	movi.n	a11, 1
	call8	sdmmc_mmc_switch
.LVL100:
	mov.n	a2, a10
.LVL101:
.LBE14:
	.loc 2 138 0
	movi.n	a10, 0
.LBB15:
	.loc 2 132 0
	beq	a2, a10, .L46
	.loc 2 133 0 discriminator 2
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC28
	l32r	a15, .LC27
	l32r	a12, .LC35
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	movi.n	a10, 1
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	call8	esp_log_write
.LVL103:
	.loc 2 135 0 discriminator 2
	mov.n	a10, a2
.LVL104:
.L46:
.LBE15:
	.loc 2 139 0
	mov.n	a2, a10
	retw.n
.LFE31:
	.size	sdmmc_init_mmc_bus_width, .-sdmmc_init_mmc_bus_width
	.section	.rodata.str1.1
.LC39:
	.string	"\033[0;31mE (%d) %s: %s: mmc_switch EXT_CSD_HS_TIMING_HS error 0x%x\033[0m\n"
	.section	.text.sdmmc_mmc_enable_hs_mode,"ax",@progbits
	.literal_position
	.literal .LC36, 26000
	.literal .LC37, __func__$5857
	.literal .LC38, .LC1
	.literal .LC40, .LC39
	.align	4
	.global	sdmmc_mmc_enable_hs_mode
	.type	sdmmc_mmc_enable_hs_mode, @function
sdmmc_mmc_enable_hs_mode:
.LFB32:
	.loc 2 142 0
.LVL105:
	entry	sp, 48
.LCFI7:
	.loc 2 144 0
	l16ui	a3, a2, 128
	l32r	a8, .LC36
	.loc 2 142 0
	mov.n	a10, a2
	.loc 2 154 0
	movi.n	a2, 0
.LVL106:
	.loc 2 144 0
	bgeu	a8, a3, .L63
	.loc 2 146 0
	movi.n	a13, 1
	movi	a12, 0xb9
	mov.n	a11, a13
	call8	sdmmc_mmc_switch
.LVL107:
	mov.n	a3, a10
.LVL108:
	.loc 2 148 0
	beq	a10, a2, .L63
	.loc 2 149 0 discriminator 2
	call8	esp_log_timestamp
.LVL109:
	l32r	a11, .LC38
	l32r	a15, .LC37
	l32r	a12, .LC40
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL110:
	.loc 2 151 0 discriminator 2
	mov.n	a2, a3
.LVL111:
.L63:
	.loc 2 155 0
	retw.n
.LFE32:
	.size	sdmmc_mmc_enable_hs_mode, .-sdmmc_mmc_enable_hs_mode
	.section	.rodata.__func__$5873,"a",@progbits
	.type	__func__$5873, @object
	.size	__func__$5873, 28
__func__$5873:
	.string	"sdmmc_mmc_send_ext_csd_data"
	.section	.rodata.__func__$5857,"a",@progbits
	.type	__func__$5857, @object
	.size	__func__$5857, 25
__func__$5857:
	.string	"sdmmc_mmc_enable_hs_mode"
	.section	.rodata.__func__$5850,"a",@progbits
	.type	__func__$5850, @object
	.size	__func__$5850, 25
__func__$5850:
	.string	"sdmmc_init_mmc_bus_width"
	.section	.rodata.__func__$5843,"a",@progbits
	.type	__func__$5843, @object
	.size	__func__$5843, 28
__func__$5843:
	.string	"sdmmc_init_mmc_read_ext_csd"
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI7-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x100f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xc
	.4byte	.LASF117
	.4byte	.LASF118
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x31
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0x115
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.byte	0x1f
	.4byte	0x147
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x18
	.4byte	0xee
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x76
	.4byte	0xf9
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x1c6
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1e
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1f
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x8
	.byte	0x20
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x8
	.byte	0x21
	.4byte	0x62
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x8
	.byte	0x22
	.4byte	0x62
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x8
	.byte	0x23
	.4byte	0x62
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x8
	.byte	0x24
	.4byte	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x25
	.4byte	0x169
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x222
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2b
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2c
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2d
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x8
	.byte	0x2e
	.4byte	0x62
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2f
	.4byte	0x62
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x8
	.byte	0x30
	.4byte	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x31
	.4byte	0x1d1
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x24e
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x37
	.4byte	0x62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x38
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x39
	.4byte	0x22d
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x26e
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0x3f
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x40
	.4byte	0x259
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x45
	.4byte	0x284
	.uleb128 0x8
	.4byte	0xf9
	.4byte	0x294
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x309
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0x52
	.4byte	0xf9
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0x8
	.byte	0x53
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x8
	.byte	0x54
	.4byte	0x279
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0x55
	.4byte	0xad
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x8
	.byte	0x56
	.4byte	0x94
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x8
	.byte	0x57
	.4byte	0x94
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x8
	.byte	0x58
	.4byte	0x62
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x74
	.4byte	0x147
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0x75
	.4byte	0x62
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x76
	.4byte	0x294
	.uleb128 0xd
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x3c5
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x8
	.byte	0x7f
	.4byte	0xf9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x85
	.4byte	0x62
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x86
	.4byte	0x62
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8c
	.4byte	0x3c5
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8d
	.4byte	0x3d1
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8e
	.4byte	0x3eb
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8f
	.4byte	0x400
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x90
	.4byte	0x41a
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x8
	.byte	0x91
	.4byte	0x434
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x92
	.4byte	0x454
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.byte	0x93
	.4byte	0x3d1
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x94
	.4byte	0x469
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0x95
	.4byte	0x483
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0x96
	.4byte	0x62
	.byte	0x34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0x10
	.4byte	0x147
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x3eb
	.uleb128 0x12
	.4byte	0x62
	.uleb128 0x12
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0x11
	.4byte	0x94
	.4byte	0x400
	.uleb128 0x12
	.4byte	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x41a
	.uleb128 0x12
	.4byte	0x62
	.uleb128 0x12
	.4byte	0x152
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x406
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x434
	.uleb128 0x12
	.4byte	0x62
	.uleb128 0x12
	.4byte	0xf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x420
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x44e
	.uleb128 0x12
	.4byte	0x62
	.uleb128 0x12
	.4byte	0x44e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x309
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43a
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x469
	.uleb128 0x12
	.4byte	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45a
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x483
	.uleb128 0x12
	.4byte	0x62
	.uleb128 0x12
	.4byte	0x159
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46f
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x97
	.4byte	0x314
	.uleb128 0xd
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x566
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9d
	.4byte	0x489
	.byte	0
	.uleb128 0xf
	.string	"ocr"
	.byte	0x8
	.byte	0x9e
	.4byte	0xf9
	.byte	0x38
	.uleb128 0xf
	.string	"cid"
	.byte	0x8
	.byte	0x9f
	.4byte	0x222
	.byte	0x3c
	.uleb128 0xf
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x1c6
	.byte	0x58
	.uleb128 0xf
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x24e
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa2
	.4byte	0x26e
	.byte	0x7c
	.uleb128 0xf
	.string	"rca"
	.byte	0x8
	.byte	0xa3
	.4byte	0xe3
	.byte	0x7e
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa4
	.4byte	0xe3
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa5
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa6
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa7
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x8
	.byte	0xa8
	.4byte	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa9
	.4byte	0xf9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x8
	.byte	0xaa
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x8
	.byte	0xab
	.4byte	0xf9
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x8
	.byte	0xac
	.4byte	0x494
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0xe
	.byte	0x8e
	.4byte	0x152
	.byte	0x3
	.4byte	0x58b
	.uleb128 0x15
	.string	"p"
	.byte	0xe
	.byte	0x8e
	.4byte	0x10f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x2
	.byte	0xcb
	.4byte	0x147
	.byte	0x1
	.4byte	0x5d5
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x2
	.byte	0xcb
	.4byte	0x5d5
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x2
	.byte	0xcb
	.4byte	0xad
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x2
	.byte	0xcb
	.4byte	0x94
	.uleb128 0x18
	.4byte	.LASF88
	.4byte	0x5eb
	.4byte	.LASF120
	.uleb128 0x19
	.string	"cmd"
	.byte	0x2
	.byte	0xce
	.4byte	0x309
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x566
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x5eb
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0x5db
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x17a
	.4byte	0xf9
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x687
	.uleb128 0x1b
	.string	"src"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x687
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17a
	.4byte	0x62
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x17c
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x17d
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x17e
	.4byte	0x94
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x17f
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x180
	.4byte	0xf9
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x1f
	.4byte	.LASF97
	.byte	0x2
	.byte	0x9d
	.4byte	0x147
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x954
	.uleb128 0x20
	.4byte	.LASF32
	.byte	0x2
	.byte	0x9d
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF95
	.byte	0x2
	.byte	0x9d
	.4byte	0x687
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x2
	.byte	0x9d
	.4byte	0x954
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0x5f0
	.4byte	0x6ee
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL14
	.4byte	0x5f0
	.4byte	0x70d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0x5f0
	.4byte	0x72c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL16
	.4byte	0x5f0
	.4byte	0x74b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL17
	.4byte	0x5f0
	.4byte	0x76a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x5f0
	.4byte	0x789
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL19
	.4byte	0x5f0
	.4byte	0x7a8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x5f0
	.4byte	0x7c7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0x5f0
	.4byte	0x7e6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0x5f0
	.4byte	0x804
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL23
	.4byte	0x5f0
	.4byte	0x822
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x5f0
	.4byte	0x841
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0x5f0
	.4byte	0x860
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0x5f0
	.4byte	0x87f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL29
	.4byte	0x5f0
	.4byte	0x89e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0x5f0
	.4byte	0x8bd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL31
	.4byte	0x5f0
	.4byte	0x8dc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0x5f0
	.4byte	0x8fb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0x5f0
	.4byte	0x91a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0x5f0
	.4byte	0x939
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0x5f0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x222
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x2
	.byte	0xb4
	.4byte	0x147
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6d
	.uleb128 0x20
	.4byte	.LASF53
	.byte	0x2
	.byte	0xb4
	.4byte	0x687
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x2
	.byte	0xb4
	.4byte	0xa6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x2
	.byte	0xc1
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LVL38
	.4byte	0x5f0
	.4byte	0x9bd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x5f0
	.4byte	0x9dc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x5f0
	.4byte	0x9fb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0x5f0
	.4byte	0xa1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0x5f0
	.4byte	0xa39
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0xfc7
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0xfd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0x27
	.4byte	0x58b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb59
	.uleb128 0x28
	.4byte	0x59b
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	0x5a6
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	0x5b1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	0x5bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5873
	.uleb128 0x2a
	.4byte	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xb21
	.uleb128 0x28
	.4byte	0x59b
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	0x5a6
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0x5b1
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2d
	.4byte	0x5c9
	.uleb128 0x2a
	.4byte	0x5bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5873
	.uleb128 0x24
	.4byte	.LVL54
	.4byte	0xfdd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5873
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0xfe8
	.4byte	0xb41
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0xff1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF101
	.byte	0x2
	.byte	0x18
	.4byte	0x147
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x2
	.byte	0x18
	.4byte	0x5d5
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x2
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST15
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.byte	0x1b
	.4byte	0x147
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LASF77
	.byte	0x2
	.byte	0x1d
	.4byte	0xcf7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF88
	.4byte	0xcfd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x2
	.byte	0x23
	.4byte	0xf9
	.4byte	.LLST17
	.uleb128 0x31
	.string	"out"
	.byte	0x2
	.byte	0x5e
	.4byte	.L22
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0xffc
	.4byte	0xbef
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0xfc7
	.uleb128 0x22
	.4byte	.LVL64
	.4byte	0xfd2
	.4byte	0xc2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.byte	0
	.uleb128 0x22
	.4byte	.LVL67
	.4byte	0x58b
	.4byte	0xc50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x26
	.4byte	.LVL69
	.4byte	0xfc7
	.uleb128 0x22
	.4byte	.LVL70
	.4byte	0xfd2
	.4byte	0xc97
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL77
	.4byte	0xfc7
	.uleb128 0x22
	.4byte	.LVL78
	.4byte	0xfd2
	.4byte	0xce6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5843
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0x1007
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x7
	.4byte	0x5db
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x2
	.byte	0xd9
	.4byte	0x147
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdab
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x2
	.byte	0xd9
	.4byte	0x5d5
	.4byte	.LLST18
	.uleb128 0x33
	.string	"set"
	.byte	0x2
	.byte	0xd9
	.4byte	0xd8
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x2
	.byte	0xd9
	.4byte	0xd8
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x2
	.byte	0xd9
	.4byte	0xd8
	.4byte	.LLST21
	.uleb128 0x34
	.string	"cmd"
	.byte	0x2
	.byte	0xdb
	.4byte	0x309
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.string	"err"
	.byte	0x2
	.byte	0xe0
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL84
	.4byte	0xfe8
	.4byte	0xd93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL88
	.4byte	0xff1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF107
	.byte	0x2
	.byte	0x63
	.4byte	0x147
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeec
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x2
	.byte	0x63
	.4byte	0x5d5
	.4byte	.LLST22
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.byte	0x65
	.4byte	0x147
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	.LASF88
	.4byte	0xefc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0
	.4byte	0xe82
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x2
	.byte	0x71
	.4byte	0x62
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	.LASF47
	.byte	0x2
	.byte	0x72
	.4byte	0x62
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0xd02
	.4byte	0xe37
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xb7
	.byte	0
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0xfc7
	.uleb128 0x24
	.4byte	.LVL103
	.4byte	0xfd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL92
	.4byte	0xd02
	.4byte	0xea1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xbb
	.byte	0
	.uleb128 0x26
	.4byte	.LVL94
	.4byte	0xfc7
	.uleb128 0x24
	.4byte	.LVL96
	.4byte	0xfd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5850
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xefc
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xeec
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x2
	.byte	0x8d
	.4byte	0x147
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb0
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x2
	.byte	0x8d
	.4byte	0x5d5
	.4byte	.LLST26
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.byte	0x8f
	.4byte	0x147
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	.LASF88
	.4byte	0xfb0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5857
	.uleb128 0x22
	.4byte	.LVL107
	.4byte	0xd02
	.4byte	0xf6c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xb9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0xfc7
	.uleb128 0x24
	.4byte	.LVL110
	.4byte	0xfd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5857
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xeec
	.uleb128 0x34
	.string	"TAG"
	.byte	0x2
	.byte	0x15
	.4byte	0x164
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x36
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x9
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x9
	.byte	0x6b
	.uleb128 0x36
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF122
	.4byte	.LASF122
	.uleb128 0x36
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xb
	.byte	0x30
	.uleb128 0x36
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xc
	.byte	0x37
	.uleb128 0x36
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xd
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x17
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x79
	.sleb128 -31
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x79
	.sleb128 -31
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE27
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE34
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL51
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL57-1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"capacity"
.LASF36:
	.string	"card_command_class"
.LASF12:
	.string	"size_t"
.LASF3:
	.string	"__uint8_t"
.LASF120:
	.string	"sdmmc_mmc_send_ext_csd_data"
.LASF42:
	.string	"revision"
.LASF31:
	.string	"csd_ver"
.LASF64:
	.string	"init"
.LASF96:
	.string	"out_cid"
.LASF67:
	.string	"set_bus_ddr_mode"
.LASF50:
	.string	"sdmmc_ext_csd_t"
.LASF10:
	.string	"long long unsigned int"
.LASF111:
	.string	"esp_log_write"
.LASF98:
	.string	"sdmmc_mmc_decode_csd"
.LASF115:
	.string	"free"
.LASF121:
	.string	"MMC_RSP_BITS"
.LASF53:
	.string	"response"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"set_bus_width"
.LASF107:
	.string	"sdmmc_init_mmc_bus_width"
.LASF13:
	.string	"long int"
.LASF38:
	.string	"sdmmc_csd_t"
.LASF69:
	.string	"do_transaction"
.LASF18:
	.string	"uint16_t"
.LASF86:
	.string	"card"
.LASF119:
	.string	"esp_ptr_dma_capable"
.LASF92:
	.string	"shift"
.LASF114:
	.string	"heap_caps_malloc"
.LASF39:
	.string	"mfg_id"
.LASF7:
	.string	"__uint32_t"
.LASF90:
	.string	"mask"
.LASF11:
	.string	"__intptr_t"
.LASF84:
	.string	"reserved"
.LASF113:
	.string	"sdmmc_send_cmd"
.LASF118:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF45:
	.string	"sdmmc_cid_t"
.LASF106:
	.string	"value"
.LASF102:
	.string	"card_type"
.LASF76:
	.string	"host"
.LASF95:
	.string	"resp"
.LASF8:
	.string	"unsigned int"
.LASF68:
	.string	"set_card_clk"
.LASF51:
	.string	"sdmmc_response_t"
.LASF81:
	.string	"num_io_functions"
.LASF116:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"name"
.LASF54:
	.string	"data"
.LASF71:
	.string	"io_int_enable"
.LASF5:
	.string	"short unsigned int"
.LASF44:
	.string	"date"
.LASF99:
	.string	"out_csd"
.LASF87:
	.string	"out_data"
.LASF108:
	.string	"csd_bus_width_value"
.LASF61:
	.string	"slot"
.LASF21:
	.string	"intptr_t"
.LASF73:
	.string	"command_timeout_ms"
.LASF101:
	.string	"sdmmc_init_mmc_read_ext_csd"
.LASF93:
	.string	"right"
.LASF35:
	.string	"read_block_len"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF78:
	.string	"is_mem"
.LASF56:
	.string	"blklen"
.LASF48:
	.string	"sdmmc_scr_t"
.LASF14:
	.string	"sizetype"
.LASF55:
	.string	"datalen"
.LASF40:
	.string	"oem_id"
.LASF30:
	.string	"TickType_t"
.LASF37:
	.string	"tr_speed"
.LASF109:
	.string	"sdmmc_mmc_enable_hs_mode"
.LASF32:
	.string	"mmc_ver"
.LASF79:
	.string	"is_sdio"
.LASF75:
	.string	"sdmmc_host_t"
.LASF74:
	.string	"float"
.LASF58:
	.string	"error"
.LASF77:
	.string	"ext_csd"
.LASF59:
	.string	"timeout_ms"
.LASF34:
	.string	"sector_size"
.LASF80:
	.string	"is_mmc"
.LASF117:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_mmc.c"
.LASF29:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF122:
	.string	"memset"
.LASF110:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF88:
	.string	"__func__"
.LASF103:
	.string	"sectors"
.LASF70:
	.string	"deinit"
.LASF85:
	.string	"sdmmc_card_t"
.LASF104:
	.string	"sdmmc_mmc_switch"
.LASF100:
	.string	"read_bl_size"
.LASF15:
	.string	"long unsigned int"
.LASF16:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF4:
	.string	"__uint16_t"
.LASF105:
	.string	"index"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF97:
	.string	"sdmmc_mmc_decode_cid"
.LASF6:
	.string	"__int32_t"
.LASF91:
	.string	"word"
.LASF60:
	.string	"sdmmc_command_t"
.LASF82:
	.string	"log_bus_width"
.LASF20:
	.string	"uint32_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"io_voltage"
.LASF49:
	.string	"power_class"
.LASF28:
	.string	"esp_err_t"
.LASF17:
	.string	"uint8_t"
.LASF57:
	.string	"flags"
.LASF43:
	.string	"serial"
.LASF72:
	.string	"io_int_wait"
.LASF112:
	.string	"__assert_func"
.LASF47:
	.string	"bus_width"
.LASF89:
	.string	"start"
.LASF62:
	.string	"max_freq_khz"
.LASF66:
	.string	"get_bus_width"
.LASF46:
	.string	"sd_spec"
.LASF94:
	.string	"left"
.LASF52:
	.string	"opcode"
.LASF83:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
