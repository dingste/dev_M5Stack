	.file	"sdmmc_sd.c"
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"sdmmc_sd"
.LC6:
	.string	"\033[0;31mE (%d) %s: %s: send_if_cond (1) returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_sd_if_cond,"ax",@progbits
	.literal_position
	.literal .LC1, 1090486272
	.literal .LC2, 16744448
	.literal .LC3, __func__$5618
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	sdmmc_init_sd_if_cond
	.type	sdmmc_init_sd_if_cond, @function
sdmmc_init_sd_if_cond:
.LFB30:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_sd.c"
	.loc 2 23 0
.LVL11:
	entry	sp, 48
.LCFI1:
.LVL12:
	.loc 2 28 0
	l32r	a4, .LC2
	mov.n	a10, a2
	mov.n	a11, a4
	call8	sdmmc_send_cmd_send_if_cond
.LVL13:
	mov.n	a3, a10
.LVL14:
	.loc 2 29 0
	beqz.n	a10, .L13
	.loc 2 32 0
	movi	a8, 0x107
	beq	a10, a8, .L10
.LVL15:
	.loc 2 34 0
	l32i.n	a8, a2, 0
	bbci	a8, 3, .L16
	movi	a8, -0x106
	add.n	a8, a10, a8
	beqz.n	a8, .L10
.L16:
	.loc 2 37 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC5
	l32r	a15, .LC3
	l32r	a12, .LC7
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 2 38 0 discriminator 2
	mov.n	a2, a3
.LVL18:
	retw.n
.LVL19:
.L13:
	.loc 2 31 0
	l32r	a4, .LC1
.L10:
.LVL20:
	.loc 2 40 0
	s32i.n	a4, a2, 56
	.loc 2 41 0
	movi.n	a2, 0
.LVL21:
	.loc 2 42 0
	retw.n
.LFE30:
	.size	sdmmc_init_sd_if_cond, .-sdmmc_init_sd_if_cond
	.section	.rodata.str1.1
.LC11:
	.string	"\033[0;31mE (%d) %s: %s: set_blocklen returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_sd_blocklen,"ax",@progbits
	.literal_position
	.literal .LC9, __func__$5623
	.literal .LC10, .LC4
	.literal .LC12, .LC11
	.align	4
	.global	sdmmc_init_sd_blocklen
	.type	sdmmc_init_sd_blocklen, @function
sdmmc_init_sd_blocklen:
.LFB31:
	.loc 2 45 0
.LVL22:
	entry	sp, 48
.LCFI2:
	.loc 2 50 0
	l32i.n	a3, a2, 56
	.loc 2 45 0
	mov.n	a10, a2
	.loc 2 57 0
	movi.n	a2, 0
.LVL23:
	.loc 2 50 0
	bbsi	a3, 30, .L21
.LBB11:
	.loc 2 51 0
	addi	a11, a10, 88
	call8	sdmmc_send_cmd_set_blocklen
.LVL24:
	mov.n	a3, a10
.LVL25:
	.loc 2 52 0
	beq	a10, a2, .L21
	.loc 2 53 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC10
	l32r	a15, .LC9
	l32r	a12, .LC12
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 2 54 0 discriminator 2
	mov.n	a2, a3
.LVL28:
.L21:
.LBE11:
	.loc 2 58 0
	retw.n
.LFE31:
	.size	sdmmc_init_sd_blocklen, .-sdmmc_init_sd_blocklen
	.section	.rodata.str1.1
.LC15:
	.string	"\033[0;31mE (%d) %s: %s: send_scr (1) returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_sd_scr,"ax",@progbits
	.literal_position
	.literal .LC13, __func__$5628
	.literal .LC14, .LC4
	.literal .LC16, .LC15
	.align	4
	.global	sdmmc_init_sd_scr
	.type	sdmmc_init_sd_scr, @function
sdmmc_init_sd_scr:
.LFB32:
	.loc 2 61 0
.LVL29:
	entry	sp, 48
.LCFI3:
	.loc 2 68 0
	addi	a11, a2, 116
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_scr
.LVL30:
	mov.n	a3, a10
.LVL31:
	.loc 2 69 0
	beqz.n	a10, .L26
	.loc 2 70 0 discriminator 2
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC14
	l32r	a15, .LC13
	l32r	a12, .LC16
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	j	.L35
.L26:
	.loc 2 74 0
	l32i	a8, a2, 120
	bbci	a8, 2, .L28
	.loc 2 75 0
	l32i.n	a8, a2, 0
	bbci	a8, 1, .L28
	.loc 2 76 0
	movi	a8, 0x82
	add.n	a2, a2, a8
.LVL34:
	l16ui	a9, a2, 0
	movi	a8, -0xc1
	and	a9, a9, a8
	movi	a8, 0x80
	or	a8, a9, a8
	s16i	a8, a2, 0
.LVL35:
.L35:
	.loc 2 80 0
	mov.n	a2, a3
	.loc 2 76 0
	retw.n
.LVL36:
.L28:
	.loc 2 78 0
	movi	a3, 0x82
.LVL37:
	add.n	a2, a2, a3
.LVL38:
	l16ui	a8, a2, 0
	movi	a3, -0xc1
	and	a3, a8, a3
	s16i	a3, a2, 0
	.loc 2 80 0
	movi.n	a2, 0
.LVL39:
	.loc 2 81 0
	retw.n
.LFE32:
	.size	sdmmc_init_sd_scr, .-sdmmc_init_sd_scr
	.section	.rodata.str1.1
.LC20:
	.string	"\033[0;31mE (%d) %s: set_bus_width failed (0x%x)\033[0m\n"
	.section	.text.sdmmc_init_sd_bus_width,"ax",@progbits
	.literal_position
	.literal .LC17, 12582912
	.literal .LC18, 8388608
	.literal .LC19, .LC4
	.literal .LC21, .LC20
	.align	4
	.global	sdmmc_init_sd_bus_width
	.type	sdmmc_init_sd_bus_width, @function
sdmmc_init_sd_bus_width:
.LFB33:
	.loc 2 84 0
.LVL40:
	entry	sp, 32
.LCFI4:
.LVL41:
	.loc 2 86 0
	l32i	a9, a2, 128
	l32r	a10, .LC17
	.loc 2 87 0
	movi.n	a11, 4
	.loc 2 86 0
	and	a8, a9, a10
	l32r	a9, .LC18
	beq	a8, a9, .L37
	.loc 2 89 0
	sub	a8, a8, a10
	movi.n	a11, 8
	movi.n	a9, 1
	movnez	a11, a9, a8
.L37:
.LVL42:
	.loc 2 91 0
	mov.n	a10, a2
	call8	sdmmc_send_cmd_set_bus_width
.LVL43:
	mov.n	a2, a10
.LVL44:
	.loc 2 92 0
	beqz.n	a10, .L38
	.loc 2 93 0 discriminator 2
	call8	esp_log_timestamp
.LVL45:
	l32r	a11, .LC19
	l32r	a12, .LC21
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
.L38:
	.loc 2 97 0
	retw.n
.LFE33:
	.size	sdmmc_init_sd_bus_width, .-sdmmc_init_sd_bus_width
	.section	.text.sdmmc_init_sd_wait_data_ready,"ax",@progbits
	.align	4
	.global	sdmmc_init_sd_wait_data_ready
	.type	sdmmc_init_sd_wait_data_ready, @function
sdmmc_init_sd_wait_data_ready:
.LFB34:
	.loc 2 100 0
.LVL47:
	entry	sp, 48
.LCFI5:
	.loc 2 102 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
.LVL48:
	.loc 2 104 0
	movi.n	a3, 8
	j	.L45
.LVL49:
.L47:
.LBB12:
	.loc 2 106 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_status
.LVL50:
	.loc 2 107 0
	bnez.n	a10, .L48
.LVL51:
.L45:
.LBE12:
	.loc 2 104 0
	l32i.n	a10, a2, 0
	and	a10, a3, a10
	bnez.n	a10, .L49
	.loc 2 104 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	bbci	a8, 8, .L47
.L48:
.LBB13:
	.loc 2 106 0 is_stmt 1
	mov.n	a2, a10
.LVL52:
	retw.n
.LVL53:
.L49:
.LBE13:
	.loc 2 114 0
	movi.n	a2, 0
.LVL54:
	.loc 2 115 0
	retw.n
.LFE34:
	.size	sdmmc_init_sd_wait_data_ready, .-sdmmc_init_sd_wait_data_ready
	.section	.rodata.str1.1
.LC27:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_send_cmd returned 0x%x\033[0m\n"
	.section	.text.sdmmc_send_cmd_switch_func,"ax",@progbits
	.literal_position
	.literal .LC22, -2147483648
	.literal .LC23, 16777215
	.literal .LC24, 7248
	.literal .LC25, __func__$5655
	.literal .LC26, .LC4
	.literal .LC28, .LC27
	.align	4
	.global	sdmmc_send_cmd_switch_func
	.type	sdmmc_send_cmd_switch_func, @function
sdmmc_send_cmd_switch_func:
.LFB35:
	.loc 2 120 0
.LVL55:
	entry	sp, 112
.LCFI6:
	.loc 2 121 0
	l32i	a7, a2, 116
	.loc 2 123 0
	movi	a10, 0x106
	.loc 2 121 0
	blti	a7, 1, .L51
	.loc 2 121 0 is_stmt 0 discriminator 1
	l32i	a7, a2, 108
	bbci	a7, 10, .L51
.LVL56:
.LBB16:
.LBB17:
	.loc 2 126 0 is_stmt 1
	addi.n	a8, a4, -1
	.loc 2 132 0
	movi.n	a9, 1
	bgeui	a3, 2, .L53
	movi.n	a9, 0
.L53:
	movi.n	a10, 0xf
	movi.n	a7, 1
	bltu	a10, a5, .L54
	movi.n	a7, 0
.L54:
	or	a9, a9, a7
	extui	a9, a9, 0, 8
	bnez.n	a9, .L60
	bgeui	a8, 6, .L60
	.loc 2 136 0
	slli	a8, a8, 2
.LVL57:
	.loc 2 139 0
	movi.n	a7, 0xf
	ssl	a8
	sll	a7, a7
	movi.n	a10, -1
	xor	a7, a10, a7
	l32r	a10, .LC23
	ssl	a8
	sll	a8, a5
.LVL58:
	.loc 2 141 0
	mov.n	a11, a9
	.loc 2 139 0
	and	a7, a7, a10
	.loc 2 141 0
	movi.n	a12, 0x30
	addi	a10, sp, 16
	.loc 2 139 0
	or	a7, a7, a8
.LVL59:
	.loc 2 141 0
	s32i	a9, sp, 64
	call8	memset
.LVL60:
	movi.n	a8, 6
	s32i.n	a8, sp, 16
	.loc 2 147 0
	l32i	a9, sp, 64
	l32r	a8, .LC22
	.loc 2 150 0
	addi	a11, sp, 16
	.loc 2 147 0
	movnez	a9, a8, a3
	.loc 2 141 0
	or	a7, a7, a9
.LVL61:
	l32r	a3, .LC24
.LVL62:
	s32i.n	a7, sp, 20
	.loc 2 150 0
	mov.n	a10, a2
	.loc 2 141 0
	movi.n	a7, 0x40
	s32i.n	a3, sp, 52
	s32i.n	a6, sp, 40
	s32i.n	a7, sp, 44
	s32i.n	a7, sp, 48
	.loc 2 150 0
	call8	sdmmc_send_cmd
.LVL63:
	mov.n	a3, a10
.LVL64:
	.loc 2 151 0
	beqz.n	a10, .L57
	.loc 2 152 0
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC26
	l32r	a15, .LC25
	l32r	a12, .LC28
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL66:
	mov.n	a10, a3
	j	.L51
.L57:
	.loc 2 155 0
	mov.n	a11, a7
	mov.n	a10, a6
	call8	sdmmc_flip_byte_order
.LVL67:
	.loc 2 156 0
	movi.n	a12, 8
	movi	a11, 0x170
	mov.n	a10, a6
	call8	MMC_RSP_BITS
.LVL68:
	mov.n	a2, a10
.LVL69:
	.loc 2 170 0
	mov.n	a10, a3
	.loc 2 157 0
	beqz.n	a2, .L51
	.loc 2 168 0
	movi	a10, 0x108
	.loc 2 159 0
	bnei	a2, 1, .L51
	.loc 2 160 0
	addi	a11, a4, 16
	movi.n	a12, 0x10
	slli	a11, a11, 4
	mov.n	a10, a6
	ssl	a5
	sll	a5, a2
.LVL70:
	call8	MMC_RSP_BITS
.LVL71:
	and	a10, a5, a10
	.loc 2 163 0
	movi	a2, 0x103
.LVL72:
	moveqz	a2, a3, a10
	mov.n	a10, a2
	j	.L51
.LVL73:
.L60:
	.loc 2 133 0
	movi	a10, 0x102
.LVL74:
.L51:
.LBE17:
.LBE16:
	.loc 2 171 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	sdmmc_send_cmd_switch_func, .-sdmmc_send_cmd_switch_func
	.section	.text.sdmmc_enable_hs_mode,"ax",@progbits
	.align	4
	.global	sdmmc_enable_hs_mode
	.type	sdmmc_enable_hs_mode, @function
sdmmc_enable_hs_mode:
.LFB36:
	.loc 2 174 0
.LVL75:
	entry	sp, 32
.LCFI7:
	.loc 2 179 0
	l32i	a4, a2, 116
	.loc 2 181 0
	movi	a3, 0x106
	.loc 2 179 0
	blti	a4, 1, .L69
	.loc 2 179 0 is_stmt 0 discriminator 1
	l32i	a4, a2, 108
	bbci	a4, 10, .L69
.LVL76:
.LBB20:
.LBB21:
	.loc 2 183 0 is_stmt 1
	movi.n	a11, 8
	movi.n	a10, 0x40
	call8	heap_caps_malloc
.LVL77:
	mov.n	a4, a10
.LVL78:
	.loc 2 186 0
	movi	a3, 0x101
	.loc 2 185 0
	beqz.n	a10, .L69
	.loc 2 189 0
	movi.n	a13, 0
	mov.n	a14, a10
	movi.n	a12, 1
	mov.n	a11, a13
	mov.n	a10, a2
	call8	sdmmc_send_cmd_switch_func
.LVL79:
	mov.n	a3, a10
.LVL80:
	.loc 2 190 0
	bnez.n	a10, .L70
	.loc 2 194 0
	movi.n	a12, 0x10
	movi	a11, 0x190
	mov.n	a10, a4
	call8	MMC_RSP_BITS
.LVL81:
	.loc 2 196 0
	movi	a3, 0x106
.LVL82:
	.loc 2 195 0
	bbci	a10, 1, .L70
	.loc 2 199 0
	movi.n	a13, 1
	mov.n	a14, a4
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
.LVL83:
	call8	sdmmc_send_cmd_switch_func
.LVL84:
	mov.n	a3, a10
.LVL85:
.L70:
	.loc 2 206 0
	mov.n	a10, a4
	call8	free
.LVL86:
.L69:
.LBE21:
.LBE20:
	.loc 2 208 0
	mov.n	a2, a3
.LVL87:
	retw.n
.LFE36:
	.size	sdmmc_enable_hs_mode, .-sdmmc_enable_hs_mode
	.section	.rodata.str1.1
.LC32:
	.string	"\033[0;31mE (%d) %s: %s: select_card (1) returned 0x%x\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: %s: send_csd returned 0x%x\033[0m\n"
.LC36:
	.string	"\033[0;31mE (%d) %s: %s: select_card (2) returned 0x%x\033[0m\n"
.LC39:
	.string	"\033[0;33mW (%d) %s: unexpected: after enabling HS mode, tr_speed=%d\033[0m\n"
	.section	.text.sdmmc_enable_hs_mode_and_check,"ax",@progbits
	.literal_position
	.literal .LC29, 20000
	.literal .LC30, __func__$5669
	.literal .LC31, .LC4
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, 50000000
	.literal .LC40, .LC39
	.literal .LC41, -25536
	.align	4
	.global	sdmmc_enable_hs_mode_and_check
	.type	sdmmc_enable_hs_mode_and_check, @function
sdmmc_enable_hs_mode_and_check:
.LFB37:
	.loc 2 211 0
.LVL88:
	entry	sp, 48
.LCFI8:
	.loc 2 213 0
	l32r	a4, .LC29
	.loc 2 214 0
	l32i.n	a3, a2, 8
	.loc 2 213 0
	s16i	a4, a2, 128
	.loc 2 214 0
	blt	a4, a3, .L79
	.loc 2 216 0
	s16i	a3, a2, 128
	.loc 2 217 0
	movi.n	a3, 0
	j	.L80
.L79:
	.loc 2 221 0
	mov.n	a10, a2
	call8	sdmmc_enable_hs_mode
.LVL89:
	mov.n	a3, a10
.LVL90:
	.loc 2 222 0
	bnez.n	a10, .L80
	.loc 2 232 0
	mov.n	a11, a10
	mov.n	a10, a2
	call8	sdmmc_send_cmd_select_card
.LVL91:
	mov.n	a4, a10
.LVL92:
	.loc 2 233 0
	beqz.n	a10, .L81
	.loc 2 234 0 discriminator 2
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC31
	s32i.n	a4, sp, 0
	l32r	a15, .LC30
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	j	.L86
.L81:
	.loc 2 237 0
	addi	a11, a2, 88
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_csd
.LVL94:
	mov.n	a4, a10
.LVL95:
	.loc 2 238 0
	beqz.n	a10, .L82
	.loc 2 239 0 discriminator 2
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC31
	l32r	a15, .LC30
	l32r	a12, .LC35
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.L86:
	movi.n	a10, 1
	call8	esp_log_write
.LVL97:
	.loc 2 240 0 discriminator 2
	mov.n	a3, a4
	j	.L80
.L82:
	.loc 2 242 0
	l16ui	a11, a2, 126
	mov.n	a10, a2
	call8	sdmmc_send_cmd_select_card
.LVL98:
	mov.n	a4, a10
.LVL99:
	.loc 2 243 0
	beqz.n	a10, .L83
	.loc 2 244 0 discriminator 2
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC31
	s32i.n	a4, sp, 0
	l32r	a15, .LC30
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	j	.L86
.L83:
	.loc 2 248 0
	l32i	a8, a2, 112
	l32r	a4, .LC38
.LVL101:
	beq	a8, a4, .L84
	.loc 2 249 0 discriminator 4
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC31
	l32i	a15, a2, 112
	l32r	a12, .LC40
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL103:
	.loc 2 250 0 discriminator 4
	movi	a3, 0x106
	j	.L80
.LVL104:
.L84:
	.loc 2 253 0
	l32r	a4, .LC41
	s16i	a4, a2, 128
.LVL105:
.L80:
	.loc 2 255 0
	mov.n	a2, a3
.LVL106:
	retw.n
.LFE37:
	.size	sdmmc_enable_hs_mode_and_check, .-sdmmc_enable_hs_mode_and_check
	.section	.rodata.str1.1
.LC44:
	.string	"\033[0;31mE (%d) %s: %s: send_scr returned 0x%x\033[0m\n"
.LC46:
	.string	"\033[0;31mE (%d) %s: got corrupted data after increasing clock frequency\033[0m\n"
	.section	.text.sdmmc_check_scr,"ax",@progbits
	.literal_position
	.literal .LC42, __func__$5675
	.literal .LC43, .LC4
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.align	4
	.global	sdmmc_check_scr
	.type	sdmmc_check_scr, @function
sdmmc_check_scr:
.LFB38:
	.loc 2 258 0
.LVL107:
	entry	sp, 64
.LCFI9:
	.loc 2 264 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_scr
.LVL108:
	mov.n	a3, a10
.LVL109:
	.loc 2 265 0
	beqz.n	a10, .L88
	.loc 2 266 0 discriminator 2
	call8	esp_log_timestamp
.LVL110:
	l32r	a11, .LC43
	l32r	a15, .LC42
	l32r	a12, .LC45
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL111:
	.loc 2 267 0 discriminator 2
	mov.n	a10, a3
	j	.L89
.L88:
	.loc 2 269 0
	movi.n	a12, 8
	addi	a11, sp, 16
	addi	a10, a2, 116
	call8	memcmp
.LVL112:
	beqz.n	a10, .L89
	.loc 2 270 0 discriminator 2
	call8	esp_log_timestamp
.LVL113:
	l32r	a11, .LC43
	l32r	a12, .LC47
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL114:
	.loc 2 271 0 discriminator 2
	movi	a10, 0x108
.L89:
	.loc 2 274 0
	mov.n	a2, a10
.LVL115:
	retw.n
.LFE38:
	.size	sdmmc_check_scr, .-sdmmc_check_scr
	.section	.rodata.str1.1
.LC48:
	.string	"host_is_spi(card)"
.LC51:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_sd.c"
.LC54:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_send_cmd_crc_on_off returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_spi_crc,"ax",@progbits
	.literal_position
	.literal .LC49, .LC48
	.literal .LC50, __func__$5679
	.literal .LC52, .LC51
	.literal .LC53, .LC4
	.literal .LC55, .LC54
	.align	4
	.global	sdmmc_init_spi_crc
	.type	sdmmc_init_spi_crc, @function
sdmmc_init_spi_crc:
.LFB39:
	.loc 2 277 0
.LVL116:
	entry	sp, 48
.LCFI10:
.LVL117:
	.loc 2 282 0
	l32i.n	a8, a2, 0
	bbsi	a8, 3, .L94
	.loc 2 282 0 is_stmt 0 discriminator 1
	l32r	a13, .LC49
	l32r	a12, .LC50
	l32r	a10, .LC52
	movi	a11, 0x11a
	call8	__assert_func
.LVL118:
.L94:
	.loc 2 283 0 is_stmt 1
	mov.n	a10, a2
	movi.n	a11, 1
	call8	sdmmc_send_cmd_crc_on_off
.LVL119:
	mov.n	a2, a10
.LVL120:
	.loc 2 284 0
	beqz.n	a10, .L95
	.loc 2 285 0 discriminator 2
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC53
	l32r	a15, .LC50
	l32r	a12, .LC55
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL122:
.L95:
	.loc 2 289 0
	retw.n
.LFE39:
	.size	sdmmc_init_spi_crc, .-sdmmc_init_spi_crc
	.section	.text.sdmmc_decode_cid,"ax",@progbits
	.align	4
	.global	sdmmc_decode_cid
	.type	sdmmc_decode_cid, @function
sdmmc_decode_cid:
.LFB40:
	.loc 2 292 0
.LVL123:
	entry	sp, 32
.LCFI11:
	.loc 2 293 0
	movi.n	a12, 8
	movi	a11, 0x78
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL124:
	s32i.n	a10, a3, 0
	.loc 2 294 0
	movi.n	a12, 0x10
	movi	a11, 0x68
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL125:
	s32i.n	a10, a3, 4
	.loc 2 295 0
	movi.n	a12, 8
	movi	a11, 0x60
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL126:
	s8i	a10, a3, 8
	movi.n	a12, 8
	movi.n	a11, 0x58
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL127:
	s8i	a10, a3, 9
	movi.n	a12, 8
	movi.n	a11, 0x50
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL128:
	s8i	a10, a3, 10
	movi.n	a12, 8
	movi.n	a11, 0x48
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL129:
	s8i	a10, a3, 11
	movi.n	a12, 8
	movi.n	a11, 0x40
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL130:
	movi.n	a8, 0
	s8i	a8, a3, 13
	s8i	a10, a3, 12
	.loc 2 296 0
	movi.n	a12, 8
	movi.n	a11, 0x38
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL131:
	s32i.n	a10, a3, 16
	.loc 2 297 0
	movi.n	a12, 0x20
	movi.n	a11, 0x18
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL132:
	s32i.n	a10, a3, 20
	.loc 2 298 0
	movi.n	a12, 0xc
	movi.n	a11, 8
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL133:
	s32i.n	a10, a3, 24
	.loc 2 300 0
	movi.n	a2, 0
.LVL134:
	retw.n
.LFE40:
	.size	sdmmc_decode_cid, .-sdmmc_decode_cid
	.section	.rodata.str1.1
.LC57:
	.string	"\033[0;31mE (%d) %s: unknown SD CSD structure version 0x%x\033[0m\n"
	.section	.text.sdmmc_decode_csd,"ax",@progbits
	.literal_position
	.literal .LC56, .LC4
	.literal .LC58, .LC57
	.literal .LC59, 50000000
	.literal .LC60, 25000000
	.align	4
	.global	sdmmc_decode_csd
	.type	sdmmc_decode_csd, @function
sdmmc_decode_csd:
.LFB41:
	.loc 2 303 0
.LVL135:
	entry	sp, 32
.LCFI12:
	.loc 2 304 0
	movi.n	a12, 2
	movi	a11, 0x7e
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL136:
	s32i.n	a10, a3, 0
	.loc 2 305 0
	beqz.n	a10, .L102
	bnei	a10, 1, .L108
	.loc 2 307 0
	movi.n	a12, 0x16
	movi.n	a11, 0x30
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL137:
	addi.n	a10, a10, 1
	slli	a10, a10, 10
	.loc 2 308 0
	movi.n	a4, 9
	.loc 2 307 0
	s32i.n	a10, a3, 8
	.loc 2 308 0
	s32i.n	a4, a3, 16
	.loc 2 309 0
	j	.L104
.L102:
	.loc 2 311 0
	movi.n	a12, 0xc
	movi.n	a11, 0x3e
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL138:
	mov.n	a4, a10
	movi.n	a12, 3
	movi.n	a11, 0x2f
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL139:
	addi.n	a10, a10, 2
	addi.n	a4, a4, 1
	ssl	a10
	sll	a4, a4
	s32i.n	a4, a3, 8
	.loc 2 312 0
	movi.n	a12, 4
	movi.n	a11, 0x50
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL140:
	s32i.n	a10, a3, 16
	.loc 2 313 0
	j	.L104
.L108:
	.loc 2 315 0 discriminator 2
	call8	esp_log_timestamp
.LVL141:
	l32r	a11, .LC56
	l32i.n	a15, a3, 0
	l32r	a12, .LC58
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL142:
	.loc 2 316 0 discriminator 2
	movi	a2, 0x106
.LVL143:
	retw.n
.LVL144:
.L104:
	.loc 2 318 0
	movi.n	a12, 0xc
	movi.n	a11, 0x54
	mov.n	a10, a2
	call8	MMC_RSP_BITS
.LVL145:
	.loc 2 319 0
	l32i.n	a4, a3, 16
	movi.n	a8, 1
	ssl	a4
	sll	a8, a8
.LVL146:
	.loc 2 320 0
	movi	a9, 0x200
	min	a9, a8, a9
	.loc 2 318 0
	s32i.n	a10, a3, 20
	.loc 2 320 0
	s32i.n	a9, a3, 12
	.loc 2 321 0
	bge	a9, a8, .L106
	.loc 2 322 0
	l32i.n	a4, a3, 8
	quos	a8, a8, a9
.LVL147:
	mull	a8, a4, a8
	s32i.n	a8, a3, 8
.L106:
	.loc 2 324 0
	mov.n	a10, a2
	movi.n	a12, 8
	movi	a11, 0x60
	call8	MMC_RSP_BITS
.LVL148:
	.loc 2 325 0
	movi.n	a2, 0x5a
.LVL149:
	bne	a10, a2, .L107
	.loc 2 326 0
	l32r	a2, .LC59
	j	.L109
.L107:
	.loc 2 328 0
	l32r	a2, .LC60
.L109:
	s32i.n	a2, a3, 24
	.loc 2 330 0
	movi.n	a2, 0
	.loc 2 331 0
	retw.n
.LFE41:
	.size	sdmmc_decode_csd, .-sdmmc_decode_csd
	.global	__bswapsi2
	.section	.text.sdmmc_decode_scr,"ax",@progbits
	.align	4
	.global	sdmmc_decode_scr
	.type	sdmmc_decode_scr, @function
sdmmc_decode_scr:
.LFB42:
	.loc 2 334 0
.LVL150:
	entry	sp, 48
.LCFI13:
	.loc 2 335 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL151:
	.loc 2 336 0
	l32i.n	a10, a2, 0
	call8	__bswapsi2
.LVL152:
	s32i.n	a10, sp, 4
	.loc 2 337 0
	l32i.n	a10, a2, 4
	.loc 2 340 0
	movi	a2, 0x106
.LVL153:
	.loc 2 337 0
	call8	__bswapsi2
.LVL154:
	s32i.n	a10, sp, 0
	.loc 2 338 0
	movi.n	a12, 4
	movi.n	a11, 0x3c
	mov.n	a10, sp
	call8	MMC_RSP_BITS
.LVL155:
	mov.n	a4, a10
.LVL156:
	.loc 2 339 0
	bnez.n	a10, .L111
	.loc 2 342 0
	movi.n	a12, 4
	movi.n	a11, 0x38
	mov.n	a10, sp
	call8	MMC_RSP_BITS
.LVL157:
	s32i.n	a10, a3, 0
	.loc 2 343 0
	movi.n	a12, 4
	movi.n	a11, 0x30
	mov.n	a10, sp
	call8	MMC_RSP_BITS
.LVL158:
	s32i.n	a10, a3, 4
	.loc 2 344 0
	mov.n	a2, a4
.L111:
	.loc 2 345 0
	retw.n
.LFE42:
	.size	sdmmc_decode_scr, .-sdmmc_decode_scr
	.section	.rodata.__func__$5679,"a",@progbits
	.type	__func__$5679, @object
	.size	__func__$5679, 19
__func__$5679:
	.string	"sdmmc_init_spi_crc"
	.section	.rodata.__func__$5675,"a",@progbits
	.type	__func__$5675, @object
	.size	__func__$5675, 16
__func__$5675:
	.string	"sdmmc_check_scr"
	.section	.rodata.__func__$5669,"a",@progbits
	.type	__func__$5669, @object
	.size	__func__$5669, 31
__func__$5669:
	.string	"sdmmc_enable_hs_mode_and_check"
	.section	.rodata.__func__$5655,"a",@progbits
	.type	__func__$5655, @object
	.size	__func__$5655, 27
__func__$5655:
	.string	"sdmmc_send_cmd_switch_func"
	.section	.rodata.__func__$5628,"a",@progbits
	.type	__func__$5628, @object
	.size	__func__$5628, 18
__func__$5628:
	.string	"sdmmc_init_sd_scr"
	.section	.rodata.__func__$5623,"a",@progbits
	.type	__func__$5623, @object
	.size	__func__$5623, 23
__func__$5623:
	.string	"sdmmc_init_sd_blocklen"
	.section	.rodata.__func__$5618,"a",@progbits
	.type	__func__$5618, @object
	.size	__func__$5618, 22
__func__$5618:
	.string	"sdmmc_init_sd_if_cond"
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI4-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI6-.LFB35
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI7-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI8-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI9-.LFB38
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI10-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI11-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI12-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI13-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1534
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x76
	.4byte	0xee
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x1a9
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x25
	.4byte	0x14c
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x205
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2d
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x31
	.4byte	0x1b4
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x231
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x39
	.4byte	0x210
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x251
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3f
	.4byte	0xcd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x40
	.4byte	0x23c
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x45
	.4byte	0x267
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x277
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x40
	.byte	0x8
	.byte	0x4a
	.4byte	0x28c
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x4b
	.4byte	0x28c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x29c
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x4c
	.4byte	0x277
	.uleb128 0xc
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x31c
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x52
	.4byte	0xee
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x8
	.byte	0x53
	.4byte	0xee
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x54
	.4byte	0x25c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x55
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x56
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x74
	.4byte	0x12a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x76
	.4byte	0x2a7
	.uleb128 0xc
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x3d8
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x7f
	.4byte	0xee
	.byte	0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8c
	.4byte	0x3d8
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8d
	.4byte	0x3e4
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8e
	.4byte	0x3fe
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8f
	.4byte	0x413
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x90
	.4byte	0x42d
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x91
	.4byte	0x447
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x92
	.4byte	0x467
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0x93
	.4byte	0x3e4
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0x94
	.4byte	0x47c
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x8
	.byte	0x95
	.4byte	0x496
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x8
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF73
	.uleb128 0xf
	.4byte	0x12a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3df
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x3fe
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ea
	.uleb128 0x10
	.4byte	0x2c
	.4byte	0x413
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x404
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x42d
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x135
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x419
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x447
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x433
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x461
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x461
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44d
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x47c
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x496
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x13c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x482
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x97
	.4byte	0x327
	.uleb128 0xc
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x579
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0x9d
	.4byte	0x49c
	.byte	0
	.uleb128 0xe
	.string	"ocr"
	.byte	0x8
	.byte	0x9e
	.4byte	0xee
	.byte	0x38
	.uleb128 0xe
	.string	"cid"
	.byte	0x8
	.byte	0x9f
	.4byte	0x205
	.byte	0x3c
	.uleb128 0xe
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x1a9
	.byte	0x58
	.uleb128 0xe
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x231
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x8
	.byte	0xa2
	.4byte	0x251
	.byte	0x7c
	.uleb128 0xe
	.string	"rca"
	.byte	0x8
	.byte	0xa3
	.4byte	0xd8
	.byte	0x7e
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0xa4
	.4byte	0xd8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa5
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa6
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa7
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa8
	.4byte	0xee
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0xa9
	.4byte	0xee
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0xaa
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x8
	.byte	0xab
	.4byte	0xee
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x8
	.byte	0xac
	.4byte	0x4a7
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x9
	.byte	0x78
	.4byte	0x135
	.byte	0x3
	.4byte	0x5a0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x9
	.byte	0x78
	.4byte	0x5a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a6
	.uleb128 0x7
	.4byte	0x579
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x9
	.byte	0x7d
	.4byte	0xee
	.byte	0x3
	.4byte	0x5c7
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x9
	.byte	0x7d
	.4byte	0x3d8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x2
	.byte	0x75
	.4byte	0x12a
	.byte	0x1
	.4byte	0x65e
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x2
	.byte	0x75
	.4byte	0x65e
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x2
	.byte	0x76
	.4byte	0xee
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x2
	.byte	0x76
	.4byte	0xee
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x2
	.byte	0x76
	.4byte	0xee
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x2
	.byte	0x77
	.4byte	0x664
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x2
	.byte	0x88
	.4byte	0xee
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x2
	.byte	0x8a
	.4byte	0xee
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x2
	.byte	0x8b
	.4byte	0xee
	.uleb128 0x17
	.string	"cmd"
	.byte	0x2
	.byte	0x8d
	.4byte	0x31c
	.uleb128 0x17
	.string	"err"
	.byte	0x2
	.byte	0x96
	.4byte	0x12a
	.uleb128 0x18
	.4byte	.LASF96
	.4byte	0x67a
	.4byte	.LASF98
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x2
	.byte	0x9c
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x579
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29c
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x67a
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x66a
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x2
	.byte	0xad
	.4byte	0x12a
	.byte	0x1
	.4byte	0x6d0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x2
	.byte	0xad
	.4byte	0x65e
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x2
	.byte	0xb7
	.4byte	0x664
	.uleb128 0x17
	.string	"err"
	.byte	0x2
	.byte	0xbd
	.4byte	0x12a
	.uleb128 0x18
	.4byte	.LASF96
	.4byte	0x6e0
	.4byte	.LASF99
	.uleb128 0x19
	.string	"out"
	.byte	0x2
	.byte	0xcd
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x2
	.byte	0xc2
	.4byte	0xee
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x6e0
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x6d0
	.uleb128 0x1a
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x17a
	.4byte	0xee
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77c
	.uleb128 0x1b
	.string	"src"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x77c
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x17c
	.4byte	0xee
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x17d
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x17f
	.4byte	0xee
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x180
	.4byte	0xee
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xee
	.uleb128 0x1f
	.4byte	.LASF108
	.byte	0x2
	.byte	0x16
	.4byte	0x12a
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x831
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0x16
	.4byte	0x65e
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x2
	.byte	0x1b
	.4byte	0xee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.string	"err"
	.byte	0x2
	.byte	0x1c
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x841
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5618
	.uleb128 0x24
	.4byte	.LVL13
	.4byte	0x147e
	.4byte	0x7ed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5618
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x841
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x831
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x2
	.byte	0x2c
	.4byte	0x12a
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f8
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0x2c
	.4byte	0x65e
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x908
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5623
	.uleb128 0x28
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.byte	0x33
	.4byte	0x12a
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x149f
	.4byte	0x8b3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5623
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x908
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x8f8
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x2
	.byte	0x3c
	.4byte	0x12a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b2
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0x3c
	.4byte	0x65e
	.4byte	.LLST9
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.byte	0x3e
	.4byte	0x12a
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x9c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5628
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x14aa
	.4byte	0x96e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 116
	.byte	0
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5628
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x9c2
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x9b2
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x2
	.byte	0x53
	.4byte	0x12a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0x53
	.4byte	0x65e
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x2
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x22
	.string	"err"
	.byte	0x2
	.byte	0x5b
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0x14b5
	.4byte	0xa1f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL46
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF113
	.byte	0x2
	.byte	0x63
	.4byte	0x12a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0x63
	.4byte	0x65e
	.4byte	.LLST13
	.uleb128 0x21
	.4byte	.LASF114
	.byte	0x2
	.byte	0x66
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LASF115
	.byte	0x2
	.byte	0x67
	.4byte	0xee
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.byte	0x6a
	.4byte	0x12a
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LVL50
	.4byte	0x14c0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x5c7
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc86
	.uleb128 0x2d
	.4byte	0x5d7
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	0x5e2
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	0x5ed
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	0x5f8
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	0x603
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2f
	.4byte	0x60e
	.uleb128 0x2f
	.4byte	0x619
	.uleb128 0x2f
	.4byte	0x624
	.uleb128 0x2f
	.4byte	0x62f
	.uleb128 0x2f
	.4byte	0x63a
	.uleb128 0x30
	.4byte	0x645
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5655
	.uleb128 0x2f
	.4byte	0x652
	.uleb128 0x28
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x2d
	.4byte	0x603
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	0x5f8
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	0x5ed
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	0x5e2
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	0x5d7
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x31
	.4byte	0x60e
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	0x619
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	0x624
	.4byte	.LLST26
	.uleb128 0x30
	.4byte	0x62f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.4byte	0x63a
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	0x652
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	0x645
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5655
	.uleb128 0x24
	.4byte	.LVL60
	.4byte	0x14cb
	.4byte	0xbca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL63
	.4byte	0x14d4
	.4byte	0xbe5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL65
	.4byte	0x1489
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0x1494
	.4byte	0xc2c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5655
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL67
	.4byte	0x14df
	.4byte	0xc46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL68
	.4byte	0x6e5
	.4byte	0xc66
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x170
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x27
	.4byte	.LVL71
	.4byte	0x6e5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 16
	.byte	0x34
	.byte	0x24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x67f
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9d
	.uleb128 0x2d
	.4byte	0x68f
	.4byte	.LLST29
	.uleb128 0x2f
	.4byte	0x69a
	.uleb128 0x2f
	.4byte	0x6a5
	.uleb128 0x2f
	.4byte	0x6b0
	.uleb128 0x32
	.4byte	0x6bd
	.uleb128 0x2f
	.4byte	0x6c4
	.uleb128 0x28
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2d
	.4byte	0x68f
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x31
	.4byte	0x69a
	.4byte	.LLST31
	.uleb128 0x31
	.4byte	0x6a5
	.4byte	.LLST32
	.uleb128 0x33
	.4byte	0x6bd
	.4byte	.L70
	.uleb128 0x31
	.4byte	0x6c4
	.4byte	.LLST33
	.uleb128 0x2f
	.4byte	0x6b0
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0x14ea
	.4byte	0xd18
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0x5c7
	.4byte	0xd41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0x6e5
	.4byte	0xd61
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL84
	.4byte	0x5c7
	.4byte	0xd8a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x14f5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x2
	.byte	0xd2
	.4byte	0x12a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea2
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x2
	.byte	0xd2
	.4byte	0x65e
	.4byte	.LLST34
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.byte	0xdd
	.4byte	0x12a
	.4byte	.LLST35
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0xeb2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5669
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0x67f
	.4byte	0xdf7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL91
	.4byte	0x1500
	.4byte	0xe11
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL93
	.4byte	0x1489
	.uleb128 0x24
	.4byte	.LVL94
	.4byte	0x150b
	.4byte	0xe35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 88
	.byte	0
	.uleb128 0x26
	.4byte	.LVL96
	.4byte	0x1489
	.uleb128 0x24
	.4byte	.LVL97
	.4byte	0x1494
	.4byte	0xe51
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL98
	.4byte	0x1500
	.4byte	0xe65
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x1489
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL103
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xeb2
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0xea2
	.uleb128 0x34
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x101
	.4byte	0x12a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc2
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x101
	.4byte	0x65e
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x107
	.4byte	0x231
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"err"
	.byte	0x2
	.2byte	0x108
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0xfd2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5675
	.uleb128 0x24
	.4byte	.LVL108
	.4byte	0x14aa
	.4byte	0xf27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x1489
	.uleb128 0x24
	.4byte	.LVL111
	.4byte	0x1494
	.4byte	0xf6e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5675
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL112
	.4byte	0x1516
	.4byte	0xf8e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 116
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.4byte	.LVL113
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL114
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xfd2
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xfc2
	.uleb128 0x34
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x114
	.4byte	0x12a
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ab
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x114
	.4byte	0x65e
	.4byte	.LLST37
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x10bb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5679
	.uleb128 0x35
	.string	"err"
	.byte	0x2
	.2byte	0x11b
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL118
	.4byte	0x1521
	.4byte	0x104e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL119
	.4byte	0x152c
	.4byte	0x1067
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL121
	.4byte	0x1489
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x1494
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5679
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x10bb
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x10ab
	.uleb128 0x34
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x123
	.4byte	0x12a
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122a
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x123
	.4byte	0x77c
	.4byte	.LLST38
	.uleb128 0x36
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x123
	.4byte	0x122a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL124
	.4byte	0x6e5
	.4byte	0x1117
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL125
	.4byte	0x6e5
	.4byte	0x1136
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL126
	.4byte	0x6e5
	.4byte	0x1155
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL127
	.4byte	0x6e5
	.4byte	0x1174
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL128
	.4byte	0x6e5
	.4byte	0x1193
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL129
	.4byte	0x6e5
	.4byte	0x11b2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL130
	.4byte	0x6e5
	.4byte	0x11d1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL131
	.4byte	0x6e5
	.4byte	0x11f0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL132
	.4byte	0x6e5
	.4byte	0x120f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.4byte	.LVL133
	.4byte	0x6e5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x205
	.uleb128 0x34
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x12e
	.4byte	0x12a
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1393
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x12e
	.4byte	0x77c
	.4byte	.LLST39
	.uleb128 0x36
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x12e
	.4byte	0x1393
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x13f
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x144
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x24
	.4byte	.LVL136
	.4byte	0x6e5
	.4byte	0x12a5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x24
	.4byte	.LVL137
	.4byte	0x6e5
	.4byte	0x12c4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x24
	.4byte	.LVL138
	.4byte	0x6e5
	.4byte	0x12e3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL139
	.4byte	0x6e5
	.4byte	0x1302
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.4byte	.LVL140
	.4byte	0x6e5
	.4byte	0x1321
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x26
	.4byte	.LVL141
	.4byte	0x1489
	.uleb128 0x24
	.4byte	.LVL142
	.4byte	0x1494
	.4byte	0x1358
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x24
	.4byte	.LVL145
	.4byte	0x6e5
	.4byte	0x1377
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL148
	.4byte	0x6e5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a9
	.uleb128 0x37
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x14d
	.4byte	0x12a
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1466
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x14d
	.4byte	0x77c
	.4byte	.LLST41
	.uleb128 0x36
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x14d
	.4byte	0x1466
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x14f
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"ver"
	.byte	0x2
	.2byte	0x152
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LVL151
	.4byte	0x14cb
	.4byte	0x140c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL155
	.4byte	0x6e5
	.4byte	0x142b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.4byte	.LVL157
	.4byte	0x6e5
	.4byte	0x144a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL158
	.4byte	0x6e5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x231
	.uleb128 0x22
	.string	"TAG"
	.byte	0x2
	.byte	0x14
	.4byte	0x147
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x38
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x9
	.byte	0x33
	.uleb128 0x38
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xa
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xa
	.byte	0x6b
	.uleb128 0x38
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x9
	.byte	0x39
	.uleb128 0x38
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x9
	.byte	0x3f
	.uleb128 0x38
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x9
	.byte	0x40
	.uleb128 0x38
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x41
	.uleb128 0x39
	.4byte	.LASF149
	.4byte	.LASF149
	.uleb128 0x38
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
	.byte	0x30
	.uleb128 0x38
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x85
	.uleb128 0x38
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.byte	0x37
	.uleb128 0x38
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0x5a
	.uleb128 0x38
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x9
	.byte	0x3e
	.uleb128 0x38
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x9
	.byte	0x3d
	.uleb128 0x38
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.byte	0x16
	.uleb128 0x38
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xe
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x42
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2117
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
	.uleb128 0x17
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0x72
	.sleb128 -130
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0x72
	.sleb128 -130
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL56
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL56
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL73
	.2byte	0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xc
	.byte	0x3f
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL73
	.2byte	0xe
	.byte	0x3f
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0x20
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x16
	.byte	0x3f
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0x20
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x17
	.byte	0x3f
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0x20
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL64
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL75
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL76
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL78
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL88
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL123
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL135
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x6
	.byte	0x31
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF115:
	.string	"count"
.LASF126:
	.string	"sdmmc_decode_scr"
.LASF34:
	.string	"card_command_class"
.LASF107:
	.string	"host_ocr"
.LASF85:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF4:
	.string	"__uint8_t"
.LASF40:
	.string	"revision"
.LASF29:
	.string	"csd_ver"
.LASF31:
	.string	"capacity"
.LASF63:
	.string	"init"
.LASF12:
	.string	"long int"
.LASF121:
	.string	"out_cid"
.LASF66:
	.string	"set_bus_ddr_mode"
.LASF48:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF131:
	.string	"esp_log_write"
.LASF88:
	.string	"voltage"
.LASF139:
	.string	"free"
.LASF148:
	.string	"MMC_RSP_BITS"
.LASF53:
	.string	"response"
.LASF113:
	.string	"sdmmc_init_sd_wait_data_ready"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF64:
	.string	"set_bus_width"
.LASF91:
	.string	"function"
.LASF134:
	.string	"sdmmc_send_cmd_set_bus_width"
.LASF68:
	.string	"do_transaction"
.LASF90:
	.string	"group"
.LASF144:
	.string	"sdmmc_send_cmd_crc_on_off"
.LASF135:
	.string	"sdmmc_send_cmd_send_status"
.LASF36:
	.string	"sdmmc_csd_t"
.LASF116:
	.string	"sdmmc_enable_hs_mode_and_check"
.LASF17:
	.string	"uint16_t"
.LASF111:
	.string	"sdmmc_init_sd_bus_width"
.LASF108:
	.string	"sdmmc_init_sd_if_cond"
.LASF104:
	.string	"shift"
.LASF138:
	.string	"heap_caps_malloc"
.LASF37:
	.string	"mfg_id"
.LASF95:
	.string	"func_val"
.LASF9:
	.string	"__uint32_t"
.LASF102:
	.string	"mask"
.LASF83:
	.string	"reserved"
.LASF136:
	.string	"sdmmc_send_cmd"
.LASF147:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF43:
	.string	"sdmmc_cid_t"
.LASF75:
	.string	"host"
.LASF92:
	.string	"resp"
.LASF0:
	.string	"unsigned int"
.LASF132:
	.string	"sdmmc_send_cmd_set_blocklen"
.LASF118:
	.string	"scr_tmp"
.LASF67:
	.string	"set_card_clk"
.LASF127:
	.string	"raw_scr"
.LASF80:
	.string	"num_io_functions"
.LASF140:
	.string	"sdmmc_send_cmd_select_card"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"name"
.LASF112:
	.string	"width"
.LASF50:
	.string	"data"
.LASF70:
	.string	"io_int_enable"
.LASF99:
	.string	"sdmmc_enable_hs_mode"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"date"
.LASF123:
	.string	"out_csd"
.LASF100:
	.string	"supported_mask"
.LASF129:
	.string	"sdmmc_send_cmd_send_if_cond"
.LASF128:
	.string	"out_scr"
.LASF60:
	.string	"slot"
.LASF72:
	.string	"command_timeout_ms"
.LASF105:
	.string	"right"
.LASF87:
	.string	"card"
.LASF33:
	.string	"read_block_len"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF77:
	.string	"is_mem"
.LASF55:
	.string	"blklen"
.LASF46:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF54:
	.string	"datalen"
.LASF38:
	.string	"oem_id"
.LASF28:
	.string	"TickType_t"
.LASF35:
	.string	"tr_speed"
.LASF30:
	.string	"mmc_ver"
.LASF78:
	.string	"is_sdio"
.LASF74:
	.string	"sdmmc_host_t"
.LASF73:
	.string	"float"
.LASF57:
	.string	"error"
.LASF98:
	.string	"sdmmc_send_cmd_switch_func"
.LASF76:
	.string	"ext_csd"
.LASF58:
	.string	"timeout_ms"
.LASF32:
	.string	"sector_size"
.LASF79:
	.string	"is_mmc"
.LASF141:
	.string	"sdmmc_send_cmd_send_csd"
.LASF97:
	.string	"resp_ver"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF110:
	.string	"sdmmc_init_sd_scr"
.LASF133:
	.string	"sdmmc_send_cmd_send_scr"
.LASF120:
	.string	"sdmmc_decode_cid"
.LASF6:
	.string	"short int"
.LASF149:
	.string	"memset"
.LASF130:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF96:
	.string	"__func__"
.LASF119:
	.string	"sdmmc_init_spi_crc"
.LASF86:
	.string	"get_host_ocr"
.LASF69:
	.string	"deinit"
.LASF84:
	.string	"sdmmc_card_t"
.LASF49:
	.string	"sdmmc_response_t"
.LASF124:
	.string	"read_bl_size"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF89:
	.string	"mode"
.LASF7:
	.string	"__uint16_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"__int32_t"
.LASF142:
	.string	"memcmp"
.LASF103:
	.string	"word"
.LASF59:
	.string	"sdmmc_command_t"
.LASF146:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_sd.c"
.LASF81:
	.string	"log_bus_width"
.LASF117:
	.string	"sdmmc_check_scr"
.LASF93:
	.string	"group_shift"
.LASF19:
	.string	"uint32_t"
.LASF51:
	.string	"sdmmc_switch_func_rsp_t"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF62:
	.string	"io_voltage"
.LASF114:
	.string	"status"
.LASF47:
	.string	"power_class"
.LASF26:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF56:
	.string	"flags"
.LASF109:
	.string	"sdmmc_init_sd_blocklen"
.LASF41:
	.string	"serial"
.LASF71:
	.string	"io_int_wait"
.LASF143:
	.string	"__assert_func"
.LASF125:
	.string	"speed"
.LASF137:
	.string	"sdmmc_flip_byte_order"
.LASF45:
	.string	"bus_width"
.LASF101:
	.string	"start"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF94:
	.string	"other_func_mask"
.LASF61:
	.string	"max_freq_khz"
.LASF65:
	.string	"get_bus_width"
.LASF44:
	.string	"sd_spec"
.LASF106:
	.string	"left"
.LASF122:
	.string	"sdmmc_decode_csd"
.LASF52:
	.string	"opcode"
.LASF82:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
