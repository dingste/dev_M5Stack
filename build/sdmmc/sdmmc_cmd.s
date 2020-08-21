	.file	"sdmmc_cmd.c"
	.text
.Ltext0:
	.section	.text.sdmmc_send_cmd,"ax",@progbits
	.align	4
	.global	sdmmc_send_cmd
	.type	sdmmc_send_cmd, @function
sdmmc_send_cmd:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_cmd.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	l32i.n	a8, a2, 52
	beqz.n	a8, .L2
	j	.L6
.L2:
	.loc 1 27 0
	l32i.n	a8, a3, 44
	bnez.n	a8, .L3
	.loc 1 28 0
	movi	a8, 0x3e8
.L6:
	s32i.n	a8, a3, 44
.L3:
.LVL1:
	.loc 1 34 0
	l32i.n	a8, a2, 36
	l32i.n	a10, a2, 4
	mov.n	a11, a3
	callx8	a8
.LVL2:
	.loc 1 35 0
	bnez.n	a10, .L4
.LVL3:
	.loc 1 47 0
	l32i.n	a10, a3, 40
.LVL4:
.L4:
	.loc 1 48 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE21:
	.size	sdmmc_send_cmd, .-sdmmc_send_cmd
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"sdmmc_cmd"
.LC3:
	.string	"\033[0;33mW (%d) %s: card doesn't support APP_CMD\033[0m\n"
	.section	.text.sdmmc_send_app_cmd,"ax",@progbits
	.literal_position
	.literal .LC0, 7168
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	sdmmc_send_app_cmd
	.type	sdmmc_send_app_cmd, @function
sdmmc_send_app_cmd:
.LFB22:
	.loc 1 51 0
.LVL6:
	entry	sp, 80
.LCFI1:
	.loc 1 52 0
	movi.n	a11, 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL7:
	movi.n	a8, 0x37
	s32i.n	a8, sp, 0
	l16ui	a8, a2, 126
	.loc 1 57 0
	mov.n	a11, sp
	.loc 1 52 0
	slli	a8, a8, 16
	s32i.n	a8, sp, 4
	l32r	a8, .LC0
	.loc 1 57 0
	mov.n	a10, a2
	.loc 1 52 0
	s32i.n	a8, sp, 36
	.loc 1 57 0
	call8	sdmmc_send_cmd
.LVL8:
	.loc 1 58 0
	bnez.n	a10, .L8
.LVL9:
	.loc 1 62 0
	l32i.n	a8, a2, 0
	bbsi	a8, 3, .L9
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 8
	bbsi	a8, 5, .L9
.LVL10:
.LBB38:
.LBB39:
	.loc 1 63 0 is_stmt 1
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC2
	l32r	a12, .LC4
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL12:
	movi	a10, 0x106
	j	.L8
.LVL13:
.L9:
.LBE39:
.LBE38:
	.loc 1 66 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL14:
	call8	sdmmc_send_cmd
.LVL15:
.L8:
	.loc 1 67 0
	mov.n	a2, a10
.LVL16:
	retw.n
.LFE22:
	.size	sdmmc_send_app_cmd, .-sdmmc_send_app_cmd
	.section	.text.sdmmc_send_cmd_go_idle_state,"ax",@progbits
	.literal_position
	.literal .LC5, 7168
	.align	4
	.global	sdmmc_send_cmd_go_idle_state
	.type	sdmmc_send_cmd_go_idle_state, @function
sdmmc_send_cmd_go_idle_state:
.LFB23:
	.loc 1 71 0
.LVL17:
	entry	sp, 80
.LCFI2:
	.loc 1 72 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL18:
	.loc 1 71 0
	mov.n	a3, a2
	.loc 1 76 0
	mov.n	a11, sp
	.loc 1 72 0
	movi.n	a2, 0x20
.LVL19:
	.loc 1 76 0
	mov.n	a10, a3
	.loc 1 72 0
	s32i.n	a2, sp, 36
	.loc 1 76 0
	call8	sdmmc_send_cmd
.LVL20:
	.loc 1 77 0
	l32i.n	a8, a3, 0
	.loc 1 76 0
	mov.n	a2, a10
.LVL21:
	.loc 1 77 0
	bbci	a8, 3, .L12
	.loc 1 85 0
	movi.n	a10, 2
	call8	vTaskDelay
.LVL22:
	.loc 1 87 0
	l32i.n	a8, sp, 36
	l32r	a2, .LC5
.LVL23:
	.loc 1 88 0
	mov.n	a11, sp
	.loc 1 87 0
	or	a2, a8, a2
	.loc 1 88 0
	mov.n	a10, a3
	.loc 1 87 0
	s32i.n	a2, sp, 36
	.loc 1 88 0
	call8	sdmmc_send_cmd
.LVL24:
	mov.n	a2, a10
.LVL25:
.L12:
	.loc 1 90 0
	bnez.n	a2, .L13
	.loc 1 91 0
	movi.n	a10, 2
	call8	vTaskDelay
.LVL26:
.L13:
	.loc 1 94 0
	retw.n
.LFE23:
	.size	sdmmc_send_cmd_go_idle_state, .-sdmmc_send_cmd_go_idle_state
	.section	.text.sdmmc_send_cmd_send_if_cond,"ax",@progbits
	.literal_position
	.literal .LC6, 16744448
	.literal .LC7, 7216
	.align	4
	.global	sdmmc_send_cmd_send_if_cond
	.type	sdmmc_send_cmd_send_if_cond, @function
sdmmc_send_cmd_send_if_cond:
.LFB24:
	.loc 1 98 0
.LVL27:
	entry	sp, 80
.LCFI3:
.LVL28:
	.loc 1 100 0
	movi.n	a11, 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL29:
	l32r	a8, .LC6
	movi.n	a4, 8
	and	a3, a3, a8
.LVL30:
	s32i.n	a4, sp, 0
	movi	a8, 0x1aa
	movi	a4, 0xaa
	moveqz	a8, a4, a3
	l32r	a3, .LC7
	.loc 1 105 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 100 0
	s32i.n	a8, sp, 4
	s32i.n	a3, sp, 36
	.loc 1 105 0
	call8	sdmmc_send_cmd
.LVL31:
	.loc 1 106 0
	bnez.n	a10, .L19
.LVL32:
	.loc 1 110 0
	l8ui	a3, sp, 8
	.loc 1 114 0
	sub	a3, a3, a4
	movi	a4, 0x108
	movnez	a10, a4, a3
.LVL33:
.L19:
	.loc 1 115 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LFE24:
	.size	sdmmc_send_cmd_send_if_cond, .-sdmmc_send_cmd_send_if_cond
	.section	.text.sdmmc_send_cmd_send_op_cond,"ax",@progbits
	.literal_position
	.literal .LC8, 4144
	.literal .LC10, -1610612737
	.literal .LC11, 1073741824
	.align	4
	.global	sdmmc_send_cmd_send_op_cond
	.type	sdmmc_send_cmd_send_op_cond, @function
sdmmc_send_cmd_send_op_cond:
.LFB25:
	.loc 1 118 0
.LVL35:
	entry	sp, 80
.LCFI4:
	.loc 1 121 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL36:
	.loc 1 137 0
	l32r	a7, .LC10
	l32r	a8, .LC11
	and	a7, a3, a7
	.loc 1 121 0
	movi	a5, 0x64
	.loc 1 127 0
	movi.n	a6, 3
	.loc 1 137 0
	or	a7, a7, a8
.LVL37:
.L32:
	.loc 1 129 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL38:
	.loc 1 131 0
	l32r	a8, .LC8
	.loc 1 130 0
	s32i.n	a3, sp, 4
	.loc 1 131 0
	s32i.n	a8, sp, 36
	.loc 1 132 0
	l32i	a8, a2, 128
	bbsi	a8, 18, .L24
	.loc 1 133 0
	movi.n	a8, 0x29
	.loc 1 134 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 133 0
	s32i.n	a8, sp, 0
	.loc 1 134 0
	call8	sdmmc_send_app_cmd
.LVL39:
	j	.L25
.LVL40:
.L24:
	.loc 1 138 0
	movi.n	a8, 1
	.loc 1 139 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 137 0
	s32i.n	a7, sp, 4
	.loc 1 138 0
	s32i.n	a8, sp, 0
	.loc 1 139 0
	call8	sdmmc_send_cmd
.LVL41:
.L25:
	.loc 1 142 0
	beqz.n	a10, .L26
	.loc 1 143 0
	addi.n	a6, a6, -1
.LVL42:
	bnez.n	a6, .L28
	j	.L34
.L26:
.LVL43:
	.loc 1 153 0
	l32i.n	a8, a2, 0
	l32i.n	a9, sp, 8
	bbsi	a8, 3, .L29
	.loc 1 154 0
	bltz	a9, .L30
	movi.n	a8, 1
	moveqz	a10, a8, a3
.LVL44:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L31
	j	.L30
.LVL45:
.L29:
	.loc 1 159 0
	bbci	a9, 0, .L30
.LVL46:
.L31:
	.loc 1 163 0
	movi.n	a10, 1
	call8	vTaskDelay
.LVL47:
.L28:
	addi.n	a5, a5, -1
.LVL48:
	.loc 1 128 0
	bnez.n	a5, .L32
	.loc 1 166 0
	movi	a2, 0x107
.LVL49:
	retw.n
.LVL50:
.L33:
	.loc 1 169 0
	s32i.n	a9, a4, 0
.L40:
	.loc 1 171 0
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L34:
	mov.n	a2, a10
.LVL53:
	retw.n
.LVL54:
.L30:
	.loc 1 168 0
	bnez.n	a4, .L33
	j	.L40
.LFE25:
	.size	sdmmc_send_cmd_send_op_cond, .-sdmmc_send_cmd_send_op_cond
	.section	.rodata.str1.1
.LC12:
	.string	"ocrp"
.LC15:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_cmd.c"
	.section	.text.sdmmc_send_cmd_read_ocr,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC14, __func__$5612
	.literal .LC16, .LC15
	.literal .LC17, 5680
	.align	4
	.global	sdmmc_send_cmd_read_ocr
	.type	sdmmc_send_cmd_read_ocr, @function
sdmmc_send_cmd_read_ocr:
.LFB26:
	.loc 1 175 0
.LVL55:
	entry	sp, 80
.LCFI5:
	.loc 1 176 0
	bnez.n	a3, .L42
	.loc 1 176 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	l32r	a10, .LC16
	movi	a11, 0xb0
	call8	__assert_func
.LVL56:
.L42:
	.loc 1 177 0 is_stmt 1
	movi.n	a11, 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL57:
	movi.n	a8, 0x3a
	s32i.n	a8, sp, 0
	l32r	a8, .LC17
	.loc 1 181 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 177 0
	s32i.n	a8, sp, 36
	.loc 1 181 0
	call8	sdmmc_send_cmd
.LVL58:
	.loc 1 182 0
	bnez.n	a10, .L43
	.loc 1 185 0
	l32i.n	a8, sp, 8
	s32i.n	a8, a3, 0
.L43:
	.loc 1 187 0
	mov.n	a2, a10
.LVL59:
	retw.n
.LFE26:
	.size	sdmmc_send_cmd_read_ocr, .-sdmmc_send_cmd_read_ocr
	.section	.rodata.str1.1
.LC18:
	.string	"out_raw_cid"
	.section	.text.sdmmc_send_cmd_all_send_cid,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.literal .LC20, __func__$5619
	.literal .LC21, .LC15
	.literal .LC22, 5680
	.align	4
	.global	sdmmc_send_cmd_all_send_cid
	.type	sdmmc_send_cmd_all_send_cid, @function
sdmmc_send_cmd_all_send_cid:
.LFB27:
	.loc 1 191 0
.LVL60:
	entry	sp, 80
.LCFI6:
	.loc 1 192 0
	bnez.n	a3, .L45
	.loc 1 192 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	l32r	a10, .LC21
	movi	a11, 0xc0
	call8	__assert_func
.LVL61:
.L45:
	.loc 1 193 0 is_stmt 1
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL62:
	movi.n	a8, 2
	s32i.n	a8, sp, 0
	l32r	a8, .LC22
	.loc 1 197 0
	mov.n	a10, a2
	mov.n	a11, sp
	.loc 1 193 0
	s32i.n	a8, sp, 36
	.loc 1 197 0
	call8	sdmmc_send_cmd
.LVL63:
	mov.n	a2, a10
.LVL64:
	.loc 1 198 0
	bnez.n	a10, .L46
	.loc 1 201 0
	movi.n	a12, 0x10
	addi.n	a11, sp, 8
	mov.n	a10, a3
	call8	memcpy
.LVL65:
.L46:
	.loc 1 203 0
	retw.n
.LFE27:
	.size	sdmmc_send_cmd_all_send_cid, .-sdmmc_send_cmd_all_send_cid
	.section	.rodata.str1.1
.LC23:
	.string	"out_cid"
.LC27:
	.string	"host_is_spi(card) && \"SEND_CID should only be used in SPI mode\""
.LC30:
	.string	"!card->is_mmc && \"MMC cards are not supported in SPI mode\""
	.section	.text.sdmmc_send_cmd_send_cid,"ax",@progbits
	.literal_position
	.literal .LC24, .LC23
	.literal .LC25, __func__$5626
	.literal .LC26, .LC15
	.literal .LC28, .LC27
	.literal .LC29, 262144
	.literal .LC31, .LC30
	.align	4
	.global	sdmmc_send_cmd_send_cid
	.type	sdmmc_send_cmd_send_cid, @function
sdmmc_send_cmd_send_cid:
.LFB28:
	.loc 1 206 0
.LVL66:
	entry	sp, 96
.LCFI7:
	.loc 1 207 0
	bnez.n	a3, .L48
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0xcf
	j	.L53
.L48:
.LVL67:
	.loc 1 208 0 is_stmt 1
	l32i.n	a4, a2, 0
	bbsi	a4, 3, .L49
	.loc 1 208 0 is_stmt 0 discriminator 3
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0xd0
.LVL68:
.L53:
	l32r	a10, .LC26
	call8	__assert_func
.LVL69:
.L49:
	.loc 1 209 0 is_stmt 1
	l32i	a11, a2, 128
	l32r	a8, .LC29
	and	a11, a11, a8
	beqz.n	a11, .L50
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC25
	movi	a11, 0xd1
	j	.L53
.L50:
	.loc 1 211 0 is_stmt 1
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL70:
	movi.n	a4, 0xa
	s32i.n	a4, sp, 0
	movi.n	a5, 0x10
	addi	a4, sp, 48
	movi.n	a8, 0x50
	.loc 1 218 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 211 0
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a8, sp, 36
	.loc 1 218 0
	call8	sdmmc_send_cmd
.LVL71:
	.loc 1 219 0
	bnez.n	a10, .L51
	.loc 1 222 0
	mov.n	a11, a5
	mov.n	a10, a4
.LVL72:
	call8	sdmmc_flip_byte_order
.LVL73:
	.loc 1 223 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	sdmmc_decode_cid
.LVL74:
.L51:
	.loc 1 224 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LFE28:
	.size	sdmmc_send_cmd_send_cid, .-sdmmc_send_cmd_send_cid
	.section	.rodata.str1.1
.LC32:
	.string	"out_rca"
	.section	.text.sdmmc_send_cmd_set_relative_addr,"ax",@progbits
	.literal_position
	.literal .LC33, .LC32
	.literal .LC34, __func__$5634
	.literal .LC35, .LC15
	.literal .LC36, 7216
	.literal .LC38, 65536
	.align	4
	.global	sdmmc_send_cmd_set_relative_addr
	.type	sdmmc_send_cmd_set_relative_addr, @function
sdmmc_send_cmd_set_relative_addr:
.LFB29:
	.loc 1 228 0
.LVL76:
	entry	sp, 80
.LCFI8:
	.loc 1 229 0
	bnez.n	a3, .L55
	.loc 1 229 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	l32r	a10, .LC35
	movi	a11, 0xe5
	call8	__assert_func
.LVL77:
.L55:
	.loc 1 230 0 is_stmt 1
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL78:
	movi.n	a8, 3
	s32i.n	a8, sp, 0
	l32r	a8, .LC36
	s32i.n	a8, sp, 36
.LVL79:
	.loc 1 239 0
	l32i	a8, a2, 128
	bbci	a8, 18, .L56
	.loc 1 240 0
	l32r	a8, .LC38
	s32i.n	a8, sp, 4
.L56:
	.loc 1 243 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL80:
	.loc 1 244 0
	bnez.n	a10, .L57
	.loc 1 247 0
	l32i	a8, a2, 128
	movi.n	a2, 1
.LVL81:
	bbsi	a8, 18, .L58
	.loc 1 247 0 is_stmt 0 discriminator 1
	l16ui	a2, sp, 10
.L58:
	.loc 1 247 0 discriminator 4
	s16i	a2, a3, 0
	.loc 1 248 0 is_stmt 1 discriminator 4
	movi.n	a10, 0
.LVL82:
.L57:
	.loc 1 249 0
	mov.n	a2, a10
	retw.n
.LFE29:
	.size	sdmmc_send_cmd_set_relative_addr, .-sdmmc_send_cmd_set_relative_addr
	.section	.text.sdmmc_send_cmd_set_blocklen,"ax",@progbits
	.literal_position
	.literal .LC39, 7168
	.align	4
	.global	sdmmc_send_cmd_set_blocklen
	.type	sdmmc_send_cmd_set_blocklen, @function
sdmmc_send_cmd_set_blocklen:
.LFB30:
	.loc 1 252 0
.LVL83:
	entry	sp, 80
.LCFI9:
	.loc 1 253 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL84:
	movi.n	a8, 0x10
	s32i.n	a8, sp, 0
	l32i.n	a8, a3, 12
	.loc 1 258 0
	mov.n	a11, sp
	.loc 1 253 0
	s32i.n	a8, sp, 4
	l32r	a8, .LC39
	.loc 1 258 0
	mov.n	a10, a2
	.loc 1 253 0
	s32i.n	a8, sp, 36
	.loc 1 258 0
	call8	sdmmc_send_cmd
.LVL85:
	.loc 1 259 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LFE30:
	.size	sdmmc_send_cmd_set_blocklen, .-sdmmc_send_cmd_set_blocklen
	.section	.text.sdmmc_send_cmd_send_csd,"ax",@progbits
	.literal_position
	.literal .LC40, 7248
	.literal .LC41, 5632
	.align	4
	.global	sdmmc_send_cmd_send_csd
	.type	sdmmc_send_cmd_send_csd, @function
sdmmc_send_cmd_send_csd:
.LFB31:
	.loc 1 262 0
.LVL87:
	entry	sp, 96
.LCFI10:
.LVL88:
.LBB40:
.LBB41:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.loc 2 122 0
	l32i.n	a4, a2, 0
	movi.n	a5, 8
.LBE41:
.LBE40:
	.loc 1 268 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL89:
.LBB43:
.LBB42:
	.loc 2 122 0
	and	a4, a5, a4
.LBE42:
.LBE43:
	.loc 1 268 0
	movi.n	a5, 9
	s32i.n	a5, sp, 0
	movi.n	a8, 0
	bne	a4, a8, .L66
	.loc 1 268 0 is_stmt 0 discriminator 2
	l16ui	a8, a2, 126
	slli	a8, a8, 16
.L66:
	.loc 1 268 0 discriminator 4
	s32i.n	a8, sp, 4
	.loc 1 273 0 is_stmt 1 discriminator 4
	movi.n	a8, 0
	mov.n	a6, a8
	addi	a5, sp, 48
	movnez	a6, a5, a4
	.loc 1 268 0 discriminator 4
	s32i.n	a6, sp, 24
	.loc 1 274 0 discriminator 4
	movi.n	a6, 0x10
	movnez	a8, a6, a4
	.loc 1 268 0 discriminator 4
	s32i.n	a8, sp, 28
	.loc 1 271 0 discriminator 4
	l32r	a9, .LC40
	l32r	a8, .LC41
	.loc 1 276 0 discriminator 4
	mov.n	a11, sp
	.loc 1 271 0 discriminator 4
	movnez	a8, a9, a4
	.loc 1 276 0 discriminator 4
	mov.n	a10, a2
	.loc 1 268 0 discriminator 4
	s32i.n	a8, sp, 36
	.loc 1 276 0 discriminator 4
	call8	sdmmc_send_cmd
.LVL90:
	.loc 1 277 0 discriminator 4
	bnez.n	a10, .L70
.LVL91:
	.loc 1 280 0
	addi.n	a10, sp, 8
.LVL92:
	.loc 1 281 0
	beqz.n	a4, .L71
	.loc 1 282 0
	mov.n	a10, a5
.LVL93:
	mov.n	a11, a6
	call8	sdmmc_flip_byte_order
.LVL94:
	.loc 1 283 0
	mov.n	a10, a5
.LVL95:
.L71:
	.loc 1 285 0
	l32i	a2, a2, 128
.LVL96:
	.loc 1 286 0
	mov.n	a11, a3
	.loc 1 285 0
	bbci	a2, 18, .L72
	.loc 1 286 0
	addi.n	a10, sp, 8
.LVL97:
	call8	sdmmc_mmc_decode_csd
.LVL98:
	j	.L70
.LVL99:
.L72:
	.loc 1 288 0
	call8	sdmmc_decode_csd
.LVL100:
.L70:
	.loc 1 291 0
	mov.n	a2, a10
	retw.n
.LFE31:
	.size	sdmmc_send_cmd_send_csd, .-sdmmc_send_cmd_send_csd
	.section	.text.sdmmc_send_cmd_select_card,"ax",@progbits
	.literal_position
	.literal .LC43, 7168
	.align	4
	.global	sdmmc_send_cmd_select_card
	.type	sdmmc_send_cmd_select_card, @function
sdmmc_send_cmd_select_card:
.LFB32:
	.loc 1 294 0
.LVL101:
	entry	sp, 80
.LCFI11:
	.loc 1 296 0
	l32r	a4, .LC43
	movi.n	a11, 0
	.loc 1 297 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	.loc 1 296 0
	moveqz	a4, a11, a3
.LVL102:
	.loc 1 297 0
	call8	memset
.LVL103:
	movi.n	a8, 7
	slli	a3, a3, 16
.LVL104:
	.loc 1 302 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 297 0
	s32i.n	a8, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 36
	.loc 1 302 0
	call8	sdmmc_send_cmd
.LVL105:
	.loc 1 303 0
	mov.n	a2, a10
.LVL106:
	retw.n
.LFE32:
	.size	sdmmc_send_cmd_select_card, .-sdmmc_send_cmd_select_card
	.section	.text.sdmmc_send_cmd_send_scr,"ax",@progbits
	.literal_position
	.literal .LC44, 7248
	.align	4
	.global	sdmmc_send_cmd_send_scr
	.type	sdmmc_send_cmd_send_scr, @function
sdmmc_send_cmd_send_scr:
.LFB33:
	.loc 1 306 0
.LVL107:
	entry	sp, 80
.LCFI12:
.LVL108:
	.loc 1 308 0
	movi.n	a11, 8
	mov.n	a10, a11
	call8	heap_caps_malloc
.LVL109:
	.loc 1 306 0
	mov.n	a5, a2
	.loc 1 308 0
	mov.n	a4, a10
.LVL110:
	.loc 1 310 0
	movi	a2, 0x101
.LVL111:
	.loc 1 309 0
	beqz.n	a10, .L84
	.loc 1 312 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	movi.n	a2, 0x33
	mov.n	a10, sp
	call8	memset
.LVL112:
	s32i.n	a2, sp, 0
	l32r	a2, .LC44
	movi.n	a8, 8
	.loc 1 319 0
	mov.n	a11, sp
	mov.n	a10, a5
	.loc 1 312 0
	s32i.n	a2, sp, 36
	s32i.n	a4, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	.loc 1 319 0
	call8	sdmmc_send_app_cmd
.LVL113:
	mov.n	a2, a10
.LVL114:
	.loc 1 320 0
	bnez.n	a10, .L85
	.loc 1 321 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	sdmmc_decode_scr
.LVL115:
	mov.n	a2, a10
.LVL116:
.L85:
	.loc 1 323 0
	mov.n	a10, a4
	call8	free
.LVL117:
.L84:
	.loc 1 325 0
	retw.n
.LFE33:
	.size	sdmmc_send_cmd_send_scr, .-sdmmc_send_cmd_send_scr
	.section	.text.sdmmc_send_cmd_set_bus_width,"ax",@progbits
	.literal_position
	.literal .LC45, 7168
	.align	4
	.global	sdmmc_send_cmd_set_bus_width
	.type	sdmmc_send_cmd_set_bus_width, @function
sdmmc_send_cmd_set_bus_width:
.LFB34:
	.loc 1 328 0
.LVL118:
	entry	sp, 80
.LCFI13:
	.loc 1 329 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL119:
	movi.n	a8, 6
	s32i.n	a8, sp, 0
	movi.n	a9, 2
	addi	a8, a3, -4
	movi.n	a3, 0
.LVL120:
	moveqz	a3, a9, a8
	s32i.n	a3, sp, 4
	l32r	a3, .LC45
	.loc 1 335 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 329 0
	s32i.n	a3, sp, 36
	.loc 1 335 0
	call8	sdmmc_send_app_cmd
.LVL121:
	.loc 1 336 0
	mov.n	a2, a10
.LVL122:
	retw.n
.LFE34:
	.size	sdmmc_send_cmd_set_bus_width, .-sdmmc_send_cmd_set_bus_width
	.section	.rodata.str1.1
.LC46:
	.string	"host_is_spi(card) && \"CRC_ON_OFF can only be used in SPI mode\""
	.section	.text.sdmmc_send_cmd_crc_on_off,"ax",@progbits
	.literal_position
	.literal .LC47, .LC46
	.literal .LC48, __func__$5675
	.literal .LC49, .LC15
	.literal .LC50, 7168
	.align	4
	.global	sdmmc_send_cmd_crc_on_off
	.type	sdmmc_send_cmd_crc_on_off, @function
sdmmc_send_cmd_crc_on_off:
.LFB35:
	.loc 1 339 0
.LVL123:
	entry	sp, 80
.LCFI14:
.LVL124:
	.loc 1 340 0
	l32i.n	a8, a2, 0
	.loc 1 339 0
	extui	a3, a3, 0, 8
	.loc 1 340 0
	bbsi	a8, 3, .L92
	.loc 1 340 0 is_stmt 0 discriminator 3
	l32r	a13, .LC47
	l32r	a12, .LC48
	l32r	a10, .LC49
	movi	a11, 0x154
	call8	__assert_func
.LVL125:
.L92:
	.loc 1 341 0 is_stmt 1
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL126:
	movi.n	a8, 0x3b
	s32i.n	a8, sp, 0
	l32r	a8, .LC50
	.loc 1 346 0
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 341 0
	s32i.n	a3, sp, 4
	s32i.n	a8, sp, 36
	.loc 1 346 0
	call8	sdmmc_send_cmd
.LVL127:
	.loc 1 347 0
	mov.n	a2, a10
.LVL128:
	retw.n
.LFE35:
	.size	sdmmc_send_cmd_crc_on_off, .-sdmmc_send_cmd_crc_on_off
	.section	.text.sdmmc_send_cmd_send_status,"ax",@progbits
	.literal_position
	.literal .LC51, 7168
	.align	4
	.global	sdmmc_send_cmd_send_status
	.type	sdmmc_send_cmd_send_status, @function
sdmmc_send_cmd_send_status:
.LFB36:
	.loc 1 350 0
.LVL129:
	entry	sp, 80
.LCFI15:
	.loc 1 351 0
	movi.n	a11, 0
	movi.n	a12, 0x30
	mov.n	a10, sp
	call8	memset
.LVL130:
	movi.n	a8, 0xd
	s32i.n	a8, sp, 0
	l16ui	a8, a2, 126
	.loc 1 356 0
	mov.n	a11, sp
	.loc 1 351 0
	slli	a8, a8, 16
	s32i.n	a8, sp, 4
	l32r	a8, .LC51
	.loc 1 356 0
	mov.n	a10, a2
	.loc 1 351 0
	s32i.n	a8, sp, 36
	.loc 1 356 0
	call8	sdmmc_send_cmd
.LVL131:
	.loc 1 357 0
	bnez.n	a10, .L94
	.loc 1 360 0
	beqz.n	a3, .L94
	.loc 1 361 0
	l32i.n	a2, sp, 8
.LVL132:
	s32i.n	a2, a3, 0
.L94:
	.loc 1 364 0
	mov.n	a2, a10
	retw.n
.LFE36:
	.size	sdmmc_send_cmd_send_status, .-sdmmc_send_cmd_send_status
	.section	.rodata.str1.1
.LC57:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_send_cmd returned 0x%x\033[0m\n"
	.section	.text.sdmmc_write_sectors_dma,"ax",@progbits
	.literal_position
	.literal .LC52, 7184
	.literal .LC53, 5000
	.literal .LC55, __func__$5707
	.literal .LC56, .LC1
	.literal .LC58, .LC57
	.align	4
	.global	sdmmc_write_sectors_dma
	.type	sdmmc_write_sectors_dma, @function
sdmmc_write_sectors_dma:
.LFB38:
	.loc 1 399 0
.LVL133:
	entry	sp, 112
.LCFI16:
	.loc 1 400 0
	l32i	a8, a2, 96
	add.n	a6, a4, a5
	.loc 1 401 0
	movi	a10, 0x104
	.loc 1 400 0
	bltu	a8, a6, .L98
.LVL134:
.LBB48:
.LBB49:
	.loc 1 403 0
	l32i	a6, a2, 100
.LVL135:
	.loc 1 404 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL136:
	s32i.n	a3, sp, 40
	mull	a3, a5, a6
.LVL137:
	s32i.n	a6, sp, 48
	s32i.n	a3, sp, 44
	l32r	a3, .LC52
	s32i.n	a3, sp, 52
	l32r	a3, .LC53
	s32i.n	a3, sp, 60
	.loc 1 412 0
	movi.n	a3, 0x18
	.loc 1 411 0
	beqi	a5, 1, .L110
.L99:
	.loc 1 414 0
	movi.n	a3, 0x19
.L110:
	s32i.n	a3, sp, 16
	.loc 1 416 0
	l32i.n	a3, a2, 56
	bbci	a3, 30, .L101
	.loc 1 417 0
	s32i.n	a4, sp, 20
	j	.L102
.L101:
	.loc 1 419 0
	mull	a6, a4, a6
.LVL138:
	s32i.n	a6, sp, 20
.L102:
	.loc 1 421 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL139:
	mov.n	a3, a10
.LVL140:
	.loc 1 422 0
	beqz.n	a10, .L103
	.loc 1 423 0
	call8	esp_log_timestamp
.LVL141:
	l32r	a11, .LC56
	l32r	a15, .LC55
	l32r	a12, .LC58
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL142:
	mov.n	a10, a3
	j	.L98
.L103:
	.loc 1 426 0
	s32i	a10, sp, 64
.LVL143:
	.loc 1 428 0
	movi.n	a4, 8
.LVL144:
	j	.L105
.LVL145:
.L106:
	.loc 1 430 0
	addi	a11, sp, 64
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_status
.LVL146:
	.loc 1 431 0
	bnez.n	a10, .L98
.LVL147:
.L105:
	.loc 1 428 0
	l32i.n	a10, a2, 0
.LVL148:
	and	a10, a4, a10
	bnez.n	a10, .L109
	l32i	a3, sp, 64
	bbci	a3, 8, .L106
	j	.L98
.L109:
	.loc 1 438 0
	movi.n	a10, 0
.LVL149:
.L98:
.LBE49:
.LBE48:
	.loc 1 439 0
	mov.n	a2, a10
.LVL150:
	retw.n
.LFE38:
	.size	sdmmc_write_sectors_dma, .-sdmmc_write_sectors_dma
	.section	.text.sdmmc_write_sectors,"ax",@progbits
	.literal_position
	.literal .LC59, -1073405952
	.literal .LC60, 335871
	.align	4
	.global	sdmmc_write_sectors
	.type	sdmmc_write_sectors, @function
sdmmc_write_sectors:
.LFB37:
	.loc 1 368 0
.LVL151:
	entry	sp, 48
.LCFI17:
	.loc 1 368 0
	mov.n	a6, a2
.LVL152:
	.loc 1 370 0
	l32i	a7, a2, 100
.LVL153:
	.loc 1 371 0
	l32r	a2, .LC59
.LVL154:
	.loc 1 368 0
	mov.n	a13, a5
	.loc 1 371 0
	l32r	a5, .LC60
.LVL155:
	add.n	a2, a3, a2
	bltu	a5, a2, .L112
	.loc 1 371 0 is_stmt 0 discriminator 1
	extui	a2, a3, 0, 2
	bnez.n	a2, .L112
	.loc 1 372 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a6
	call8	sdmmc_write_sectors_dma
.LVL156:
	mov.n	a2, a10
.LVL157:
	retw.n
.LVL158:
.L112:
.LBB50:
	.loc 1 377 0
	movi.n	a11, 8
	mov.n	a10, a7
	s32i.n	a13, sp, 0
	call8	heap_caps_malloc
.LVL159:
	.loc 1 378 0
	l32i.n	a13, sp, 0
	.loc 1 377 0
	mov.n	a5, a10
.LVL160:
	.loc 1 379 0
	movi	a2, 0x101
	add.n	a8, a4, a13
	.loc 1 378 0
	bnez.n	a10, .L114
	j	.L113
.LVL161:
.L116:
.LBB51:
	.loc 1 383 0
	mov.n	a11, a3
	mov.n	a12, a7
	mov.n	a10, a5
	s32i.n	a8, sp, 0
	call8	memcpy
.LVL162:
	.loc 1 385 0
	mov.n	a12, a4
	movi.n	a13, 1
	mov.n	a11, a5
	mov.n	a10, a6
	call8	sdmmc_write_sectors_dma
.LVL163:
	.loc 1 384 0
	add.n	a3, a3, a7
.LVL164:
	.loc 1 385 0
	mov.n	a2, a10
.LVL165:
	addi.n	a4, a4, 1
.LVL166:
	.loc 1 386 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L115
.LVL167:
.L114:
	.loc 1 382 0 discriminator 1
	bne	a4, a8, .L116
	movi.n	a2, 0
.LVL168:
.L115:
.LBE51:
	.loc 1 392 0
	mov.n	a10, a5
	call8	free
.LVL169:
.L113:
.LBE50:
	.loc 1 395 0
	retw.n
.LFE37:
	.size	sdmmc_write_sectors, .-sdmmc_write_sectors
	.section	.text.sdmmc_read_sectors_dma,"ax",@progbits
	.literal_position
	.literal .LC61, 7248
	.literal .LC63, __func__$5737
	.literal .LC64, .LC1
	.literal .LC65, .LC57
	.align	4
	.global	sdmmc_read_sectors_dma
	.type	sdmmc_read_sectors_dma, @function
sdmmc_read_sectors_dma:
.LFB40:
	.loc 1 474 0
.LVL170:
	entry	sp, 112
.LCFI18:
	.loc 1 475 0
	l32i	a8, a2, 96
	add.n	a6, a4, a5
	.loc 1 476 0
	movi	a10, 0x104
	.loc 1 475 0
	bltu	a8, a6, .L120
.LVL171:
.LBB56:
.LBB57:
	.loc 1 478 0
	l32i	a6, a2, 100
.LVL172:
	.loc 1 479 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	addi	a10, sp, 16
	call8	memset
.LVL173:
	s32i.n	a3, sp, 40
	mull	a3, a5, a6
.LVL174:
	s32i.n	a6, sp, 48
	s32i.n	a3, sp, 44
	l32r	a3, .LC61
	s32i.n	a3, sp, 52
	.loc 1 486 0
	movi.n	a3, 0x11
	.loc 1 485 0
	beqi	a5, 1, .L132
.L121:
	.loc 1 488 0
	movi.n	a3, 0x12
.L132:
	s32i.n	a3, sp, 16
	.loc 1 490 0
	l32i.n	a3, a2, 56
	bbci	a3, 30, .L123
	.loc 1 491 0
	s32i.n	a4, sp, 20
	j	.L124
.L123:
	.loc 1 493 0
	mull	a6, a4, a6
.LVL175:
	s32i.n	a6, sp, 20
.L124:
	.loc 1 495 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL176:
	mov.n	a3, a10
.LVL177:
	.loc 1 496 0
	beqz.n	a10, .L125
	.loc 1 497 0
	call8	esp_log_timestamp
.LVL178:
	l32r	a11, .LC64
	l32r	a15, .LC63
	l32r	a12, .LC65
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL179:
	mov.n	a10, a3
	j	.L120
.L125:
	.loc 1 500 0
	s32i	a10, sp, 64
.LVL180:
	.loc 1 502 0
	movi.n	a4, 8
.LVL181:
	j	.L127
.LVL182:
.L128:
	.loc 1 504 0
	addi	a11, sp, 64
	mov.n	a10, a2
	call8	sdmmc_send_cmd_send_status
.LVL183:
	.loc 1 505 0
	bnez.n	a10, .L120
.LVL184:
.L127:
	.loc 1 502 0
	l32i.n	a10, a2, 0
.LVL185:
	and	a10, a4, a10
	bnez.n	a10, .L131
	l32i	a3, sp, 64
	bbci	a3, 8, .L128
	j	.L120
.L131:
	.loc 1 512 0
	movi.n	a10, 0
.LVL186:
.L120:
.LBE57:
.LBE56:
	.loc 1 513 0
	mov.n	a2, a10
.LVL187:
	retw.n
.LFE40:
	.size	sdmmc_read_sectors_dma, .-sdmmc_read_sectors_dma
	.section	.text.sdmmc_read_sectors,"ax",@progbits
	.literal_position
	.literal .LC66, -1073405952
	.literal .LC67, 335871
	.align	4
	.global	sdmmc_read_sectors
	.type	sdmmc_read_sectors, @function
sdmmc_read_sectors:
.LFB39:
	.loc 1 443 0
.LVL188:
	entry	sp, 48
.LCFI19:
	.loc 1 443 0
	mov.n	a6, a2
.LVL189:
	.loc 1 445 0
	l32i	a7, a2, 100
.LVL190:
	.loc 1 446 0
	l32r	a2, .LC66
.LVL191:
	l32r	a8, .LC67
	add.n	a2, a3, a2
	bltu	a8, a2, .L134
	.loc 1 446 0 is_stmt 0 discriminator 1
	extui	a2, a3, 0, 2
	bnez.n	a2, .L134
	.loc 1 447 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a6
	call8	sdmmc_read_sectors_dma
.LVL192:
	mov.n	a2, a10
.LVL193:
	retw.n
.LVL194:
.L134:
.LBB58:
	.loc 1 452 0
	movi.n	a11, 8
	mov.n	a10, a7
	call8	heap_caps_malloc
.LVL195:
	mov.n	a8, a10
.LVL196:
	.loc 1 454 0
	movi	a2, 0x101
	.loc 1 453 0
	beqz.n	a10, .L135
	add.n	a5, a4, a5
.LVL197:
	j	.L136
.LVL198:
.L138:
.LBB59:
	.loc 1 458 0
	mov.n	a12, a4
	mov.n	a11, a8
	movi.n	a13, 1
	mov.n	a10, a6
	s32i.n	a8, sp, 0
	call8	sdmmc_read_sectors_dma
.LVL199:
	mov.n	a2, a10
.LVL200:
	addi.n	a4, a4, 1
.LVL201:
	.loc 1 459 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L137
	.loc 1 464 0 discriminator 2
	mov.n	a11, a8
	mov.n	a10, a3
	mov.n	a12, a7
	call8	memcpy
.LVL202:
	.loc 1 465 0 discriminator 2
	l32i.n	a8, sp, 0
	add.n	a3, a3, a7
.LVL203:
.L136:
	.loc 1 457 0 discriminator 1
	bne	a4, a5, .L138
	movi.n	a2, 0
.LVL204:
.L137:
.LBE59:
	.loc 1 467 0
	mov.n	a10, a8
	call8	free
.LVL205:
.L135:
.LBE58:
	.loc 1 470 0
	retw.n
.LFE39:
	.size	sdmmc_read_sectors, .-sdmmc_read_sectors
	.section	.rodata.__func__$5737,"a",@progbits
	.type	__func__$5737, @object
	.size	__func__$5737, 23
__func__$5737:
	.string	"sdmmc_read_sectors_dma"
	.section	.rodata.__func__$5707,"a",@progbits
	.type	__func__$5707, @object
	.size	__func__$5707, 24
__func__$5707:
	.string	"sdmmc_write_sectors_dma"
	.section	.rodata.__func__$5675,"a",@progbits
	.type	__func__$5675, @object
	.size	__func__$5675, 26
__func__$5675:
	.string	"sdmmc_send_cmd_crc_on_off"
	.section	.rodata.__func__$5634,"a",@progbits
	.type	__func__$5634, @object
	.size	__func__$5634, 33
__func__$5634:
	.string	"sdmmc_send_cmd_set_relative_addr"
	.section	.rodata.__func__$5626,"a",@progbits
	.type	__func__$5626, @object
	.size	__func__$5626, 24
__func__$5626:
	.string	"sdmmc_send_cmd_send_cid"
	.section	.rodata.__func__$5619,"a",@progbits
	.type	__func__$5619, @object
	.size	__func__$5619, 28
__func__$5619:
	.string	"sdmmc_send_cmd_all_send_cid"
	.section	.rodata.__func__$5612,"a",@progbits
	.type	__func__$5612, @object
	.size	__func__$5612, 24
__func__$5612:
	.string	"sdmmc_send_cmd_read_ocr"
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
	.uleb128 0x20
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
	.uleb128 0x50
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
	.uleb128 0x50
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
	.uleb128 0x50
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
	.uleb128 0x50
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
	.uleb128 0x50
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
	.uleb128 0x50
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
	.uleb128 0x60
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
	.uleb128 0x50
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
	.uleb128 0x50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI10-.LFB31
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI11-.LFB32
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI12-.LFB33
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI14-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI15-.LFB36
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI17-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI18-.LFB40
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI19-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a18
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
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
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x115
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0xa
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x76
	.4byte	0xf9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x1cc
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x25
	.4byte	0x16f
	.uleb128 0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x228
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
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
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x31
	.4byte	0x1d7
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x254
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x39
	.4byte	0x233
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x274
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
	.4byte	0x25f
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x45
	.4byte	0x28a
	.uleb128 0x8
	.4byte	0xf9
	.4byte	0x29a
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x30f
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
	.4byte	0x27f
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
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x8
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x8
	.byte	0x58
	.4byte	0x25
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
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x76
	.4byte	0x29a
	.uleb128 0xd
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x3cb
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
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8c
	.4byte	0x3cb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8d
	.4byte	0x3d7
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8e
	.4byte	0x3f1
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8f
	.4byte	0x406
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x90
	.4byte	0x420
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x8
	.byte	0x91
	.4byte	0x43a
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x92
	.4byte	0x45a
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.byte	0x93
	.4byte	0x3d7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x94
	.4byte	0x46f
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0x95
	.4byte	0x489
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0x10
	.4byte	0x147
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x3f1
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x11
	.4byte	0x2c
	.4byte	0x406
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f7
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x420
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x152
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40c
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x43a
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0xf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x426
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x454
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x454
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x440
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x46f
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x460
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x489
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x159
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x475
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x97
	.4byte	0x31a
	.uleb128 0xd
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x56c
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9d
	.4byte	0x48f
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
	.4byte	0x228
	.byte	0x3c
	.uleb128 0xf
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x1cc
	.byte	0x58
	.uleb128 0xf
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x254
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa2
	.4byte	0x274
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
	.4byte	0x49a
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x2
	.byte	0x78
	.4byte	0x152
	.byte	0x3
	.4byte	0x593
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x2
	.byte	0x78
	.4byte	0x593
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x599
	.uleb128 0x7
	.4byte	0x56c
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x1
	.byte	0x32
	.4byte	0x147
	.byte	0x1
	.4byte	0x5db
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0x32
	.4byte	0x5db
	.uleb128 0x17
	.string	"cmd"
	.byte	0x1
	.byte	0x32
	.4byte	0x454
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0x34
	.4byte	0x30f
	.uleb128 0x19
	.string	"err"
	.byte	0x1
	.byte	0x39
	.4byte	0x147
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56c
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x18d
	.4byte	0x147
	.byte	0x1
	.4byte	0x66c
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x18d
	.4byte	0x5db
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x10f
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x18e
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x18e
	.4byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x193
	.4byte	0x2c
	.uleb128 0x1e
	.string	"cmd"
	.byte	0x1
	.2byte	0x194
	.4byte	0x30f
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x147
	.uleb128 0x1f
	.4byte	.LASF93
	.4byte	0x67c
	.4byte	.LASF89
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x67c
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x66c
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x9
	.byte	0x8e
	.4byte	0x152
	.byte	0x3
	.4byte	0x69b
	.uleb128 0x17
	.string	"p"
	.byte	0x9
	.byte	0x8e
	.4byte	0x10f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x147
	.byte	0x1
	.4byte	0x726
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x5db
	.uleb128 0x1c
	.string	"dst"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xad
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1de
	.4byte	0x2c
	.uleb128 0x1e
	.string	"cmd"
	.byte	0x1
	.2byte	0x1df
	.4byte	0x30f
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x147
	.uleb128 0x1f
	.4byte	.LASF93
	.4byte	0x736
	.4byte	.LASF98
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xf9
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x736
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x726
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.byte	0x17
	.4byte	0x147
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7aa
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0x17
	.4byte	0x5db
	.4byte	.LLST0
	.uleb128 0x22
	.string	"cmd"
	.byte	0x1
	.byte	0x17
	.4byte	0x454
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x22
	.4byte	0x147
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF99
	.byte	0x1
	.byte	0x27
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LVL2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x59e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x898
	.uleb128 0x28
	.4byte	0x5ae
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	0x5b9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	0x5c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.4byte	0x5cf
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.4byte	0x846
	.uleb128 0x28
	.4byte	0x5ae
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	0x5b9
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x2e
	.4byte	0x5c4
	.uleb128 0x2e
	.4byte	0x5cf
	.uleb128 0x2f
	.4byte	.LVL11
	.4byte	0x198f
	.uleb128 0x30
	.4byte	.LVL12
	.4byte	0x199a
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
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL7
	.4byte	0x19a5
	.4byte	0x866
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL8
	.4byte	0x73b
	.4byte	0x881
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
	.uleb128 0x30
	.4byte	.LVL15
	.4byte	0x73b
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x1
	.byte	0x46
	.4byte	0x147
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x957
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0x46
	.4byte	0x5db
	.4byte	.LLST8
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0x48
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.4byte	0x147
	.4byte	.LLST9
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x19a5
	.4byte	0x8fe
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL20
	.4byte	0x73b
	.4byte	0x919
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
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x31
	.4byte	.LVL22
	.4byte	0x19ae
	.4byte	0x92c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x31
	.4byte	.LVL24
	.4byte	0x73b
	.4byte	0x947
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
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x30
	.4byte	.LVL26
	.4byte	0x19ae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.byte	0x61
	.4byte	0x147
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa09
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0x61
	.4byte	0x5db
	.4byte	.LLST10
	.uleb128 0x33
	.string	"ocr"
	.byte	0x1
	.byte	0x61
	.4byte	0xf9
	.4byte	.LLST11
	.uleb128 0x34
	.4byte	.LASF103
	.byte	0x1
	.byte	0x63
	.4byte	0xa09
	.sleb128 -86
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0x64
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x147
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6d
	.4byte	0xd8
	.4byte	.LLST13
	.uleb128 0x35
	.4byte	.LASF93
	.4byte	0xa1e
	.uleb128 0x31
	.4byte	.LVL29
	.4byte	0x19a5
	.4byte	0x9f1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL31
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xa1e
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0xa0e
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0x75
	.4byte	0x147
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb30
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0x75
	.4byte	0x5db
	.4byte	.LLST14
	.uleb128 0x22
	.string	"ocr"
	.byte	0x1
	.byte	0x75
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF105
	.byte	0x1
	.byte	0x75
	.4byte	0xb30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x77
	.4byte	0x147
	.4byte	.LLST15
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0x79
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.4byte	.LASF106
	.byte	0x1
	.byte	0x7e
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LASF107
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x35
	.4byte	.LASF93
	.4byte	0xb36
	.uleb128 0x31
	.4byte	.LVL36
	.4byte	0x19a5
	.4byte	0xaca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x19a5
	.4byte	0xaea
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL39
	.4byte	0x59e
	.4byte	0xb05
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
	.uleb128 0x31
	.4byte	.LVL41
	.4byte	0x73b
	.4byte	0xb20
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
	.uleb128 0x30
	.4byte	.LVL47
	.4byte	0x19ae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x7
	.4byte	0xa0e
	.uleb128 0x20
	.4byte	.LASF108
	.byte	0x1
	.byte	0xae
	.4byte	0x147
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc02
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xae
	.4byte	0x5db
	.4byte	.LLST18
	.uleb128 0x36
	.4byte	.LASF105
	.byte	0x1
	.byte	0xae
	.4byte	0xb30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF93
	.4byte	0xc02
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5612
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0xb1
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.byte	0xb5
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LVL56
	.4byte	0x19ba
	.4byte	0xbca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5612
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x31
	.4byte	.LVL57
	.4byte	0x19a5
	.4byte	0xbea
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL58
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x7
	.4byte	0x66c
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0xbe
	.4byte	0x147
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcee
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xbe
	.4byte	0x5db
	.4byte	.LLST19
	.uleb128 0x36
	.4byte	.LASF110
	.byte	0x1
	.byte	0xbe
	.4byte	0xcee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF93
	.4byte	0xcf4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5619
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0xc1
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.byte	0xc5
	.4byte	0x147
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LVL61
	.4byte	0x19ba
	.4byte	0xc96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5619
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0x19a5
	.4byte	0xcb6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL63
	.4byte	0x73b
	.4byte	0xcd1
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
	.uleb128 0x30
	.4byte	.LVL65
	.4byte	0x19c5
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
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27f
	.uleb128 0x7
	.4byte	0xa0e
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0xcd
	.4byte	0x147
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde7
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xcd
	.4byte	0x5db
	.4byte	.LLST20
	.uleb128 0x36
	.4byte	.LASF112
	.byte	0x1
	.byte	0xcd
	.4byte	0xde7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF93
	.4byte	0xded
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5626
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.byte	0xd2
	.4byte	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0xd3
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0xda
	.4byte	0x147
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	.LVL69
	.4byte	0x19ba
	.4byte	0xd80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x31
	.4byte	.LVL70
	.4byte	0x19a5
	.4byte	0xd9b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL71
	.4byte	0x73b
	.4byte	0xdb6
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
	.sleb128 -96
	.byte	0
	.uleb128 0x31
	.4byte	.LVL73
	.4byte	0x19ce
	.4byte	0xdd0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL74
	.4byte	0x19d9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x7
	.4byte	0x66c
	.uleb128 0x20
	.4byte	.LASF113
	.byte	0x1
	.byte	0xe3
	.4byte	0x147
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec7
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xe3
	.4byte	0x5db
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	.LASF114
	.byte	0x1
	.byte	0xe3
	.4byte	0x164
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF93
	.4byte	0xed7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5634
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0xe6
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.4byte	.LASF115
	.byte	0x1
	.byte	0xee
	.4byte	0xe3
	.byte	0x1
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0xf3
	.4byte	0x147
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LVL77
	.4byte	0x19ba
	.4byte	0xe8f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5634
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x31
	.4byte	.LVL78
	.4byte	0x19a5
	.4byte	0xeaf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL80
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xed7
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.4byte	0xec7
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0xfb
	.4byte	0x147
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf58
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.byte	0xfb
	.4byte	0x5db
	.4byte	.LLST24
	.uleb128 0x22
	.string	"csd"
	.byte	0x1
	.byte	0xfb
	.4byte	0xf58
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.byte	0xfd
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LVL84
	.4byte	0x19a5
	.4byte	0xf40
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL85
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x39
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x105
	.4byte	0x147
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1079
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x105
	.4byte	0x5db
	.4byte	.LLST25
	.uleb128 0x3b
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x105
	.4byte	0xf58
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x10a
	.4byte	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1079
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x114
	.4byte	0x147
	.4byte	.LLST26
	.uleb128 0x3e
	.string	"ptr"
	.byte	0x1
	.2byte	0x118
	.4byte	0xb30
	.4byte	.LLST27
	.uleb128 0x3f
	.4byte	0x577
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x10b
	.4byte	0xfff
	.uleb128 0x28
	.4byte	0x587
	.4byte	.LLST28
	.byte	0
	.uleb128 0x31
	.4byte	.LVL89
	.4byte	0x19a5
	.4byte	0x101f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL90
	.4byte	0x73b
	.4byte	0x103a
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
	.sleb128 -96
	.byte	0
	.uleb128 0x31
	.4byte	.LVL94
	.4byte	0x19ce
	.4byte	0x1054
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0x19e4
	.4byte	0x106f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL100
	.4byte	0x19ef
	.byte	0
	.uleb128 0x7
	.4byte	0x152
	.uleb128 0x39
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x125
	.4byte	0x147
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110e
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x125
	.4byte	0x5db
	.4byte	.LLST29
	.uleb128 0x40
	.string	"rca"
	.byte	0x1
	.2byte	0x125
	.4byte	0xf9
	.4byte	.LLST30
	.uleb128 0x3c
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x128
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x129
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LVL103
	.4byte	0x19a5
	.4byte	0x10f6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL105
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x39
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x131
	.4byte	0x147
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ff
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x131
	.4byte	0x5db
	.4byte	.LLST31
	.uleb128 0x3b
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x131
	.4byte	0x11ff
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x133
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x3d
	.string	"buf"
	.byte	0x1
	.2byte	0x134
	.4byte	0xb30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x138
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x147
	.4byte	.LLST32
	.uleb128 0x31
	.4byte	.LVL109
	.4byte	0x19fa
	.4byte	0x1199
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x31
	.4byte	.LVL112
	.4byte	0x19a5
	.4byte	0x11b9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL113
	.4byte	0x59e
	.4byte	0x11d4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x31
	.4byte	.LVL115
	.4byte	0x1a05
	.4byte	0x11ee
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL117
	.4byte	0x1a10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x254
	.uleb128 0x39
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x147
	.4byte	0x147
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1287
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x147
	.4byte	0x5db
	.4byte	.LLST33
	.uleb128 0x3a
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x149
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LVL119
	.4byte	0x19a5
	.4byte	0x126f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL121
	.4byte	0x59e
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
	.byte	0
	.uleb128 0x39
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x152
	.4byte	0x147
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1346
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x152
	.4byte	0x5db
	.4byte	.LLST35
	.uleb128 0x3b
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x152
	.4byte	0x152
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF93
	.4byte	0x1356
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5675
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x155
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LVL125
	.4byte	0x19ba
	.4byte	0x130e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5675
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x31
	.4byte	.LVL126
	.4byte	0x19a5
	.4byte	0x132e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL127
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x1356
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x1346
	.uleb128 0x39
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x15d
	.4byte	0x147
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e9
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x15d
	.4byte	0x5db
	.4byte	.LLST36
	.uleb128 0x3b
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x15d
	.4byte	0xb30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.string	"err"
	.byte	0x1
	.2byte	0x164
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LVL130
	.4byte	0x19a5
	.4byte	0x13d1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.4byte	.LVL131
	.4byte	0x73b
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
	.byte	0
	.uleb128 0x27
	.4byte	0x5e1
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154a
	.uleb128 0x28
	.4byte	0x5f2
	.4byte	.LLST37
	.uleb128 0x28
	.4byte	0x5fe
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	0x60a
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	0x616
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	0x622
	.uleb128 0x2e
	.4byte	0x62e
	.uleb128 0x2e
	.4byte	0x63a
	.uleb128 0x2a
	.4byte	0x646
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5707
	.uleb128 0x2e
	.4byte	0x653
	.uleb128 0x2e
	.4byte	0x65f
	.uleb128 0x2d
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x28
	.4byte	0x616
	.4byte	.LLST40
	.uleb128 0x28
	.4byte	0x60a
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	0x5fe
	.4byte	.LLST42
	.uleb128 0x28
	.4byte	0x5f2
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x2b
	.4byte	0x622
	.4byte	.LLST44
	.uleb128 0x2a
	.4byte	0x62e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.4byte	0x63a
	.4byte	.LLST45
	.uleb128 0x2a
	.4byte	0x653
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	0x65f
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	0x646
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5707
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0x19a5
	.4byte	0x14cf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL139
	.4byte	0x73b
	.4byte	0x14ea
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
	.sleb128 -96
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL141
	.4byte	0x198f
	.uleb128 0x31
	.4byte	.LVL142
	.4byte	0x199a
	.4byte	0x1531
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
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5707
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL146
	.4byte	0x135b
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
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x16e
	.4byte	0x147
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a1
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x16e
	.4byte	0x5db
	.4byte	.LLST47
	.uleb128 0x40
	.string	"src"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x10f
	.4byte	.LLST48
	.uleb128 0x3a
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2c
	.4byte	.LLST49
	.uleb128 0x3a
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2c
	.4byte	.LLST50
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x171
	.4byte	0x147
	.4byte	.LLST51
	.uleb128 0x3c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x172
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF93
	.4byte	0x16b1
	.uleb128 0x2c
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x167d
	.uleb128 0x3c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x179
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x42
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x17d
	.4byte	0x16b6
	.4byte	.LLST52
	.uleb128 0x2c
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x1653
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2c
	.4byte	.LLST53
	.uleb128 0x31
	.4byte	.LVL162
	.4byte	0x19c5
	.4byte	0x1631
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL163
	.4byte	0x5e1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL159
	.4byte	0x19fa
	.4byte	0x166c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x30
	.4byte	.LVL169
	.4byte	0x1a10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL156
	.4byte	0x5e1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x16b1
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x16a1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa09
	.uleb128 0x27
	.4byte	0x69b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181d
	.uleb128 0x28
	.4byte	0x6ac
	.4byte	.LLST54
	.uleb128 0x28
	.4byte	0x6b8
	.4byte	.LLST55
	.uleb128 0x28
	.4byte	0x6c4
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	0x6d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	0x6dc
	.uleb128 0x2e
	.4byte	0x6e8
	.uleb128 0x2e
	.4byte	0x6f4
	.uleb128 0x2a
	.4byte	0x700
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5737
	.uleb128 0x2e
	.4byte	0x70d
	.uleb128 0x2e
	.4byte	0x719
	.uleb128 0x2d
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.uleb128 0x28
	.4byte	0x6d0
	.4byte	.LLST57
	.uleb128 0x28
	.4byte	0x6c4
	.4byte	.LLST58
	.uleb128 0x28
	.4byte	0x6b8
	.4byte	.LLST59
	.uleb128 0x28
	.4byte	0x6ac
	.4byte	.LLST60
	.uleb128 0x2d
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x2b
	.4byte	0x6dc
	.4byte	.LLST61
	.uleb128 0x2a
	.4byte	0x6e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.4byte	0x6f4
	.4byte	.LLST62
	.uleb128 0x2a
	.4byte	0x70d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	0x719
	.4byte	.LLST63
	.uleb128 0x2a
	.4byte	0x700
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5737
	.uleb128 0x31
	.4byte	.LVL173
	.4byte	0x19a5
	.4byte	0x17a2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL176
	.4byte	0x73b
	.4byte	0x17bd
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
	.sleb128 -96
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL178
	.4byte	0x198f
	.uleb128 0x31
	.4byte	.LVL179
	.4byte	0x199a
	.4byte	0x1804
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
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5737
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL183
	.4byte	0x135b
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
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x147
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1962
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x5db
	.4byte	.LLST64
	.uleb128 0x40
	.string	"dst"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xad
	.4byte	.LLST65
	.uleb128 0x3a
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x2c
	.4byte	.LLST66
	.uleb128 0x3a
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x2c
	.4byte	.LLST67
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x147
	.4byte	.LLST68
	.uleb128 0x3c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF93
	.4byte	0x1972
	.uleb128 0x2c
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x193f
	.uleb128 0x42
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xad
	.4byte	.LLST69
	.uleb128 0x42
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x1977
	.4byte	.LLST70
	.uleb128 0x2c
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0x191c
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x2c
	.4byte	.LLST71
	.uleb128 0x31
	.4byte	.LVL199
	.4byte	0x69b
	.4byte	0x1905
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.4byte	.LVL202
	.4byte	0x19c5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL195
	.4byte	0x19fa
	.4byte	0x1935
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL205
	.4byte	0x1a10
	.byte	0
	.uleb128 0x30
	.4byte	.LVL192
	.4byte	0x69b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x1972
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1962
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x32
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0x16a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x43
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x57
	.uleb128 0x43
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xa
	.byte	0x6b
	.uleb128 0x44
	.4byte	.LASF139
	.4byte	.LASF139
	.uleb128 0x45
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x32b
	.uleb128 0x43
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x29
	.uleb128 0x44
	.4byte	.LASF140
	.4byte	.LASF140
	.uleb128 0x43
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x2
	.byte	0x85
	.uleb128 0x43
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x2
	.byte	0x4e
	.uleb128 0x43
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x2
	.byte	0x60
	.uleb128 0x43
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x2
	.byte	0x4f
	.uleb128 0x43
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.byte	0x37
	.uleb128 0x43
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x2
	.byte	0x50
	.uleb128 0x43
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xe
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
	.uleb128 0xe
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x39
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL87
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL121-1
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL133
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL139-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL139-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL133
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL144
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL134
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL134
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL144
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL139-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL139-1
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL134
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL140
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL151
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL151
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL161
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL156-1
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL159-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL152
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL161
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x20
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
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
.LLST54:
	.4byte	.LVL170
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174
	.4byte	.LVL176-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL176-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL170
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL181
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL171
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL171
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL181
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174
	.4byte	.LVL176-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL176-1
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL171
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL175
	.4byte	.LVL176-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL177
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL188
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL188
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL198
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL188
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL197
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL189
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL198
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x20
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
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
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
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
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"count"
.LASF146:
	.string	"sdmmc_decode_scr"
.LASF36:
	.string	"card_command_class"
.LASF131:
	.string	"tmp_buf"
.LASF96:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF90:
	.string	"start_block"
.LASF4:
	.string	"__uint8_t"
.LASF42:
	.string	"revision"
.LASF110:
	.string	"out_raw_cid"
.LASF33:
	.string	"capacity"
.LASF64:
	.string	"init"
.LASF13:
	.string	"long int"
.LASF112:
	.string	"out_cid"
.LASF67:
	.string	"set_bus_ddr_mode"
.LASF50:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF106:
	.string	"nretries"
.LASF136:
	.string	"esp_log_write"
.LASF143:
	.string	"sdmmc_mmc_decode_csd"
.LASF147:
	.string	"free"
.LASF113:
	.string	"sdmmc_send_cmd_set_relative_addr"
.LASF53:
	.string	"response"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF65:
	.string	"set_bus_width"
.LASF137:
	.string	"vTaskDelay"
.LASF124:
	.string	"sdmmc_send_cmd_set_bus_width"
.LASF99:
	.string	"state"
.LASF126:
	.string	"sdmmc_send_cmd_crc_on_off"
.LASF128:
	.string	"sdmmc_send_cmd_send_status"
.LASF88:
	.string	"sdmmc_send_app_cmd"
.LASF104:
	.string	"sdmmc_send_cmd_send_op_cond"
.LASF38:
	.string	"sdmmc_csd_t"
.LASF69:
	.string	"do_transaction"
.LASF18:
	.string	"uint16_t"
.LASF86:
	.string	"card"
.LASF97:
	.string	"esp_ptr_dma_capable"
.LASF145:
	.string	"heap_caps_malloc"
.LASF39:
	.string	"mfg_id"
.LASF101:
	.string	"sdmmc_send_cmd_go_idle_state"
.LASF9:
	.string	"__uint32_t"
.LASF12:
	.string	"__intptr_t"
.LASF129:
	.string	"out_status"
.LASF84:
	.string	"reserved"
.LASF100:
	.string	"sdmmc_send_cmd"
.LASF150:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF45:
	.string	"sdmmc_cid_t"
.LASF111:
	.string	"sdmmc_send_cmd_send_cid"
.LASF76:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF92:
	.string	"block_size"
.LASF116:
	.string	"sdmmc_send_cmd_set_blocklen"
.LASF98:
	.string	"sdmmc_read_sectors_dma"
.LASF68:
	.string	"set_card_clk"
.LASF81:
	.string	"num_io_functions"
.LASF121:
	.string	"sdmmc_send_cmd_select_card"
.LASF87:
	.string	"app_cmd"
.LASF41:
	.string	"name"
.LASF125:
	.string	"width"
.LASF54:
	.string	"data"
.LASF71:
	.string	"io_int_enable"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"date"
.LASF107:
	.string	"err_cnt"
.LASF118:
	.string	"out_csd"
.LASF102:
	.string	"sdmmc_send_cmd_send_if_cond"
.LASF123:
	.string	"out_scr"
.LASF61:
	.string	"slot"
.LASF21:
	.string	"intptr_t"
.LASF73:
	.string	"command_timeout_ms"
.LASF35:
	.string	"read_block_len"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF149:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_cmd.c"
.LASF78:
	.string	"is_mem"
.LASF109:
	.string	"sdmmc_send_cmd_all_send_cid"
.LASF56:
	.string	"blklen"
.LASF48:
	.string	"sdmmc_scr_t"
.LASF14:
	.string	"sizetype"
.LASF134:
	.string	"cur_dst"
.LASF40:
	.string	"oem_id"
.LASF130:
	.string	"sdmmc_write_sectors"
.LASF30:
	.string	"TickType_t"
.LASF37:
	.string	"tr_speed"
.LASF148:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"mmc_ver"
.LASF79:
	.string	"is_sdio"
.LASF75:
	.string	"sdmmc_host_t"
.LASF114:
	.string	"out_rca"
.LASF103:
	.string	"pattern"
.LASF105:
	.string	"ocrp"
.LASF91:
	.string	"block_count"
.LASF58:
	.string	"error"
.LASF55:
	.string	"datalen"
.LASF59:
	.string	"timeout_ms"
.LASF89:
	.string	"sdmmc_write_sectors_dma"
.LASF34:
	.string	"sector_size"
.LASF80:
	.string	"is_mmc"
.LASF117:
	.string	"sdmmc_send_cmd_send_csd"
.LASF132:
	.string	"cur_src"
.LASF29:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF122:
	.string	"sdmmc_send_cmd_send_scr"
.LASF142:
	.string	"sdmmc_decode_cid"
.LASF6:
	.string	"short int"
.LASF139:
	.string	"memset"
.LASF135:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF127:
	.string	"crc_enable"
.LASF93:
	.string	"__func__"
.LASF31:
	.string	"csd_ver"
.LASF70:
	.string	"deinit"
.LASF85:
	.string	"sdmmc_card_t"
.LASF51:
	.string	"sdmmc_response_t"
.LASF15:
	.string	"long unsigned int"
.LASF16:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF119:
	.string	"spi_buf"
.LASF7:
	.string	"__uint16_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"__int32_t"
.LASF60:
	.string	"sdmmc_command_t"
.LASF140:
	.string	"memcpy"
.LASF82:
	.string	"log_bus_width"
.LASF120:
	.string	"is_spi"
.LASF133:
	.string	"sdmmc_read_sectors"
.LASF20:
	.string	"uint32_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"io_voltage"
.LASF94:
	.string	"status"
.LASF49:
	.string	"power_class"
.LASF28:
	.string	"esp_err_t"
.LASF108:
	.string	"sdmmc_send_cmd_read_ocr"
.LASF17:
	.string	"uint8_t"
.LASF57:
	.string	"flags"
.LASF74:
	.string	"float"
.LASF43:
	.string	"serial"
.LASF77:
	.string	"ext_csd"
.LASF72:
	.string	"io_int_wait"
.LASF138:
	.string	"__assert_func"
.LASF141:
	.string	"sdmmc_flip_byte_order"
.LASF47:
	.string	"bus_width"
.LASF62:
	.string	"max_freq_khz"
.LASF66:
	.string	"get_bus_width"
.LASF46:
	.string	"sd_spec"
.LASF115:
	.string	"mmc_rca"
.LASF144:
	.string	"sdmmc_decode_csd"
.LASF52:
	.string	"opcode"
.LASF83:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
