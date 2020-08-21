	.file	"sdmmc_common.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"sdmmc_common"
.LC7:
	.string	"\033[0;31mE (%d) %s: %s: send_op_cond (1) returned 0x%x\033[0m\n"
.LC9:
	.string	"\033[0;31mE (%d) %s: %s: read_ocr returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_ocr,"ax",@progbits
	.literal_position
	.literal .LC1, 16744448
	.literal .LC2, 1090486272
	.literal .LC3, 1073741824
	.literal .LC4, __func__$5572
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.global	sdmmc_init_ocr
	.type	sdmmc_init_ocr, @function
sdmmc_init_ocr:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.c"
	.loc 1 23 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 31 0
	l32i.n	a4, a2, 56
	l32r	a3, .LC3
	.loc 1 32 0
	l32r	a5, .LC2
	.loc 1 31 0
	and	a3, a4, a3
	.loc 1 32 0
	l32r	a4, .LC1
	.loc 1 35 0
	mov.n	a10, a2
	.loc 1 32 0
	movnez	a4, a5, a3
.LVL2:
	.loc 1 35 0
	addi	a5, a2, 56
	mov.n	a12, a5
	mov.n	a11, a4
	call8	sdmmc_send_cmd_send_op_cond
.LVL3:
	.loc 1 38 0
	movi	a8, 0x107
	.loc 1 35 0
	mov.n	a3, a10
.LVL4:
	.loc 1 38 0
	bne	a10, a8, .L3
.LVL5:
	.loc 1 38 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	bbsi	a8, 3, .L4
	.loc 1 40 0 is_stmt 1
	movi	a3, 0x82
.LVL6:
	add.n	a3, a2, a3
	l16ui	a9, a3, 0
	movi.n	a8, 4
	or	a8, a9, a8
	s16i	a8, a3, 0
	.loc 1 41 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a2
.LVL7:
	call8	sdmmc_send_cmd_send_op_cond
.LVL8:
	mov.n	a3, a10
.LVL9:
.L3:
	.loc 1 44 0
	beqz.n	a3, .L5
.L4:
	.loc 1 45 0 discriminator 2
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC6
	l32r	a15, .LC4
	l32r	a12, .LC8
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 46 0 discriminator 2
	j	.L6
.L5:
.LVL12:
	.loc 1 48 0
	l32i.n	a4, a2, 0
.LVL13:
	bbci	a4, 3, .L6
	.loc 1 49 0
	mov.n	a10, a2
	mov.n	a11, a5
	call8	sdmmc_send_cmd_read_ocr
.LVL14:
	mov.n	a2, a10
.LVL15:
	.loc 1 50 0
	beqz.n	a10, .L6
	.loc 1 51 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC6
	l32r	a15, .LC4
	l32r	a12, .LC10
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 52 0 discriminator 2
	mov.n	a3, a2
.LVL18:
.L6:
	.loc 1 64 0
	mov.n	a2, a3
	retw.n
.LFE21:
	.size	sdmmc_init_ocr, .-sdmmc_init_ocr
	.section	.rodata.str1.1
.LC14:
	.string	"\033[0;31mE (%d) %s: %s: all_send_cid returned 0x%x\033[0m\n"
.LC16:
	.string	"\033[0;31mE (%d) %s: %s: set_relative_addr returned 0x%x\033[0m\n"
.LC19:
	.string	"\033[0;31mE (%d) %s: %s: send_csd returned 0x%x\033[0m\n"
.LC21:
	.string	"\033[0;31mE (%d) %s: %s: decoding CID failed (0x%x)\033[0m\n"
.LC23:
	.string	"\033[0;31mE (%d) %s: %s: send_cid returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_cid,"ax",@progbits
	.literal_position
	.literal .LC12, __func__$5579
	.literal .LC13, .LC5
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.global	sdmmc_init_cid
	.type	sdmmc_init_cid, @function
sdmmc_init_cid:
.LFB22:
	.loc 1 67 0
.LVL19:
	entry	sp, 96
.LCFI1:
.LVL20:
	.loc 1 71 0
	l32i.n	a3, a2, 0
	bbsi	a3, 3, .L13
	.loc 1 72 0
	l32i	a3, a2, 128
	bbci	a3, 16, .L14
	.loc 1 73 0
	addi	a11, sp, 44
	mov.n	a10, a2
	call8	sdmmc_send_cmd_all_send_cid
.LVL21:
	mov.n	a3, a10
.LVL22:
	.loc 1 74 0
	beqz.n	a10, .L14
	.loc 1 75 0 discriminator 2
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC13
	s32i.n	a3, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	j	.L31
.LVL24:
.L14:
	.loc 1 79 0
	addi	a11, a2, 126
	mov.n	a10, a2
	call8	sdmmc_send_cmd_set_relative_addr
.LVL25:
	mov.n	a3, a10
.LVL26:
	.loc 1 80 0
	beqz.n	a10, .L16
	.loc 1 81 0 discriminator 2
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC13
	s32i.n	a3, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	j	.L31
.L16:
	.loc 1 84 0
	l32i	a3, a2, 128
.LVL28:
	bbci	a3, 18, .L17
	.loc 1 91 0
	addi	a11, sp, 16
	mov.n	a10, a2
.LVL29:
	call8	sdmmc_send_cmd_send_csd
.LVL30:
	mov.n	a3, a10
.LVL31:
	.loc 1 92 0
	beqz.n	a10, .L18
	.loc 1 93 0 discriminator 2
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC13
	s32i.n	a3, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	j	.L31
.L18:
	.loc 1 96 0
	l32i.n	a10, sp, 20
	addi	a12, a2, 60
	addi	a11, sp, 44
	call8	sdmmc_mmc_decode_cid
.LVL33:
	j	.L30
.LVL34:
.L17:
	.loc 1 98 0
	addi	a11, a2, 60
	addi	a10, sp, 44
.LVL35:
	call8	sdmmc_decode_cid
.LVL36:
.L30:
	.loc 1 111 0
	movi.n	a2, 0
.LVL37:
	.loc 1 98 0
	mov.n	a3, a10
.LVL38:
	.loc 1 100 0
	beq	a10, a2, .L15
	.loc 1 101 0 discriminator 2
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC13
	s32i.n	a3, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	j	.L31
.LVL40:
.L13:
	.loc 1 105 0
	addi	a11, a2, 60
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_cid
.LVL41:
	.loc 1 111 0
	movi.n	a2, 0
.LVL42:
	.loc 1 105 0
	mov.n	a3, a10
.LVL43:
	.loc 1 106 0
	beq	a10, a2, .L15
	.loc 1 107 0 discriminator 2
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC13
	l32r	a15, .LC12
	l32r	a12, .LC24
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.L31:
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 108 0 discriminator 2
	mov.n	a2, a3
.L15:
	.loc 1 112 0
	retw.n
.LFE22:
	.size	sdmmc_init_cid, .-sdmmc_init_cid
	.section	.rodata.str1.1
.LC26:
	.string	"card->is_mem == 1"
.LC29:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.c"
.LC34:
	.string	"\033[0;33mW (%d) %s: %s: SDSC card reports capacity=%u. Limiting to %u.\033[0m\n"
	.section	.text.sdmmc_init_csd,"ax",@progbits
	.literal_position
	.literal .LC27, .LC26
	.literal .LC28, __func__$5583
	.literal .LC30, .LC29
	.literal .LC31, .LC5
	.literal .LC32, .LC19
	.literal .LC35, .LC34
	.align	4
	.global	sdmmc_init_csd
	.type	sdmmc_init_csd, @function
sdmmc_init_csd:
.LFB23:
	.loc 1 115 0
.LVL46:
	entry	sp, 48
.LCFI2:
	.loc 1 115 0
	mov.n	a3, a2
	.loc 1 116 0
	l32i	a2, a2, 128
.LVL47:
	bbsi	a2, 16, .L33
	.loc 1 116 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	l32r	a10, .LC30
	movi	a11, 0x74
	call8	__assert_func
.LVL48:
.L33:
	.loc 1 118 0 is_stmt 1
	addi	a11, a3, 88
	mov.n	a10, a3
	call8	sdmmc_send_cmd_send_csd
.LVL49:
	mov.n	a2, a10
.LVL50:
	.loc 1 119 0
	beqz.n	a10, .L34
	.loc 1 120 0 discriminator 2
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC31
	l32r	a15, .LC28
	l32r	a12, .LC32
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL52:
	.loc 1 121 0 discriminator 2
	retw.n
.L34:
.LVL53:
	.loc 1 124 0
	l32i.n	a4, a3, 56
	bbsi	a4, 30, .L35
	.loc 1 123 0 discriminator 1
	l32i	a8, a3, 100
	movi.n	a4, -1
	quou	a4, a4, a8
	.loc 1 124 0 discriminator 1
	l32i	a8, a3, 96
	.loc 1 123 0 discriminator 1
	addi.n	a4, a4, 1
	.loc 1 124 0 discriminator 1
	bgeu	a4, a8, .L35
	.loc 1 126 0 discriminator 4
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC31
	l32i	a8, a3, 96
	l32r	a15, .LC28
	l32r	a12, .LC35
	mov.n	a13, a10
	s32i.n	a4, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL55:
	.loc 1 128 0 discriminator 4
	s32i	a4, a3, 96
.L35:
	.loc 1 131 0
	retw.n
.LFE23:
	.size	sdmmc_init_csd, .-sdmmc_init_csd
	.section	.rodata.str1.1
.LC36:
	.string	"!host_is_spi(card)"
.LC41:
	.string	"\033[0;31mE (%d) %s: %s: select_card returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_select_card,"ax",@progbits
	.literal_position
	.literal .LC37, .LC36
	.literal .LC38, __func__$5589
	.literal .LC39, .LC29
	.literal .LC40, .LC5
	.literal .LC42, .LC41
	.align	4
	.global	sdmmc_init_select_card
	.type	sdmmc_init_select_card, @function
sdmmc_init_select_card:
.LFB24:
	.loc 1 134 0
.LVL56:
	entry	sp, 48
.LCFI3:
.LVL57:
	.loc 1 135 0
	l32i.n	a8, a2, 0
	bbci	a8, 3, .L39
	.loc 1 135 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC38
	l32r	a10, .LC39
	movi	a11, 0x87
	call8	__assert_func
.LVL58:
.L39:
	.loc 1 136 0 is_stmt 1
	l16ui	a11, a2, 126
	mov.n	a10, a2
	call8	sdmmc_send_cmd_select_card
.LVL59:
	mov.n	a2, a10
.LVL60:
	.loc 1 137 0
	beqz.n	a10, .L40
	.loc 1 138 0 discriminator 2
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC40
	l32r	a15, .LC38
	l32r	a12, .LC42
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
.L40:
	.loc 1 142 0
	retw.n
.LFE24:
	.size	sdmmc_init_select_card, .-sdmmc_init_select_card
	.section	.text.sdmmc_init_card_hs_mode,"ax",@progbits
	.literal_position
	.literal .LC43, 327680
	.literal .LC44, 65536
	.literal .LC47, 20000
	.align	4
	.global	sdmmc_init_card_hs_mode
	.type	sdmmc_init_card_hs_mode, @function
sdmmc_init_card_hs_mode:
.LFB25:
	.loc 1 145 0
.LVL63:
	entry	sp, 32
.LCFI4:
.LVL64:
	.loc 1 147 0
	l32i	a8, a2, 128
	l32r	a9, .LC43
	l32r	a10, .LC44
	and	a9, a8, a9
	bne	a9, a10, .L45
	.loc 1 148 0
	mov.n	a10, a2
	call8	sdmmc_enable_hs_mode_and_check
.LVL65:
	j	.L46
.LVL66:
.L45:
	.loc 1 149 0
	bbci	a8, 17, .L47
	.loc 1 150 0
	mov.n	a10, a2
	call8	sdmmc_io_enable_hs_mode
.LVL67:
	j	.L46
.LVL68:
.L47:
	.loc 1 151 0
	bbsi	a8, 18, .L48
.LVL69:
.L50:
	.loc 1 156 0
	l32r	a3, .LC47
	s16i	a3, a2, 128
	.loc 1 160 0
	movi.n	a2, 0
.LVL70:
	retw.n
.LVL71:
.L48:
	.loc 1 152 0
	mov.n	a10, a2
	call8	sdmmc_mmc_enable_hs_mode
.LVL72:
.L46:
	.loc 1 154 0
	movi	a8, 0x106
	beq	a10, a8, .L50
	mov.n	a2, a10
.LVL73:
	.loc 1 161 0
	retw.n
.LFE25:
	.size	sdmmc_init_card_hs_mode, .-sdmmc_init_card_hs_mode
	.section	.rodata.str1.1
.LC51:
	.string	"\033[0;31mE (%d) %s: host.set_bus_width failed (0x%x)\033[0m\n"
	.section	.text.sdmmc_init_host_bus_width,"ax",@progbits
	.literal_position
	.literal .LC48, 12582912
	.literal .LC49, 8388608
	.literal .LC50, .LC5
	.literal .LC52, .LC51
	.align	4
	.global	sdmmc_init_host_bus_width
	.type	sdmmc_init_host_bus_width, @function
sdmmc_init_host_bus_width:
.LFB26:
	.loc 1 164 0
.LVL74:
	entry	sp, 32
.LCFI5:
.LVL75:
	.loc 1 167 0
	l32i.n	a9, a2, 0
	.loc 1 164 0
	mov.n	a8, a2
	.loc 1 167 0
	bbci	a9, 1, .L52
	.loc 1 167 0 is_stmt 0 discriminator 1
	l32i	a10, a2, 128
	l32r	a2, .LC48
.LVL76:
	and	a2, a10, a2
	l32r	a10, .LC49
	beq	a2, a10, .L56
.L52:
	.loc 1 182 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 170 0
	bbci	a9, 2, .L61
	.loc 1 170 0 is_stmt 0 discriminator 1
	l32i	a9, a8, 128
	l32r	a10, .LC48
	and	a9, a9, a10
	bne	a9, a10, .L61
	j	.L58
.LVL77:
.L55:
.LBB12:
	.loc 1 178 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC50
	l32r	a12, .LC52
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
	.loc 1 179 0 discriminator 2
	retw.n
.LVL80:
.L56:
.LBE12:
	.loc 1 169 0
	movi.n	a11, 4
	j	.L53
.L58:
	.loc 1 172 0
	movi.n	a11, 8
.L53:
.LVL81:
.LBB13:
	.loc 1 176 0
	l32i.n	a2, a8, 20
	l32i.n	a10, a8, 4
	callx8	a2
.LVL82:
	mov.n	a2, a10
.LVL83:
	.loc 1 177 0
	bnez.n	a10, .L55
.LVL84:
.L61:
.LBE13:
	.loc 1 183 0
	retw.n
.LFE26:
	.size	sdmmc_init_host_bus_width, .-sdmmc_init_host_bus_width
	.section	.rodata.str1.1
.LC55:
	.string	"card->max_freq_khz <= card->host.max_freq_khz"
.LC61:
	.string	"\033[0;31mE (%d) %s: failed to switch bus frequency (0x%x)\033[0m\n"
.LC64:
	.string	"\033[0;31mE (%d) %s: host doesn't support DDR mode or voltage switching\033[0m\n"
.LC66:
	.string	"\033[0;31mE (%d) %s: failed to switch bus to DDR mode (0x%x)\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.word	52000
	.word	40000
	.word	26000
	.word	20000
	.section	.text.sdmmc_init_host_frequency,"ax",@progbits
	.literal_position
	.literal .LC56, .LC55
	.literal .LC57, __func__$5605
	.literal .LC58, .LC29
	.literal .LC59, .LC0
	.literal .LC60, .LC5
	.literal .LC62, .LC61
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.align	4
	.global	sdmmc_init_host_frequency
	.type	sdmmc_init_host_frequency, @function
sdmmc_init_host_frequency:
.LFB27:
	.loc 1 186 0
.LVL85:
	entry	sp, 48
.LCFI6:
	.loc 1 186 0
	mov.n	a4, a2
	.loc 1 187 0
	l16ui	a8, a2, 128
	l32i.n	a2, a2, 8
.LVL86:
	bge	a2, a8, .L65
	.loc 1 187 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	l32r	a12, .LC57
	l32r	a10, .LC58
	movi	a11, 0xbb
	call8	__assert_func
.LVL87:
.L65:
	.loc 1 192 0 is_stmt 1
	l32r	a2, .LC59
	l32i.n	a3, a2, 0
	l32i.n	a9, a2, 4
	s32i.n	a3, sp, 0
	l32i.n	a3, a2, 8
	l32i.n	a2, a2, 12
	s32i.n	a3, sp, 8
	s32i.n	a2, sp, 12
.LVL88:
	s32i.n	a9, sp, 4
	movi.n	a3, 0
	movi.n	a2, 4
	loop	a2, .L67_LEND
.LVL89:
.L67:
.LBB14:
.LBB15:
	.loc 1 202 0
	add.n	a9, sp, a3
	l32i.n	a11, a9, 0
.LVL90:
	.loc 1 203 0
	bgeu	a8, a11, .L66
	addi.n	a3, a3, 4
	.L67_LEND:
.LBE15:
	j	.L68
.L66:
.LVL91:
.LBE14:
	.loc 1 210 0
	movi	a2, 0x190
	bgeu	a2, a11, .L68
.LBB16:
	.loc 1 211 0
	l32i.n	a2, a4, 32
	l32i.n	a10, a4, 4
	callx8	a2
.LVL92:
	mov.n	a3, a10
.LVL93:
	.loc 1 212 0
	beqz.n	a10, .L68
	.loc 1 213 0 discriminator 2
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC60
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	j	.L79
.LVL95:
.L68:
.LBE16:
	.loc 1 218 0
	l32i	a3, a4, 128
	.loc 1 229 0
	movi.n	a2, 0
	.loc 1 218 0
	bbci	a3, 24, .L69
.LBB17:
	.loc 1 219 0
	l32i.n	a3, a4, 28
	bne	a3, a2, .L70
	.loc 1 220 0 discriminator 2
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC60
	l32r	a12, .LC65
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL97:
	.loc 1 221 0 discriminator 2
	movi	a2, 0x106
	retw.n
.L70:
	.loc 1 223 0
	l32i.n	a10, a4, 4
	movi.n	a11, 1
	callx8	a3
.LVL98:
	mov.n	a3, a10
.LVL99:
	.loc 1 224 0
	beqz.n	a10, .L69
	.loc 1 225 0 discriminator 2
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC60
	l32r	a12, .LC67
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
.LVL101:
.L79:
	movi.n	a10, 1
	call8	esp_log_write
.LVL102:
	.loc 1 226 0 discriminator 2
	mov.n	a2, a3
.L69:
.LBE17:
	.loc 1 230 0
	retw.n
.LFE27:
	.size	sdmmc_init_host_frequency, .-sdmmc_init_host_frequency
	.section	.rodata.str1.1
.LC68:
	.string	"size % (2 * sizeof(uint32_t)) == 0"
	.global	__bswapsi2
	.section	.text.sdmmc_flip_byte_order,"ax",@progbits
	.literal_position
	.literal .LC69, .LC68
	.literal .LC70, __func__$5620
	.literal .LC71, .LC29
	.align	4
	.global	sdmmc_flip_byte_order
	.type	sdmmc_flip_byte_order, @function
sdmmc_flip_byte_order:
.LFB28:
	.loc 1 233 0
.LVL103:
	entry	sp, 32
.LCFI7:
	.loc 1 234 0
	extui	a4, a3, 0, 3
	beqz.n	a4, .L81
	.loc 1 234 0 is_stmt 0 discriminator 1
	l32r	a13, .LC69
	l32r	a12, .LC70
	l32r	a10, .LC71
	movi	a11, 0xea
	call8	__assert_func
.LVL104:
.L81:
	srli	a4, a3, 2
.LVL105:
	srli	a3, a3, 3
.LVL106:
	addx4	a4, a4, a2
.LVL107:
	addx4	a3, a3, a2
.LBB18:
	.loc 1 236 0 is_stmt 1
	j	.L82
.LVL108:
.L83:
.LBB19:
	.loc 1 237 0 discriminator 3
	l32i.n	a10, a2, 0
	call8	__bswapsi2
.LVL109:
	mov.n	a5, a10
.LVL110:
	.loc 1 238 0 discriminator 3
	l32i.n	a10, a4, 0
	call8	__bswapsi2
.LVL111:
	.loc 1 239 0 discriminator 3
	s32i.n	a10, a2, 0
	.loc 1 240 0 discriminator 3
	s32i.n	a5, a4, 0
	addi.n	a2, a2, 4
.LVL112:
.L82:
	addi	a4, a4, -4
.LBE19:
	.loc 1 236 0 discriminator 1
	bne	a2, a3, .L83
.LBE18:
	.loc 1 242 0
	retw.n
.LFE28:
	.size	sdmmc_flip_byte_order, .-sdmmc_flip_byte_order
	.section	.rodata.str1.1
.LC72:
	.string	"SDIO"
.LC74:
	.string	"MMC"
.LC76:
	.string	"SDSC"
.LC78:
	.string	"SDHC/SDXC"
.LC80:
	.string	", DDR"
.LC82:
	.string	""
.LC84:
	.string	"Name: %s\n"
.LC89:
	.string	"Type: %s\n"
.LC91:
	.string	"Speed: %d kHz\n"
.LC95:
	.string	"Speed: %d MHz%s\n"
.LC97:
	.string	"Size: %lluMB\n"
.LC99:
	.string	"CSD: ver=%d, sector_size=%d, capacity=%d read_bl_len=%d\n"
.LC101:
	.string	"SCR: sd_spec=%d, bus_width=%d\n"
	.section	.text.sdmmc_card_print_info,"ax",@progbits
	.literal_position
	.literal .LC73, .LC72
	.literal .LC75, .LC74
	.literal .LC77, .LC76
	.literal .LC79, .LC78
	.literal .LC81, .LC80
	.literal .LC83, .LC82
	.literal .LC85, .LC84
	.literal .LC86, 131072
	.literal .LC87, 262144
	.literal .LC88, 1073741824
	.literal .LC90, .LC89
	.literal .LC92, .LC91
	.literal .LC93, 274877907
	.literal .LC94, 16777216
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.literal .LC100, .LC99
	.literal .LC102, .LC101
	.align	4
	.global	sdmmc_card_print_info
	.type	sdmmc_card_print_info, @function
sdmmc_card_print_info:
.LFB29:
	.loc 1 245 0
.LVL113:
	entry	sp, 32
.LCFI8:
.LVL114:
	.loc 1 249 0
	l32r	a11, .LC85
	addi	a12, a3, 68
	mov.n	a10, a2
	call8	fprintf
.LVL115:
	.loc 1 250 0
	l32i	a8, a3, 128
	l32r	a5, .LC86
	and	a5, a8, a5
	bnez.n	a5, .L91
	.loc 1 254 0
	l32r	a4, .LC87
	.loc 1 255 0
	l32r	a12, .LC75
	.loc 1 254 0
	and	a8, a8, a4
	.loc 1 256 0
	movi.n	a4, 1
	.loc 1 254 0
	bnez.n	a8, .L85
	.loc 1 258 0
	l32i.n	a5, a3, 56
	l32r	a4, .LC88
	l32r	a12, .LC77
	and	a4, a5, a4
	beqz.n	a4, .L101
	j	.L93
.L91:
	.loc 1 251 0
	l32r	a12, .LC73
	.loc 1 253 0
	movi.n	a4, 1
	j	.L101
.L93:
	.loc 1 258 0
	l32r	a12, .LC79
	.loc 1 247 0
	mov.n	a4, a8
.L101:
	.loc 1 246 0
	mov.n	a5, a4
.L85:
.LVL116:
	.loc 1 260 0
	l32r	a11, .LC90
	mov.n	a10, a2
	call8	fprintf
.LVL117:
	.loc 1 261 0
	l16ui	a12, a3, 128
	movi	a8, 0x3e7
	bltu	a8, a12, .L86
	.loc 1 262 0
	l32r	a11, .LC92
	mov.n	a10, a2
	call8	fprintf
.LVL118:
	j	.L87
.L86:
	.loc 1 264 0
	l32r	a8, .LC93
	l32i	a13, a3, 128
	muluh	a12, a12, a8
	l32r	a8, .LC94
	l32r	a9, .LC81
	and	a8, a13, a8
	l32r	a13, .LC83
	l32r	a11, .LC96
	movnez	a13, a9, a8
	srli	a12, a12, 6
	mov.n	a10, a2
	call8	fprintf
.LVL119:
.L87:
	.loc 1 267 0
	l32i	a8, a3, 100
	l32i	a13, a3, 96
	l32r	a11, .LC98
	mull	a9, a13, a8
	mulsh	a13, a13, a8
	extui	a8, a9, 20, 12
	slli	a12, a13, 12
	or	a12, a12, a8
	extui	a13, a13, 20, 12
	mov.n	a10, a2
	call8	fprintf
.LVL120:
	.loc 1 269 0
	beqz.n	a4, .L89
	.loc 1 270 0
	l32i	a15, a3, 104
	l32i	a14, a3, 96
	l32i	a13, a3, 100
	l32i	a12, a3, 88
	l32r	a11, .LC100
	mov.n	a10, a2
	call8	fprintf
.LVL121:
.L89:
	.loc 1 274 0
	beqz.n	a5, .L84
	.loc 1 275 0
	l32i	a13, a3, 120
	l32i	a12, a3, 116
	l32r	a11, .LC102
	mov.n	a10, a2
	call8	fprintf
.LVL122:
.L84:
	retw.n
.LFE29:
	.size	sdmmc_card_print_info, .-sdmmc_card_print_info
	.section	.rodata.str1.1
.LC104:
	.string	"\033[0;33mW (%d) %s: slot width set to 4, but host flags don't have 4 line mode enabled; using 1 line mode\033[0m\n"
	.section	.text.sdmmc_fix_host_flags,"ax",@progbits
	.literal_position
	.literal .LC103, .LC5
	.literal .LC105, .LC104
	.align	4
	.global	sdmmc_fix_host_flags
	.type	sdmmc_fix_host_flags, @function
sdmmc_fix_host_flags:
.LFB30:
	.loc 1 280 0
.LVL123:
	entry	sp, 32
.LCFI9:
.LVL124:
	.loc 1 286 0
	l32i.n	a3, a2, 24
	l32i.n	a10, a2, 4
	callx8	a3
.LVL125:
	.loc 1 287 0
	bnei	a10, 1, .L103
	.loc 1 288 0 discriminator 1
	l32i.n	a8, a2, 0
	.loc 1 287 0 discriminator 1
	movi.n	a3, 6
	bnone	a8, a3, .L104
	.loc 1 290 0
	movi.n	a3, -8
	and	a3, a8, a3
	or	a10, a3, a10
.LVL126:
	s32i.n	a10, a2, 0
	j	.L104
.LVL127:
.L103:
	.loc 1 291 0
	bnei	a10, 4, .L104
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 0
	bnone	a9, a10, .L104
	.loc 1 298 0 is_stmt 1
	movi.n	a8, -8
	.loc 1 292 0
	movi.n	a3, 2
	.loc 1 298 0
	and	a8, a9, a8
	.loc 1 292 0
	bany	a9, a3, .L112
	.loc 1 293 0 discriminator 4
	call8	esp_log_timestamp
.LVL128:
	l32r	a11, .LC103
	l32r	a12, .LC105
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a3
	call8	esp_log_write
.LVL129:
	.loc 1 295 0 discriminator 4
	l32i.n	a3, a2, 0
	movi.n	a8, -8
	and	a8, a8, a3
	movi.n	a3, 1
	j	.L112
.L112:
	.loc 1 298 0
	or	a3, a8, a3
	s32i.n	a3, a2, 0
.L104:
	.loc 1 302 0
	movi.n	a2, 0
.LVL130:
	retw.n
.LFE30:
	.size	sdmmc_fix_host_flags, .-sdmmc_fix_host_flags
	.section	.rodata.__func__$5620,"a",@progbits
	.type	__func__$5620, @object
	.size	__func__$5620, 22
__func__$5620:
	.string	"sdmmc_flip_byte_order"
	.section	.rodata.__func__$5605,"a",@progbits
	.type	__func__$5605, @object
	.size	__func__$5605, 26
__func__$5605:
	.string	"sdmmc_init_host_frequency"
	.section	.rodata.__func__$5589,"a",@progbits
	.type	__func__$5589, @object
	.size	__func__$5589, 23
__func__$5589:
	.string	"sdmmc_init_select_card"
	.section	.rodata.__func__$5583,"a",@progbits
	.type	__func__$5583, @object
	.size	__func__$5583, 15
__func__$5583:
	.string	"sdmmc_init_csd"
	.section	.rodata.__func__$5579,"a",@progbits
	.type	__func__$5579, @object
	.size	__func__$5579, 15
__func__$5579:
	.string	"sdmmc_init_cid"
	.section	.rodata.__func__$5572,"a",@progbits
	.type	__func__$5572, @object
	.size	__func__$5572, 15
__func__$5572:
	.string	"sdmmc_init_ocr"
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/_types.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF243
	.byte	0xc
	.4byte	.LASF244
	.4byte	.LASF245
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x27
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x165
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0xfd
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4c
	.4byte	0xd2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4d
	.4byte	0xfd
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x135
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4e
	.4byte	0xde
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4f
	.4byte	0x114
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x53
	.4byte	0xaa
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x16
	.4byte	0x158
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2f
	.4byte	0x1b2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1b8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x8
	.4byte	0x14d
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x241
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x37
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x38
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x39
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3d
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3e
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x281
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x49
	.4byte	0x281
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4a
	.4byte	0x281
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4c
	.4byte	0x14d
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4f
	.4byte	0x14d
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14b
	.4byte	0x291
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x54
	.4byte	0x2ce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x55
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x56
	.4byte	0x2d4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x57
	.4byte	0x2eb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x291
	.uleb128 0x8
	.4byte	0x2e4
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x241
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x316
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x74
	.4byte	0x316
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x75
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x462
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x176
	.4byte	0x2c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17f
	.4byte	0x5b0
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x181
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x183
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x184
	.4byte	0x5e1
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7e4
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x188
	.4byte	0x7f5
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18a
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18d
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18e
	.4byte	0x5b0
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x190
	.4byte	0x7fb
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x191
	.4byte	0x801
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.4byte	0x5b0
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x195
	.4byte	0x812
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x199
	.4byte	0x2ce
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19a
	.4byte	0x291
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19d
	.4byte	0x65c
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19e
	.4byte	0x697
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.4byte	0x81e
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x5b0
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31c
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x592
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x316
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb7
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xb8
	.4byte	0x5e
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2f1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xba
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xbd
	.4byte	0x462
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc1
	.4byte	0x14b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc3
	.4byte	0x5bd
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc5
	.4byte	0x5ec
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xc8
	.4byte	0x610
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xc9
	.4byte	0x62a
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2f1
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x316
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x2c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd1
	.4byte	0x630
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd2
	.4byte	0x640
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2f1
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xd8
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xd9
	.4byte	0xb5
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe0
	.4byte	0x140
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe2
	.4byte	0x135
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe3
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF95
	.uleb128 0xf
	.byte	0x4
	.4byte	0x592
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x18
	.4byte	0x5b6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x16
	.4byte	0xc7
	.4byte	0x610
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0xc7
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x62a
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x616
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x640
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x650
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x11d
	.4byte	0x468
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x691
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x123
	.4byte	0x691
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x124
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x125
	.4byte	0x697
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x650
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6df
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6df
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6df
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x140
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x143
	.4byte	0x98
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x6ef
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x731
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x159
	.4byte	0x1b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15a
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x15b
	.4byte	0x1b2
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x15c
	.4byte	0x731
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7d4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x163
	.4byte	0x5b0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x164
	.4byte	0x135
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x165
	.4byte	0x135
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x166
	.4byte	0x135
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x167
	.4byte	0x7d4
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x168
	.4byte	0x2c
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x169
	.4byte	0x135
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16a
	.4byte	0x135
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16b
	.4byte	0x135
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x16c
	.4byte	0x135
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x16d
	.4byte	0x135
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x7e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ef
	.uleb128 0x19
	.4byte	0x7f5
	.uleb128 0x17
	.4byte	0x462
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x19
	.4byte	0x812
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x818
	.uleb128 0xf
	.byte	0x4
	.4byte	0x807
	.uleb128 0xf
	.byte	0x4
	.4byte	0x737
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x7
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x7
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x7
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x7
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x25
	.byte	0xd
	.byte	0x1f
	.4byte	0x88c
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x8
	.byte	0x34
	.4byte	0x650
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x9
	.byte	0x18
	.4byte	0x83a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF135
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xa
	.byte	0x76
	.4byte	0x845
	.uleb128 0x18
	.4byte	0x5e1
	.uleb128 0xa
	.byte	0x1c
	.byte	0xb
	.byte	0x1d
	.4byte	0x916
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xb
	.byte	0x1e
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xb
	.byte	0x1f
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xb
	.byte	0x20
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xb
	.byte	0x21
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xb
	.byte	0x22
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xb
	.byte	0x23
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xb
	.byte	0x24
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0xb
	.byte	0x25
	.4byte	0x8b9
	.uleb128 0xa
	.byte	0x1c
	.byte	0xb
	.byte	0x2a
	.4byte	0x972
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xb
	.byte	0x2b
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xb
	.byte	0x2c
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xb
	.byte	0x2d
	.4byte	0x7d4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xb
	.byte	0x2e
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xb
	.byte	0x2f
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xb
	.byte	0x30
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0xb
	.byte	0x31
	.4byte	0x921
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x36
	.4byte	0x99e
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xb
	.byte	0x37
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xb
	.byte	0x38
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xb
	.byte	0x39
	.4byte	0x97d
	.uleb128 0xa
	.byte	0x1
	.byte	0xb
	.byte	0x3e
	.4byte	0x9be
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xb
	.byte	0x3f
	.4byte	0x824
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xb
	.byte	0x40
	.4byte	0x9a9
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xb
	.byte	0x45
	.4byte	0x9d4
	.uleb128 0x8
	.4byte	0x845
	.4byte	0x9e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x30
	.byte	0xb
	.byte	0x51
	.4byte	0xa59
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xb
	.byte	0x52
	.4byte	0x845
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0xb
	.byte	0x53
	.4byte	0x845
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xb
	.byte	0x54
	.4byte	0x9c9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xb
	.byte	0x55
	.4byte	0x14b
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xb
	.byte	0x56
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xb
	.byte	0x57
	.4byte	0x33
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xb
	.byte	0x58
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xb
	.byte	0x74
	.4byte	0x897
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xb
	.byte	0x75
	.4byte	0x2c
	.byte	0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0xb
	.byte	0x76
	.4byte	0x9e4
	.uleb128 0xa
	.byte	0x38
	.byte	0xb
	.byte	0x7e
	.4byte	0xb15
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xb
	.byte	0x7f
	.4byte	0x845
	.byte	0
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xb
	.byte	0x85
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.byte	0x86
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xb
	.byte	0x8c
	.4byte	0xb15
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xb
	.byte	0x8d
	.4byte	0xb21
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xb
	.byte	0x8e
	.4byte	0xb3b
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xb
	.byte	0x8f
	.4byte	0xb50
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xb
	.byte	0x90
	.4byte	0xb6a
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xb
	.byte	0x91
	.4byte	0xb84
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xb
	.byte	0x92
	.4byte	0xba4
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xb
	.byte	0x93
	.4byte	0xb21
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb
	.byte	0x94
	.4byte	0xbb9
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xb
	.byte	0x95
	.4byte	0xbd3
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xb
	.byte	0x96
	.4byte	0x2c
	.byte	0x34
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF180
	.uleb128 0x1c
	.4byte	0x897
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb1c
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xb3b
	.uleb128 0x17
	.4byte	0x2c
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb27
	.uleb128 0x16
	.4byte	0x33
	.4byte	0xb50
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb41
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xb6a
	.uleb128 0x17
	.4byte	0x2c
	.uleb128 0x17
	.4byte	0x8a2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb56
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xb84
	.uleb128 0x17
	.4byte	0x2c
	.uleb128 0x17
	.4byte	0x845
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb70
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xb9e
	.uleb128 0x17
	.4byte	0x2c
	.uleb128 0x17
	.4byte	0xb9e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa59
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb8a
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xbb9
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbaa
	.uleb128 0x16
	.4byte	0x897
	.4byte	0xbd3
	.uleb128 0x17
	.4byte	0x2c
	.uleb128 0x17
	.4byte	0x8a9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbbf
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0xb
	.byte	0x97
	.4byte	0xa64
	.uleb128 0xa
	.byte	0x88
	.byte	0xb
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xb
	.byte	0x9d
	.4byte	0xbd9
	.byte	0
	.uleb128 0xe
	.string	"ocr"
	.byte	0xb
	.byte	0x9e
	.4byte	0x845
	.byte	0x38
	.uleb128 0xe
	.string	"cid"
	.byte	0xb
	.byte	0x9f
	.4byte	0x972
	.byte	0x3c
	.uleb128 0xe
	.string	"csd"
	.byte	0xb
	.byte	0xa0
	.4byte	0x916
	.byte	0x58
	.uleb128 0xe
	.string	"scr"
	.byte	0xb
	.byte	0xa1
	.4byte	0x99e
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xb
	.byte	0xa2
	.4byte	0x9be
	.byte	0x7c
	.uleb128 0xe
	.string	"rca"
	.byte	0xb
	.byte	0xa3
	.4byte	0x82f
	.byte	0x7e
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.byte	0xa4
	.4byte	0x82f
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0xb
	.byte	0xa5
	.4byte	0x845
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0xb
	.byte	0xa6
	.4byte	0x845
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0xb
	.byte	0xa7
	.4byte	0x845
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0xb
	.byte	0xa8
	.4byte	0x845
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0xb
	.byte	0xa9
	.4byte	0x845
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0xb
	.byte	0xaa
	.4byte	0x845
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0xb
	.byte	0xab
	.4byte	0x845
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF191
	.byte	0xb
	.byte	0xac
	.4byte	0xbe4
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0xc
	.byte	0x78
	.4byte	0x8a2
	.byte	0x3
	.4byte	0xcdd
	.uleb128 0x1f
	.4byte	.LASF194
	.byte	0xc
	.byte	0x78
	.4byte	0xcdd
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xce3
	.uleb128 0x18
	.4byte	0xcb6
	.uleb128 0x1e
	.4byte	.LASF193
	.byte	0xc
	.byte	0x7d
	.4byte	0x845
	.byte	0x3
	.4byte	0xd04
	.uleb128 0x1f
	.4byte	.LASF195
	.byte	0xc
	.byte	0x7d
	.4byte	0xb15
	.byte	0
	.uleb128 0x20
	.4byte	.LASF197
	.byte	0x1
	.byte	0x16
	.4byte	0x897
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3e
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0x16
	.4byte	0xe3e
	.4byte	.LLST0
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0x18
	.4byte	0x897
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.byte	0x1e
	.4byte	0x845
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0xe54
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5572
	.uleb128 0x25
	.4byte	.LVL3
	.4byte	0x1732
	.4byte	0xd79
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0x1732
	.4byte	0xd99
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0x1748
	.4byte	0xde0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5572
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL14
	.4byte	0x1753
	.4byte	0xdfa
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
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL17
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5572
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcb6
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0xe54
	.uleb128 0x9
	.4byte	0x10d
	.byte	0xe
	.byte	0
	.uleb128 0x18
	.4byte	0xe44
	.uleb128 0x20
	.4byte	.LASF198
	.byte	0x1
	.byte	0x42
	.4byte	0x897
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf97
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0x42
	.4byte	0xe3e
	.4byte	.LLST3
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0x44
	.4byte	0x897
	.4byte	.LLST4
	.uleb128 0x29
	.string	"csd"
	.byte	0x1
	.byte	0x45
	.4byte	0x916
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.4byte	.LASF199
	.byte	0x1
	.byte	0x46
	.4byte	0x9c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0xf97
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5579
	.uleb128 0x25
	.4byte	.LVL21
	.4byte	0x175e
	.4byte	0xed6
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
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x27
	.4byte	.LVL23
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0x1769
	.4byte	0xefa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 126
	.byte	0
	.uleb128 0x27
	.4byte	.LVL27
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0x1774
	.4byte	0xf1e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0x177f
	.4byte	0xf41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 60
	.byte	0
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0x178a
	.4byte	0xf5b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 60
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL41
	.4byte	0x1795
	.4byte	0xf7e
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
	.byte	0x72
	.sleb128 60
	.byte	0
	.uleb128 0x27
	.4byte	.LVL44
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL45
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xe44
	.uleb128 0x20
	.4byte	.LASF201
	.byte	0x1
	.byte	0x72
	.4byte	0x897
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c4
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0x72
	.4byte	0xe3e
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0x10c4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5583
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.byte	0x76
	.4byte	0x897
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.byte	0x7b
	.4byte	0x10c9
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LVL48
	.4byte	0x17a0
	.4byte	0x101e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5583
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x25
	.4byte	.LVL49
	.4byte	0x1774
	.4byte	0x1039
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 88
	.byte	0
	.uleb128 0x27
	.4byte	.LVL51
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL52
	.4byte	0x1748
	.4byte	0x1080
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5583
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL54
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5583
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xe44
	.uleb128 0x18
	.4byte	0x33
	.uleb128 0x20
	.4byte	.LASF203
	.byte	0x1
	.byte	0x85
	.4byte	0x897
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1199
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0x85
	.4byte	0xe3e
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0x11a9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5589
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.byte	0x88
	.4byte	0x897
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0x17a0
	.4byte	0x1141
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x87
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5589
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x25
	.4byte	.LVL59
	.4byte	0x17ab
	.4byte	0x1155
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL62
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5589
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x11a9
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x16
	.byte	0
	.uleb128 0x18
	.4byte	0x1199
	.uleb128 0x20
	.4byte	.LASF204
	.byte	0x1
	.byte	0x90
	.4byte	0x897
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1227
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0x90
	.4byte	0xe3e
	.4byte	.LLST8
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0x92
	.4byte	0x897
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LASF200
	.4byte	0x1237
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0x17b6
	.4byte	0x1202
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL67
	.4byte	0x17c1
	.4byte	0x1216
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL72
	.4byte	0x17cc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x1237
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.4byte	0x1227
	.uleb128 0x20
	.4byte	.LASF205
	.byte	0x1
	.byte	0xa3
	.4byte	0x897
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d7
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0xa3
	.4byte	0xe3e
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa5
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	.LASF200
	.4byte	0x12e7
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xb0
	.4byte	0x897
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL79
	.4byte	0x1748
	.4byte	0x12cd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x12e7
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x19
	.byte	0
	.uleb128 0x18
	.4byte	0x12d7
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0x1
	.byte	0xb9
	.4byte	0x897
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1455
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0x1
	.byte	0xb9
	.4byte	0xe3e
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0x1455
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5605
	.uleb128 0x2a
	.4byte	.LASF207
	.byte	0x1
	.byte	0xc0
	.4byte	0x145a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF208
	.byte	0x1
	.byte	0xc6
	.4byte	0x145f
	.byte	0x4
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0x1
	.byte	0xc8
	.4byte	0x845
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1380
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.4byte	0x2c
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x23
	.4byte	.LASF210
	.byte	0x1
	.byte	0xca
	.4byte	0x845
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x13ae
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xd3
	.4byte	0x897
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LVL92
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL94
	.4byte	0x173d
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x1429
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.byte	0xdf
	.4byte	0x897
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LVL96
	.4byte	0x173d
	.uleb128 0x25
	.4byte	.LVL97
	.4byte	0x1748
	.4byte	0x1401
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x1410
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL100
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL102
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL87
	.4byte	0x17a0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5605
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x12d7
	.uleb128 0x18
	.4byte	0x9d4
	.uleb128 0x18
	.4byte	0x2c
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1524
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe8
	.4byte	0x1524
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF211
	.byte	0x1
	.byte	0xe8
	.4byte	0x33
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF200
	.4byte	0x153a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5620
	.uleb128 0x23
	.4byte	.LASF212
	.byte	0x1
	.byte	0xeb
	.4byte	0x10c9
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x14f8
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xec
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x23
	.4byte	.LASF213
	.byte	0x1
	.byte	0xed
	.4byte	0x845
	.4byte	.LLST23
	.uleb128 0x23
	.4byte	.LASF214
	.byte	0x1
	.byte	0xee
	.4byte	0x845
	.4byte	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL104
	.4byte	0x17a0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xea
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5620
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x845
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x153a
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x15
	.byte	0
	.uleb128 0x18
	.4byte	0x152a
	.uleb128 0x33
	.4byte	.LASF216
	.byte	0x1
	.byte	0xf4
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166a
	.uleb128 0x34
	.4byte	.LASF217
	.byte	0x1
	.byte	0xf4
	.4byte	0x166a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF194
	.byte	0x1
	.byte	0xf4
	.4byte	0xcdd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF218
	.byte	0x1
	.byte	0xf6
	.4byte	0x8a2
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LASF219
	.byte	0x1
	.byte	0xf7
	.4byte	0x8a2
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	.LASF220
	.byte	0x1
	.byte	0xf8
	.4byte	0x5e1
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LVL115
	.4byte	0x17d7
	.4byte	0x15bf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x73
	.sleb128 68
	.byte	0
	.uleb128 0x25
	.4byte	.LVL117
	.4byte	0x17d7
	.4byte	0x15dc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.byte	0
	.uleb128 0x25
	.4byte	.LVL118
	.4byte	0x17d7
	.4byte	0x15f9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x25
	.4byte	.LVL119
	.4byte	0x17d7
	.4byte	0x1616
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.uleb128 0x25
	.4byte	.LVL120
	.4byte	0x17d7
	.4byte	0x1633
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.byte	0
	.uleb128 0x25
	.4byte	.LVL121
	.4byte	0x17d7
	.4byte	0x1650
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.byte	0
	.uleb128 0x28
	.4byte	.LVL122
	.4byte	0x17d7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x88c
	.uleb128 0x35
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x117
	.4byte	0x897
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x171b
	.uleb128 0x36
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x117
	.4byte	0xe3e
	.4byte	.LLST28
	.uleb128 0x37
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x119
	.4byte	0x171b
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x11a
	.4byte	0x171b
	.byte	0x2
	.uleb128 0x37
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x11b
	.4byte	0x171b
	.byte	0x4
	.uleb128 0x37
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x11c
	.4byte	0x171b
	.byte	0x7
	.uleb128 0x38
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x11e
	.4byte	0x2c
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LVL125
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0x173d
	.uleb128 0x28
	.4byte	.LVL129
	.4byte	0x1748
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC104
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x845
	.uleb128 0x29
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0x8b4
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x39
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xc
	.byte	0x34
	.uleb128 0x39
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xd
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xd
	.byte	0x6b
	.uleb128 0x39
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xc
	.byte	0x35
	.uleb128 0x39
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xc
	.byte	0x37
	.uleb128 0x39
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xc
	.byte	0x38
	.uleb128 0x39
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xc
	.byte	0x3d
	.uleb128 0x39
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xc
	.byte	0x5f
	.uleb128 0x39
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xc
	.byte	0x4e
	.uleb128 0x39
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0xc
	.byte	0x36
	.uleb128 0x39
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xe
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xc
	.byte	0x3e
	.uleb128 0x39
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xc
	.byte	0x46
	.uleb128 0x39
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xc
	.byte	0x54
	.uleb128 0x39
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xc
	.byte	0x61
	.uleb128 0x39
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x8
	.byte	0xae
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
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x75
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x10
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x73
	.sleb128 100
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL63
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xa
	.2byte	0x106
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xa
	.2byte	0x106
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xa
	.2byte	0x106
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xa
	.2byte	0x106
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107
	.4byte	.LFE28
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL123
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF159:
	.string	"response"
.LASF3:
	.string	"size_t"
.LASF21:
	.string	"sizetype"
.LASF23:
	.string	"__value"
.LASF75:
	.string	"__sf"
.LASF84:
	.string	"_read"
.LASF85:
	.string	"_write"
.LASF124:
	.string	"int32_t"
.LASF71:
	.string	"_asctime_buf"
.LASF67:
	.string	"_cvtlen"
.LASF222:
	.string	"width_1bit"
.LASF200:
	.string	"__func__"
.LASF33:
	.string	"__tm"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF89:
	.string	"_nbuf"
.LASF34:
	.string	"__tm_sec"
.LASF115:
	.string	"_l64a_buf"
.LASF151:
	.string	"sdmmc_cid_t"
.LASF92:
	.string	"_lock"
.LASF220:
	.string	"type"
.LASF102:
	.string	"_mult"
.LASF192:
	.string	"host_is_spi"
.LASF19:
	.string	"__wch"
.LASF144:
	.string	"sdmmc_csd_t"
.LASF4:
	.string	"__uint8_t"
.LASF80:
	.string	"_file"
.LASF43:
	.string	"_on_exit_args"
.LASF117:
	.string	"_mbrlen_state"
.LASF16:
	.string	"long int"
.LASF223:
	.string	"width_4bit"
.LASF107:
	.string	"_result_k"
.LASF54:
	.string	"_size"
.LASF70:
	.string	"_localtime_buf"
.LASF174:
	.string	"set_card_clk"
.LASF173:
	.string	"set_bus_ddr_mode"
.LASF164:
	.string	"error"
.LASF38:
	.string	"__tm_mon"
.LASF168:
	.string	"max_freq_khz"
.LASF110:
	.string	"_misc_reent"
.LASF63:
	.string	"_current_category"
.LASF219:
	.string	"print_csd"
.LASF2:
	.string	"signed char"
.LASF122:
	.string	"uint8_t"
.LASF5:
	.string	"unsigned char"
.LASF239:
	.string	"sdmmc_enable_hs_mode_and_check"
.LASF175:
	.string	"do_transaction"
.LASF55:
	.string	"_reent"
.LASF135:
	.string	"_Bool"
.LASF95:
	.string	"char"
.LASF50:
	.string	"_fns"
.LASF172:
	.string	"get_bus_width"
.LASF87:
	.string	"_close"
.LASF139:
	.string	"capacity"
.LASF7:
	.string	"__uint16_t"
.LASF243:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF57:
	.string	"_stdin"
.LASF143:
	.string	"tr_speed"
.LASF163:
	.string	"flags"
.LASF128:
	.string	"ESP_LOG_ERROR"
.LASF203:
	.string	"sdmmc_init_select_card"
.LASF217:
	.string	"stream"
.LASF216:
	.string	"sdmmc_card_print_info"
.LASF176:
	.string	"deinit"
.LASF83:
	.string	"_cookie"
.LASF234:
	.string	"sdmmc_mmc_decode_cid"
.LASF31:
	.string	"_wds"
.LASF213:
	.string	"left"
.LASF72:
	.string	"_sig_func"
.LASF154:
	.string	"sdmmc_scr_t"
.LASF91:
	.string	"_offset"
.LASF68:
	.string	"_cvtbuf"
.LASF146:
	.string	"oem_id"
.LASF237:
	.string	"__assert_func"
.LASF204:
	.string	"sdmmc_init_card_hs_mode"
.LASF194:
	.string	"card"
.LASF11:
	.string	"__uint64_t"
.LASF108:
	.string	"_p5s"
.LASF27:
	.string	"long unsigned int"
.LASF193:
	.string	"get_host_ocr"
.LASF78:
	.string	"__sFILE"
.LASF62:
	.string	"__sdidinit"
.LASF94:
	.string	"_flags2"
.LASF195:
	.string	"voltage"
.LASF191:
	.string	"sdmmc_card_t"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF56:
	.string	"_errno"
.LASF77:
	.string	"_signal_buf"
.LASF149:
	.string	"serial"
.LASF32:
	.string	"_Bigint"
.LASF199:
	.string	"raw_cid"
.LASF29:
	.string	"_maxwds"
.LASF225:
	.string	"width_mask"
.LASF65:
	.string	"__cleanup"
.LASF73:
	.string	"_atexit0"
.LASF165:
	.string	"timeout_ms"
.LASF162:
	.string	"blklen"
.LASF9:
	.string	"__uint32_t"
.LASF61:
	.string	"_emergency"
.LASF13:
	.string	"_lock_t"
.LASF202:
	.string	"max_sdsc_capacity"
.LASF10:
	.string	"long long int"
.LASF206:
	.string	"sdmmc_init_host_frequency"
.LASF138:
	.string	"mmc_ver"
.LASF184:
	.string	"is_mem"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF98:
	.string	"_niobs"
.LASF74:
	.string	"__sglue"
.LASF214:
	.string	"right"
.LASF178:
	.string	"io_int_wait"
.LASF66:
	.string	"_gamma_signgam"
.LASF209:
	.string	"selected_freq"
.LASF134:
	.string	"esp_err_t"
.LASF64:
	.string	"_current_locale"
.LASF109:
	.string	"_freelist"
.LASF99:
	.string	"_iobs"
.LASF97:
	.string	"_glue"
.LASF30:
	.string	"_sign"
.LASF189:
	.string	"is_ddr"
.LASF180:
	.string	"float"
.LASF166:
	.string	"sdmmc_command_t"
.LASF245:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF0:
	.string	"unsigned int"
.LASF142:
	.string	"card_command_class"
.LASF140:
	.string	"sector_size"
.LASF224:
	.string	"width_8bit"
.LASF120:
	.string	"_wcrtomb_state"
.LASF171:
	.string	"set_bus_width"
.LASF208:
	.string	"n_freq_values"
.LASF236:
	.string	"sdmmc_send_cmd_send_cid"
.LASF37:
	.string	"__tm_mday"
.LASF129:
	.string	"ESP_LOG_WARN"
.LASF88:
	.string	"_ubuf"
.LASF59:
	.string	"_stderr"
.LASF113:
	.string	"_wctomb_state"
.LASF93:
	.string	"_mbstate"
.LASF104:
	.string	"_rand_next"
.LASF79:
	.string	"_flags"
.LASF161:
	.string	"datalen"
.LASF48:
	.string	"_atexit"
.LASF22:
	.string	"__count"
.LASF132:
	.string	"ESP_LOG_VERBOSE"
.LASF40:
	.string	"__tm_wday"
.LASF215:
	.string	"sdmmc_flip_byte_order"
.LASF207:
	.string	"freq_values"
.LASF145:
	.string	"mfg_id"
.LASF41:
	.string	"__tm_yday"
.LASF169:
	.string	"io_voltage"
.LASF157:
	.string	"sdmmc_response_t"
.LASF141:
	.string	"read_block_len"
.LASF133:
	.string	"FILE"
.LASF101:
	.string	"_seed"
.LASF212:
	.string	"n_words"
.LASF196:
	.string	"host_ocr"
.LASF86:
	.string	"_seek"
.LASF17:
	.string	"_fpos_t"
.LASF20:
	.string	"__wchb"
.LASF152:
	.string	"sd_spec"
.LASF114:
	.string	"_mbtowc_state"
.LASF228:
	.string	"esp_log_timestamp"
.LASF211:
	.string	"size"
.LASF148:
	.string	"revision"
.LASF12:
	.string	"long long unsigned int"
.LASF156:
	.string	"sdmmc_ext_csd_t"
.LASF158:
	.string	"opcode"
.LASF123:
	.string	"uint16_t"
.LASF45:
	.string	"_dso_handle"
.LASF100:
	.string	"_rand48"
.LASF58:
	.string	"_stdout"
.LASF183:
	.string	"ext_csd"
.LASF181:
	.string	"sdmmc_host_t"
.LASF238:
	.string	"sdmmc_send_cmd_select_card"
.LASF90:
	.string	"_blksize"
.LASF53:
	.string	"_base"
.LASF198:
	.string	"sdmmc_init_cid"
.LASF127:
	.string	"ESP_LOG_NONE"
.LASF136:
	.string	"TickType_t"
.LASF111:
	.string	"_strtok_last"
.LASF118:
	.string	"_mbrtowc_state"
.LASF227:
	.string	"sdmmc_send_cmd_send_op_cond"
.LASF25:
	.string	"_flock_t"
.LASF130:
	.string	"ESP_LOG_INFO"
.LASF96:
	.string	"__FILE"
.LASF137:
	.string	"csd_ver"
.LASF185:
	.string	"is_sdio"
.LASF24:
	.string	"_mbstate_t"
.LASF69:
	.string	"_r48"
.LASF186:
	.string	"is_mmc"
.LASF18:
	.string	"wint_t"
.LASF205:
	.string	"sdmmc_init_host_bus_width"
.LASF28:
	.string	"_next"
.LASF82:
	.string	"_data"
.LASF170:
	.string	"init"
.LASF187:
	.string	"num_io_functions"
.LASF182:
	.string	"host"
.LASF235:
	.string	"sdmmc_decode_cid"
.LASF147:
	.string	"name"
.LASF242:
	.string	"fprintf"
.LASF153:
	.string	"bus_width"
.LASF232:
	.string	"sdmmc_send_cmd_set_relative_addr"
.LASF112:
	.string	"_mblen_state"
.LASF6:
	.string	"short int"
.LASF126:
	.string	"uint64_t"
.LASF197:
	.string	"sdmmc_init_ocr"
.LASF46:
	.string	"_fntypes"
.LASF39:
	.string	"__tm_year"
.LASF221:
	.string	"sdmmc_fix_host_flags"
.LASF177:
	.string	"io_int_enable"
.LASF81:
	.string	"_lbfsize"
.LASF60:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF131:
	.string	"ESP_LOG_DEBUG"
.LASF230:
	.string	"sdmmc_send_cmd_read_ocr"
.LASF52:
	.string	"__sbuf"
.LASF47:
	.string	"_is_cxa"
.LASF244:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.c"
.LASF179:
	.string	"command_timeout_ms"
.LASF105:
	.string	"_mprec"
.LASF76:
	.string	"_misc"
.LASF26:
	.string	"__ULong"
.LASF125:
	.string	"uint32_t"
.LASF106:
	.string	"_result"
.LASF218:
	.string	"print_scr"
.LASF233:
	.string	"sdmmc_send_cmd_send_csd"
.LASF190:
	.string	"reserved"
.LASF241:
	.string	"sdmmc_mmc_enable_hs_mode"
.LASF15:
	.string	"_off_t"
.LASF103:
	.string	"_add"
.LASF210:
	.string	"freq"
.LASF1:
	.string	"short unsigned int"
.LASF201:
	.string	"sdmmc_init_csd"
.LASF36:
	.string	"__tm_hour"
.LASF155:
	.string	"power_class"
.LASF167:
	.string	"slot"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF8:
	.string	"__int32_t"
.LASF231:
	.string	"sdmmc_send_cmd_all_send_cid"
.LASF188:
	.string	"log_bus_width"
.LASF44:
	.string	"_fnargs"
.LASF42:
	.string	"__tm_isdst"
.LASF229:
	.string	"esp_log_write"
.LASF160:
	.string	"data"
.LASF150:
	.string	"date"
.LASF35:
	.string	"__tm_min"
.LASF240:
	.string	"sdmmc_io_enable_hs_mode"
.LASF116:
	.string	"_getdate_err"
.LASF226:
	.string	"slot_bit_width"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
