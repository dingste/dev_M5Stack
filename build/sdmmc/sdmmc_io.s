	.file	"sdmmc_io.c"
	.text
.Ltext0:
	.section	.text.sdmmc_io_send_op_cond,"ax",@progbits
	.literal_position
	.literal .LC0, 4144
	.align	4
	.global	sdmmc_io_send_op_cond
	.type	sdmmc_io_send_op_cond, @function
sdmmc_io_send_op_cond:
.LFB25:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_io.c"
	.loc 1 139 0
.LVL0:
	entry	sp, 80
.LCFI0:
.LVL1:
	.loc 1 141 0
	movi.n	a5, 5
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL2:
	s32i.n	a5, sp, 0
	l32r	a5, .LC0
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 36
.LVL3:
.LBB7:
	.loc 1 151 0
	movi.n	a6, 1
.LBE7:
	.loc 1 141 0
	movi	a5, 0x64
.LVL4:
.L3:
.LBB8:
	.loc 1 147 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL5:
	.loc 1 148 0
	bnez.n	a10, .L2
	.loc 1 151 0
	l32i.n	a8, sp, 8
	bltz	a8, .L2
	mov.n	a8, a10
	moveqz	a8, a6, a3
	extui	a8, a8, 0, 8
	bnez.n	a8, .L2
.LVL6:
	.loc 1 156 0 discriminator 2
	movi.n	a10, 1
	addi.n	a5, a5, -1
.LVL7:
	call8	vTaskDelay
.LVL8:
	.loc 1 146 0 discriminator 2
	bnez.n	a5, .L3
	.loc 1 155 0
	movi	a10, 0x107
.LVL9:
.L2:
.LBE8:
	.loc 1 158 0
	bnez.n	a10, .L4
	beqz.n	a4, .L4
	.loc 1 159 0
	l32i.n	a2, sp, 8
.LVL10:
	s32i.n	a2, a4, 0
.L4:
	.loc 1 162 0
	mov.n	a2, a10
	retw.n
.LFE25:
	.size	sdmmc_io_send_op_cond, .-sdmmc_io_send_op_cond
	.section	.text.sdmmc_io_rw_direct,"ax",@progbits
	.literal_position
	.literal .LC1, 7168
	.literal .LC2, 131071
	.align	4
	.global	sdmmc_io_rw_direct
	.type	sdmmc_io_rw_direct, @function
sdmmc_io_rw_direct:
.LFB26:
	.loc 1 166 0
.LVL11:
	entry	sp, 80
.LCFI1:
	.loc 1 168 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL12:
	movi.n	a8, 0x34
	s32i.n	a8, sp, 0
	l32r	a8, .LC1
	.loc 1 177 0
	extui	a3, a3, 0, 3
.LVL13:
	.loc 1 168 0
	s32i.n	a8, sp, 36
.LVL14:
	l32r	a8, .LC2
	.loc 1 177 0
	slli	a3, a3, 28
	and	a4, a4, a8
.LVL15:
	l8ui	a8, a6, 0
	slli	a4, a4, 9
	or	a5, a8, a5
	or	a5, a4, a5
	.loc 1 179 0
	mov.n	a10, a2
	.loc 1 177 0
	or	a5, a3, a5
	.loc 1 179 0
	mov.n	a11, sp
	.loc 1 177 0
	s32i.n	a5, sp, 4
	.loc 1 179 0
	call8	sdmmc_send_cmd
.LVL16:
	mov.n	a2, a10
.LVL17:
	.loc 1 180 0
	bnez.n	a10, .L13
	.loc 1 185 0
	l32i.n	a3, sp, 8
	s8i	a3, a6, 0
.L13:
	.loc 1 188 0
	retw.n
.LFE26:
	.size	sdmmc_io_rw_direct, .-sdmmc_io_rw_direct
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"sdmmc_io"
.LC7:
	.string	"\033[0;31mE (%d) %s: %s: unexpected return: 0x%x\033[0m\n"
	.section	.text.sdmmc_io_reset,"ax",@progbits
	.literal_position
	.literal .LC3, -2147483648
	.literal .LC4, __func__$5572
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	sdmmc_io_reset
	.type	sdmmc_io_reset, @function
sdmmc_io_reset:
.LFB21:
	.loc 1 23 0
.LVL18:
	entry	sp, 64
.LCFI2:
	.loc 1 25 0
	l32r	a13, .LC3
	.loc 1 24 0
	movi.n	a3, 8
	.loc 1 25 0
	addi	a14, sp, 16
	movi.n	a12, 6
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 24 0
	s8i	a3, sp, 16
	.loc 1 25 0
	call8	sdmmc_io_rw_direct
.LVL19:
	.loc 1 26 0
	movi	a9, 0x107
	.loc 1 25 0
	mov.n	a3, a10
.LVL20:
	.loc 1 37 0
	movi.n	a8, 0
	.loc 1 26 0
	beq	a10, a9, .L15
.LVL21:
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 0
.LVL22:
	bbci	a2, 3, .L21
	movi	a9, -0x106
	add.n	a9, a10, a9
	beq	a9, a8, .L15
.L21:
	.loc 1 30 0 is_stmt 1
	movi	a2, 0x105
	mov.n	a8, a3
	beq	a3, a2, .L15
	.loc 1 37 0
	movi.n	a8, 0
	.loc 1 33 0
	beq	a3, a8, .L15
	.loc 1 34 0 discriminator 2
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC6
	l32r	a15, .LC4
	l32r	a12, .LC8
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL24:
	.loc 1 35 0 discriminator 2
	mov.n	a8, a3
.LVL25:
.L15:
	.loc 1 38 0
	mov.n	a2, a8
	retw.n
.LFE21:
	.size	sdmmc_io_reset, .-sdmmc_io_reset
	.section	.rodata.str1.1
.LC11:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_io_rw_direct (read SD_IO_CCCR_CARD_CAP) returned 0x%0x\033[0m\n"
.LC14:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_io_rw_direct (write SD_IO_CCCR_BUS_WIDTH) returned 0x%0x\033[0m\n"
	.section	.text.sdmmc_init_io_bus_width,"ax",@progbits
	.literal_position
	.literal .LC9, __func__$5584
	.literal .LC10, .LC5
	.literal .LC12, .LC11
	.literal .LC13, -2147483648
	.literal .LC15, .LC14
	.align	4
	.global	sdmmc_init_io_bus_width
	.type	sdmmc_init_io_bus_width, @function
sdmmc_init_io_bus_width:
.LFB23:
	.loc 1 78 0
.LVL26:
	entry	sp, 64
.LCFI3:
	.loc 1 80 0
	movi	a3, 0x82
	add.n	a3, a2, a3
	l16ui	a9, a3, 0
	movi	a8, -0xc1
	and	a8, a9, a8
	s16i	a8, a3, 0
	.loc 1 81 0
	l32i.n	a3, a2, 0
	.loc 1 103 0
	movi.n	a11, 0
	.loc 1 81 0
	bbci	a3, 1, .L27
.LBB9:
	.loc 1 83 0
	addi	a14, sp, 17
	mov.n	a13, a11
	movi.n	a12, 8
	mov.n	a10, a2
	.loc 1 82 0
	s8i	a11, sp, 17
	.loc 1 83 0
	call8	sdmmc_io_rw_direct
.LVL27:
	mov.n	a3, a10
.LVL28:
	.loc 1 85 0
	beqz.n	a10, .L28
	.loc 1 86 0 discriminator 2
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC10
	s32i.n	a3, sp, 0
	l32r	a15, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	j	.L38
.L28:
	.loc 1 90 0
	l8ui	a3, sp, 17
.LVL30:
	bbci	a3, 6, .L30
	.loc 1 90 0 is_stmt 0 discriminator 1
	sext	a3, a3, 7
	bgez	a3, .L31
.L30:
.LBB10:
	.loc 1 94 0 is_stmt 1
	l32r	a13, .LC13
	.loc 1 93 0
	movi.n	a3, 2
	.loc 1 94 0
	addi	a14, sp, 16
	movi.n	a12, 7
	movi.n	a11, 0
	mov.n	a10, a2
.LVL31:
	.loc 1 93 0
	s8i	a3, sp, 16
	.loc 1 94 0
	call8	sdmmc_io_rw_direct
.LVL32:
	mov.n	a3, a10
.LVL33:
	.loc 1 96 0
	beqz.n	a10, .L32
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC10
	l32r	a15, .LC9
	l32r	a12, .LC15
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
.L38:
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 98 0 discriminator 2
	mov.n	a11, a3
	j	.L27
.L32:
	.loc 1 100 0
	movi	a3, 0x82
.LVL36:
	add.n	a2, a2, a3
.LVL37:
	l16ui	a8, a2, 0
	movi	a3, -0xc1
	and	a8, a8, a3
	movi	a3, 0x80
	or	a3, a8, a3
	s16i	a3, a2, 0
.LVL38:
.L31:
.LBE10:
.LBE9:
	.loc 1 103 0 discriminator 1
	movi.n	a11, 0
.LVL39:
.L27:
	.loc 1 104 0
	mov.n	a2, a11
	retw.n
.LFE23:
	.size	sdmmc_init_io_bus_width, .-sdmmc_init_io_bus_width
	.section	.text.sdmmc_io_enable_hs_mode,"ax",@progbits
	.literal_position
	.literal .LC16, 20000
	.literal .LC17, -2013265920
	.literal .LC18, -25536
	.align	4
	.global	sdmmc_io_enable_hs_mode
	.type	sdmmc_io_enable_hs_mode, @function
sdmmc_io_enable_hs_mode:
.LFB24:
	.loc 1 108 0
.LVL40:
	entry	sp, 48
.LCFI4:
	.loc 1 109 0
	l32r	a9, .LC16
	.loc 1 110 0
	l32i.n	a8, a2, 8
	.loc 1 109 0
	s16i	a9, a2, 128
	.loc 1 110 0
	blt	a9, a8, .L40
	.loc 1 112 0
	s16i	a8, a2, 128
	.loc 1 113 0
	movi.n	a10, 0
	j	.L41
.L40:
	.loc 1 121 0
	l32r	a13, .LC17
	.loc 1 120 0
	movi.n	a8, 2
	.loc 1 121 0
	mov.n	a14, sp
	movi.n	a12, 0x13
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 120 0
	s8i	a8, sp, 0
	.loc 1 121 0
	call8	sdmmc_io_rw_direct
.LVL41:
	mov.n	a9, a10
	.loc 1 123 0
	bnez.n	a10, .L41
.LVL42:
	.loc 1 130 0
	l8ui	a8, sp, 0
	.loc 1 131 0
	movi	a10, 0x106
	.loc 1 130 0
	extui	a8, a8, 0, 2
	bnei	a8, 3, .L41
	.loc 1 133 0
	l32r	a3, .LC18
	.loc 1 134 0
	mov.n	a10, a9
	.loc 1 133 0
	s16i	a3, a2, 128
.LVL43:
.L41:
	.loc 1 135 0
	mov.n	a2, a10
.LVL44:
	retw.n
.LFE24:
	.size	sdmmc_io_enable_hs_mode, .-sdmmc_io_enable_hs_mode
	.section	.rodata.str1.1
.LC21:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_io_rw_direct (read 0x%x) returned 0x%x\033[0m\n"
	.section	.text.sdmmc_io_read_byte,"ax",@progbits
	.literal_position
	.literal .LC19, __func__$5621
	.literal .LC20, .LC5
	.literal .LC22, .LC21
	.align	4
	.global	sdmmc_io_read_byte
	.type	sdmmc_io_read_byte, @function
sdmmc_io_read_byte:
.LFB27:
	.loc 1 193 0
.LVL45:
	entry	sp, 48
.LCFI5:
	.loc 1 194 0
	mov.n	a10, a2
	mov.n	a14, a5
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	sdmmc_io_rw_direct
.LVL46:
	mov.n	a2, a10
.LVL47:
	.loc 1 195 0
	beqz.n	a10, .L45
	.loc 1 196 0 discriminator 2
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC20
	l32r	a15, .LC19
	l32r	a12, .LC22
	mov.n	a13, a10
	s32i.n	a2, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
.L45:
	.loc 1 199 0
	retw.n
.LFE27:
	.size	sdmmc_io_read_byte, .-sdmmc_io_read_byte
	.section	.rodata.str1.1
.LC26:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_io_rw_direct (write 0x%x) returned 0x%x\033[0m\n"
	.section	.text.sdmmc_io_write_byte,"ax",@progbits
	.literal_position
	.literal .LC23, -2013265920
	.literal .LC24, __func__$5631
	.literal .LC25, .LC5
	.literal .LC27, .LC26
	.align	4
	.global	sdmmc_io_write_byte
	.type	sdmmc_io_write_byte, @function
sdmmc_io_write_byte:
.LFB28:
	.loc 1 203 0
.LVL50:
	entry	sp, 64
.LCFI6:
	.loc 1 205 0
	l32r	a13, .LC23
	mov.n	a11, a3
	addi	a14, sp, 16
	mov.n	a12, a4
	mov.n	a10, a2
	.loc 1 204 0
	s8i	a5, sp, 16
	.loc 1 205 0
	call8	sdmmc_io_rw_direct
.LVL51:
	mov.n	a3, a10
.LVL52:
	.loc 1 207 0
	beqz.n	a10, .L50
	.loc 1 208 0 discriminator 2
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC25
	l32r	a15, .LC24
	l32r	a12, .LC27
	mov.n	a13, a10
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL54:
	j	.L53
.L50:
	.loc 1 214 0
	mov.n	a2, a6
.LVL55:
	.loc 1 211 0
	beqz.n	a6, .L51
.LVL56:
	.loc 1 212 0
	l8ui	a2, sp, 16
.LVL57:
	s8i	a2, a6, 0
.L53:
	.loc 1 214 0
	mov.n	a2, a3
.L51:
	.loc 1 215 0
	retw.n
.LFE28:
	.size	sdmmc_io_write_byte, .-sdmmc_io_write_byte
	.section	.rodata.str1.1
.LC34:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_send_cmd returned 0x%x\033[0m\n"
	.section	.text.sdmmc_io_rw_extended,"ax",@progbits
	.literal_position
	.literal .LC28, 7168
	.literal .LC29, 134217728
	.literal .LC30, 131071
	.literal .LC31, 7232
	.literal .LC32, __func__$5644
	.literal .LC33, .LC5
	.literal .LC35, .LC34
	.align	4
	.global	sdmmc_io_rw_extended
	.type	sdmmc_io_rw_extended, @function
sdmmc_io_rw_extended:
.LFB29:
	.loc 1 219 0
.LVL58:
	entry	sp, 96
.LCFI7:
.LVL59:
	.loc 1 222 0
	movi.n	a11, 0
	movi.n	a12, 0x30
	addi	a10, sp, 16
	call8	memset
.LVL60:
	movi.n	a8, 0x35
	s32i.n	a8, sp, 16
	.loc 1 232 0
	l32r	a9, .LC29
	.loc 1 222 0
	l32r	a8, .LC28
	movi	a11, 0x200
	s32i.n	a8, sp, 52
	s32i.n	a6, sp, 40
	s32i.n	a7, sp, 44
	s32i.n	a11, sp, 48
	.loc 1 232 0
	and	a8, a5, a9
	.loc 1 219 0
	.loc 1 232 0
	beqz.n	a8, .L55
	.loc 1 233 0
	extui	a8, a7, 0, 9
	.loc 1 234 0
	movi	a10, 0x104
	.loc 1 236 0
	srli	a9, a7, 9
	.loc 1 233 0
	beqz.n	a8, .L57
	j	.L56
.L55:
	.loc 1 234 0
	movi	a10, 0x104
	.loc 1 238 0
	bltu	a11, a7, .L56
	.loc 1 242 0
	addmi	a9, a7, -0x200
	movnez	a8, a7, a9
	mov.n	a9, a8
.LVL61:
	.loc 1 247 0
	s32i.n	a7, sp, 48
.LVL62:
.L57:
	.loc 1 252 0
	l32r	a10, .LC30
	extui	a3, a3, 0, 3
.LVL63:
	slli	a3, a3, 28
	and	a4, a4, a10
.LVL64:
	or	a8, a3, a5
	slli	a4, a4, 9
	or	a8, a8, a4
	extui	a9, a9, 0, 9
.LVL65:
	or	a8, a8, a9
.LVL66:
	.loc 1 253 0
	s32i.n	a8, sp, 20
	.loc 1 255 0
	bltz	a8, .L59
	.loc 1 256 0
	l32r	a3, .LC31
	s32i.n	a3, sp, 52
.L59:
	.loc 1 259 0
	mov.n	a10, a2
	addi	a11, sp, 16
	call8	sdmmc_send_cmd
.LVL67:
	mov.n	a2, a10
.LVL68:
	.loc 1 265 0
	movi.n	a10, 0
	.loc 1 260 0
	beq	a2, a10, .L56
	.loc 1 261 0 discriminator 2
	call8	esp_log_timestamp
.LVL69:
	l32r	a11, .LC33
	l32r	a15, .LC32
	l32r	a12, .LC35
	mov.n	a13, a10
	s32i.n	a2, sp, 0
	movi.n	a10, 1
	mov.n	a14, a11
	call8	esp_log_write
.LVL70:
	.loc 1 262 0 discriminator 2
	mov.n	a10, a2
.LVL71:
.L56:
	.loc 1 266 0
	mov.n	a2, a10
	retw.n
.LFE29:
	.size	sdmmc_io_rw_extended, .-sdmmc_io_rw_extended
	.section	.text.sdmmc_io_read_bytes,"ax",@progbits
	.literal_position
	.literal .LC36, 67108864
	.align	4
	.global	sdmmc_io_read_bytes
	.type	sdmmc_io_read_bytes, @function
sdmmc_io_read_bytes:
.LFB30:
	.loc 1 270 0
.LVL72:
	entry	sp, 48
.LCFI8:
.LVL73:
.LBB11:
	.loc 1 277 0
	movi.n	a8, -4
.LBE11:
	.loc 1 276 0
	j	.L66
.LVL74:
.L69:
.LBB12:
	.loc 1 277 0
	and	a7, a6, a8
.LVL75:
	.loc 1 278 0
	moveqz	a7, a6, a7
.LVL76:
	.loc 1 280 0
	l32r	a13, .LC36
	mov.n	a15, a7
	mov.n	a14, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	s32i.n	a8, sp, 0
	call8	sdmmc_io_rw_extended
.LVL77:
	.loc 1 283 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L70
	.loc 1 286 0
	add.n	a5, a5, a7
.LVL78:
	.loc 1 287 0
	sub	a6, a6, a7
.LVL79:
	.loc 1 288 0
	add.n	a4, a4, a7
.LVL80:
.L66:
.LBE12:
	.loc 1 276 0
	bnez.n	a6, .L69
	.loc 1 290 0
	mov.n	a2, a6
.LVL81:
	retw.n
.LVL82:
.L70:
.LBB13:
	.loc 1 280 0
	mov.n	a2, a10
.LVL83:
.LBE13:
	.loc 1 291 0
	retw.n
.LFE30:
	.size	sdmmc_io_read_bytes, .-sdmmc_io_read_bytes
	.section	.text.sdmmc_io_write_bytes,"ax",@progbits
	.literal_position
	.literal .LC37, -2080374784
	.align	4
	.global	sdmmc_io_write_bytes
	.type	sdmmc_io_write_bytes, @function
sdmmc_io_write_bytes:
.LFB31:
	.loc 1 295 0
.LVL84:
	entry	sp, 48
.LCFI9:
.LVL85:
.LBB14:
	.loc 1 300 0
	movi.n	a8, -4
.LBE14:
	.loc 1 299 0
	j	.L72
.LVL86:
.L75:
.LBB15:
	.loc 1 300 0
	and	a7, a6, a8
.LVL87:
	.loc 1 301 0
	moveqz	a7, a6, a7
.LVL88:
	.loc 1 303 0
	l32r	a13, .LC37
	mov.n	a15, a7
	mov.n	a14, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	s32i.n	a8, sp, 0
	call8	sdmmc_io_rw_extended
.LVL89:
	.loc 1 306 0
	l32i.n	a8, sp, 0
	bnez.n	a10, .L76
	.loc 1 309 0
	add.n	a5, a5, a7
.LVL90:
	.loc 1 310 0
	sub	a6, a6, a7
.LVL91:
	.loc 1 311 0
	add.n	a4, a4, a7
.LVL92:
.L72:
.LBE15:
	.loc 1 299 0
	bnez.n	a6, .L75
	.loc 1 313 0
	mov.n	a2, a6
.LVL93:
	retw.n
.LVL94:
.L76:
.LBB16:
	.loc 1 303 0
	mov.n	a2, a10
.LVL95:
.LBE16:
	.loc 1 314 0
	retw.n
.LFE31:
	.size	sdmmc_io_write_bytes, .-sdmmc_io_write_bytes
	.section	.text.sdmmc_io_read_blocks,"ax",@progbits
	.literal_position
	.literal .LC38, 201326592
	.align	4
	.global	sdmmc_io_read_blocks
	.type	sdmmc_io_read_blocks, @function
sdmmc_io_read_blocks:
.LFB32:
	.loc 1 318 0
.LVL96:
	entry	sp, 32
.LCFI10:
	.loc 1 319 0
	extui	a9, a6, 0, 2
	.loc 1 318 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a14, a5
	mov.n	a15, a6
	.loc 1 320 0
	movi	a2, 0x104
.LVL97:
	.loc 1 319 0
	bnez.n	a9, .L78
	.loc 1 322 0
	l32r	a13, .LC38
	call8	sdmmc_io_rw_extended
.LVL98:
	mov.n	a2, a10
.L78:
	.loc 1 325 0
	retw.n
.LFE32:
	.size	sdmmc_io_read_blocks, .-sdmmc_io_read_blocks
	.section	.text.sdmmc_io_write_blocks,"ax",@progbits
	.literal_position
	.literal .LC39, -1946157056
	.align	4
	.global	sdmmc_io_write_blocks
	.type	sdmmc_io_write_blocks, @function
sdmmc_io_write_blocks:
.LFB33:
	.loc 1 329 0
.LVL99:
	entry	sp, 32
.LCFI11:
	.loc 1 330 0
	extui	a9, a6, 0, 2
	.loc 1 329 0
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a14, a5
	mov.n	a15, a6
	.loc 1 331 0
	movi	a2, 0x104
.LVL100:
	.loc 1 330 0
	bnez.n	a9, .L81
	.loc 1 333 0
	l32r	a13, .LC39
	call8	sdmmc_io_rw_extended
.LVL101:
	mov.n	a2, a10
.L81:
	.loc 1 336 0
	retw.n
.LFE33:
	.size	sdmmc_io_write_blocks, .-sdmmc_io_write_blocks
	.section	.text.sdmmc_io_enable_int,"ax",@progbits
	.align	4
	.global	sdmmc_io_enable_int
	.type	sdmmc_io_enable_int, @function
sdmmc_io_enable_int:
.LFB34:
	.loc 1 339 0
.LVL102:
	entry	sp, 32
.LCFI12:
	.loc 1 340 0
	l32i.n	a8, a2, 44
	.loc 1 341 0
	movi	a10, 0x106
	.loc 1 340 0
	beqz.n	a8, .L84
	.loc 1 343 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL103:
.L84:
	.loc 1 344 0
	mov.n	a2, a10
.LVL104:
	retw.n
.LFE34:
	.size	sdmmc_io_enable_int, .-sdmmc_io_enable_int
	.section	.rodata.str1.1
.LC45:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_io_send_op_cond (1) returned 0x%x\033[0m\n"
	.section	.text.sdmmc_init_io,"ax",@progbits
	.literal_position
	.literal .LC41, 3670016
	.literal .LC42, 16744448
	.literal .LC43, __func__$5577
	.literal .LC44, .LC5
	.literal .LC46, .LC45
	.align	4
	.global	sdmmc_init_io
	.type	sdmmc_init_io, @function
sdmmc_init_io:
.LFB22:
	.loc 1 41 0
.LVL105:
	entry	sp, 48
.LCFI13:
	.loc 1 45 0
	addi	a4, a2, 56
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, a2
	call8	sdmmc_io_send_op_cond
.LVL106:
	movi	a8, 0x82
	.loc 1 48 0
	add.n	a8, a2, a8
	.loc 1 46 0
	beqz.n	a10, .L88
	.loc 1 48 0
	l16ui	a3, a8, 0
	movi.n	a2, -3
.LVL107:
	and	a3, a3, a2
	.loc 1 49 0
	movi.n	a2, 1
	or	a2, a3, a2
	s16i	a2, a8, 0
.LVL108:
.L96:
	.loc 1 74 0
	movi.n	a2, 0
	retw.n
.LVL109:
.L88:
.LBB17:
	.loc 1 51 0
	l16ui	a9, a8, 0
	movi.n	a3, 2
	or	a3, a9, a3
	s16i	a3, a8, 0
	.loc 1 53 0
	l32i.n	a10, a2, 56
.LVL110:
	bbci	a10, 27, .L90
	.loc 1 55 0
	movi.n	a9, -2
	and	a3, a3, a9
	s16i	a3, a8, 0
.L90:
	.loc 1 57 0
	movi	a9, 0x82
	add.n	a9, a2, a9
	l16ui	a11, a9, 0
	extui	a3, a10, 28, 3
	slli	a8, a3, 3
	movi	a3, -0x39
	and	a3, a11, a3
	or	a3, a3, a8
	s16i	a3, a9, 0
	.loc 1 59 0
	l32i	a11, a2, 128
	l32r	a8, .LC41
	bany	a11, a8, .L91
	.loc 1 60 0
	movi.n	a8, -3
	and	a3, a3, a8
	s16i	a3, a9, 0
.L91:
.LVL111:
	.loc 1 64 0
	l32r	a11, .LC42
	mov.n	a12, a4
	and	a11, a10, a11
.LVL112:
	mov.n	a10, a2
	call8	sdmmc_io_send_op_cond
.LVL113:
	mov.n	a3, a10
.LVL114:
	.loc 1 65 0
	beqz.n	a10, .L92
	.loc 1 66 0 discriminator 2
	call8	esp_log_timestamp
.LVL115:
	l32r	a11, .LC44
	l32r	a15, .LC43
	l32r	a12, .LC46
	mov.n	a13, a10
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL116:
	.loc 1 67 0 discriminator 2
	mov.n	a2, a3
.LVL117:
	retw.n
.LVL118:
.L92:
	.loc 1 69 0
	mov.n	a10, a2
	call8	sdmmc_io_enable_int
.LVL119:
	j	.L96
.LBE17:
.LFE22:
	.size	sdmmc_init_io, .-sdmmc_init_io
	.section	.text.sdmmc_io_wait_int,"ax",@progbits
	.align	4
	.global	sdmmc_io_wait_int
	.type	sdmmc_io_wait_int, @function
sdmmc_io_wait_int:
.LFB35:
	.loc 1 347 0
.LVL120:
	entry	sp, 32
.LCFI14:
	.loc 1 348 0
	l32i.n	a8, a2, 48
	.loc 1 347 0
	mov.n	a11, a3
	.loc 1 349 0
	movi	a10, 0x106
	.loc 1 348 0
	beqz.n	a8, .L98
	.loc 1 351 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL121:
.L98:
	.loc 1 352 0
	mov.n	a2, a10
.LVL122:
	retw.n
.LFE35:
	.size	sdmmc_io_wait_int, .-sdmmc_io_wait_int
	.section	.rodata.__func__$5644,"a",@progbits
	.type	__func__$5644, @object
	.size	__func__$5644, 21
__func__$5644:
	.string	"sdmmc_io_rw_extended"
	.section	.rodata.__func__$5631,"a",@progbits
	.type	__func__$5631, @object
	.size	__func__$5631, 20
__func__$5631:
	.string	"sdmmc_io_write_byte"
	.section	.rodata.__func__$5621,"a",@progbits
	.type	__func__$5621, @object
	.size	__func__$5621, 19
__func__$5621:
	.string	"sdmmc_io_read_byte"
	.section	.rodata.__func__$5584,"a",@progbits
	.type	__func__$5584, @object
	.size	__func__$5584, 24
__func__$5584:
	.string	"sdmmc_init_io_bus_width"
	.section	.rodata.__func__$5577,"a",@progbits
	.type	__func__$5577, @object
	.size	__func__$5577, 14
__func__$5577:
	.string	"sdmmc_init_io"
	.section	.rodata.__func__$5572,"a",@progbits
	.type	__func__$5572, @object
	.size	__func__$5572, 15
__func__$5572:
	.string	"sdmmc_io_reset"
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI9-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI10-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI11-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI12-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_common.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x119d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xc
	.4byte	.LASF130
	.4byte	.LASF131
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
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
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xff
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x131
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x76
	.4byte	0xee
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0xd
	.byte	0x1c
	.byte	0x7
	.byte	0x1d
	.4byte	0x1b0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x7
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x7
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x7
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x7
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x7
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x7
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0x25
	.4byte	0x153
	.uleb128 0xd
	.byte	0x1c
	.byte	0x7
	.byte	0x2a
	.4byte	0x20c
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2d
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x31
	.4byte	0x1bb
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.byte	0x36
	.4byte	0x238
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x7
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x39
	.4byte	0x217
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.byte	0x3e
	.4byte	0x258
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3f
	.4byte	0xcd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x7
	.byte	0x40
	.4byte	0x243
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x45
	.4byte	0x26e
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x27e
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0x51
	.4byte	0x2f3
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x52
	.4byte	0xee
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0x7
	.byte	0x53
	.4byte	0xee
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x54
	.4byte	0x263
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0x55
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0x56
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.byte	0x74
	.4byte	0x131
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0x76
	.4byte	0x27e
	.uleb128 0xd
	.byte	0x38
	.byte	0x7
	.byte	0x7e
	.4byte	0x3af
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0x7f
	.4byte	0xee
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x7
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x7
	.byte	0x8c
	.4byte	0x3af
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x7
	.byte	0x8d
	.4byte	0x3bb
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x7
	.byte	0x8e
	.4byte	0x3d5
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x7
	.byte	0x8f
	.4byte	0x3ea
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x7
	.byte	0x90
	.4byte	0x404
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x7
	.byte	0x91
	.4byte	0x41e
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x7
	.byte	0x92
	.4byte	0x43e
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x7
	.byte	0x93
	.4byte	0x3bb
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.byte	0x94
	.4byte	0x453
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0x95
	.4byte	0x46d
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x7
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x10
	.4byte	0x131
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b6
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x3d5
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c1
	.uleb128 0x11
	.4byte	0x2c
	.4byte	0x3ea
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3db
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x404
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x13c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f0
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x41e
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40a
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x438
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x438
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x424
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x453
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x444
	.uleb128 0x11
	.4byte	0x131
	.4byte	0x46d
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x143
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x459
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x97
	.4byte	0x2fe
	.uleb128 0xd
	.byte	0x88
	.byte	0x7
	.byte	0x9c
	.4byte	0x550
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x7
	.byte	0x9d
	.4byte	0x473
	.byte	0
	.uleb128 0xf
	.string	"ocr"
	.byte	0x7
	.byte	0x9e
	.4byte	0xee
	.byte	0x38
	.uleb128 0xf
	.string	"cid"
	.byte	0x7
	.byte	0x9f
	.4byte	0x20c
	.byte	0x3c
	.uleb128 0xf
	.string	"csd"
	.byte	0x7
	.byte	0xa0
	.4byte	0x1b0
	.byte	0x58
	.uleb128 0xf
	.string	"scr"
	.byte	0x7
	.byte	0xa1
	.4byte	0x238
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x7
	.byte	0xa2
	.4byte	0x258
	.byte	0x7c
	.uleb128 0xf
	.string	"rca"
	.byte	0x7
	.byte	0xa3
	.4byte	0xd8
	.byte	0x7e
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0xa4
	.4byte	0xd8
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.byte	0xa5
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.byte	0xa6
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.byte	0xa7
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.byte	0xa8
	.4byte	0xee
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.byte	0xa9
	.4byte	0xee
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.byte	0xaa
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.byte	0xab
	.4byte	0xee
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x7
	.byte	0xac
	.4byte	0x47e
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x8
	.byte	0x78
	.4byte	0x13c
	.byte	0x3
	.4byte	0x577
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x8
	.byte	0x78
	.4byte	0x577
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x7
	.4byte	0x550
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x8
	.byte	0x7d
	.4byte	0xee
	.byte	0x3
	.4byte	0x59e
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x8
	.byte	0x7d
	.4byte	0x3af
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8a
	.4byte	0x131
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65d
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x8a
	.4byte	0x65d
	.4byte	.LLST0
	.uleb128 0x18
	.string	"ocr"
	.byte	0x1
	.byte	0x8a
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8a
	.4byte	0x663
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x8c
	.4byte	0x131
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x640
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x92
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x116a
	.4byte	0x62f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0x1175
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x1181
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x550
	.uleb128 0x6
	.byte	0x4
	.4byte	0xee
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa4
	.4byte	0x131
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x728
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa4
	.4byte	0x65d
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa4
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x20
	.string	"reg"
	.byte	0x1
	.byte	0xa5
	.4byte	0xee
	.4byte	.LLST5
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0xa5
	.4byte	0xee
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa5
	.4byte	0x728
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0xa7
	.4byte	0x131
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xa8
	.4byte	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.4byte	.LASF96
	.4byte	0x73e
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0x1181
	.4byte	0x710
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL16
	.4byte	0x116a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x73e
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x72e
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1
	.byte	0x16
	.4byte	0x131
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x805
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x16
	.4byte	0x65d
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LASF94
	.byte	0x1
	.byte	0x18
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x19
	.4byte	0x131
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x815
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5572
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x669
	.4byte	0x7c1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL23
	.4byte	0x118a
	.uleb128 0x1f
	.4byte	.LVL24
	.4byte	0x1195
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5572
	.uleb128 0x1e
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
	.4byte	0x815
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x805
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4d
	.4byte	0x131
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90b
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x4d
	.4byte	0x65d
	.4byte	.LLST8
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x4f
	.4byte	0x131
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x91b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5584
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0x52
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x26
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x8d7
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.byte	0x5d
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x669
	.4byte	0x8be
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x118a
	.uleb128 0x1f
	.4byte	.LVL35
	.4byte	0x1195
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x669
	.4byte	0x900
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0x118a
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x91b
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x90b
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x6b
	.4byte	0x131
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a4
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x6b
	.4byte	0x65d
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"val"
	.byte	0x1
	.byte	0x78
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x79
	.4byte	0x131
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x21
	.4byte	.LASF96
	.4byte	0x9a4
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.byte	0x81
	.4byte	0x9a9
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0x669
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x4e
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x90b
	.uleb128 0x7
	.4byte	0xcd
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x1
	.byte	0xbf
	.4byte	0x131
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8f
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0xbf
	.4byte	0x65d
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0xbf
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc0
	.4byte	0xee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc0
	.4byte	0x728
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xc2
	.4byte	0x131
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0xa8f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5621
	.uleb128 0x1d
	.4byte	.LVL46
	.4byte	0x669
	.4byte	0xa44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL48
	.4byte	0x118a
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0x1195
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5621
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x72e
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0xc9
	.4byte	0x131
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb97
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0xc9
	.4byte	0x65d
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc9
	.4byte	0xee
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0xca
	.4byte	0xee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0xca
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0xca
	.4byte	0x728
	.4byte	.LLST15
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.byte	0xcc
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xcd
	.4byte	0x131
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0xba7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5631
	.uleb128 0x1d
	.4byte	.LVL51
	.4byte	0x669
	.4byte	0xb4c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x4e
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0x118a
	.uleb128 0x1f
	.4byte	.LVL54
	.4byte	0x1195
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5631
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xba7
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xb97
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.byte	0xd9
	.4byte	0x131
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce3
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0xd9
	.4byte	0x65d
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0xd9
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x20
	.string	"reg"
	.byte	0x1
	.byte	0xda
	.4byte	0xee
	.4byte	.LLST18
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0xda
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.byte	0xda
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.byte	0xda
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0xdc
	.4byte	0x131
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.LASF109
	.byte	0x1
	.byte	0xdd
	.4byte	0xce3
	.2byte	0x200
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xde
	.4byte	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe7
	.4byte	0xee
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0xcf8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5644
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0x1181
	.4byte	0xc84
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x116a
	.4byte	0xc9f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL69
	.4byte	0x118a
	.uleb128 0x1f
	.4byte	.LVL70
	.4byte	0x1195
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5644
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xcf8
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xce8
	.uleb128 0x29
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x10c
	.4byte	0x131
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd9
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x10c
	.4byte	0x65d
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x10c
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x10d
	.4byte	0xee
	.4byte	.LLST23
	.uleb128 0x2c
	.string	"dst"
	.byte	0x1
	.2byte	0x10d
	.4byte	0xa2
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x10d
	.4byte	0x2c
	.4byte	.LLST25
	.uleb128 0x2d
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x113
	.4byte	0x728
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x115
	.4byte	0x2c
	.4byte	.LLST26
	.uleb128 0x2f
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x116
	.4byte	0x2c
	.4byte	.LLST27
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x118
	.4byte	0x131
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xbac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x125
	.4byte	0x131
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb6
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x125
	.4byte	0x65d
	.4byte	.LLST29
	.uleb128 0x2b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x125
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x126
	.4byte	0xee
	.4byte	.LLST30
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.2byte	0x126
	.4byte	0xf9
	.4byte	.LLST31
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x126
	.4byte	0x2c
	.4byte	.LLST32
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x129
	.4byte	0xeb6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x2f
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x12c
	.4byte	0x2c
	.4byte	.LLST33
	.uleb128 0x2f
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x12d
	.4byte	0x2c
	.4byte	.LLST34
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x131
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LVL89
	.4byte	0xbac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x4f
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a9
	.uleb128 0x29
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x13c
	.4byte	0x131
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4f
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x13c
	.4byte	0x65d
	.4byte	.LLST36
	.uleb128 0x2b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x13c
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x13d
	.4byte	0xee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.string	"dst"
	.byte	0x1
	.2byte	0x13d
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x13d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LVL98
	.4byte	0xbac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x48
	.byte	0x47
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x147
	.4byte	0x131
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe3
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x147
	.4byte	0x65d
	.4byte	.LLST37
	.uleb128 0x2b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x147
	.4byte	0xee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x148
	.4byte	0xee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.2byte	0x148
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x148
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LVL101
	.4byte	0xbac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x4d
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x152
	.4byte	0x131
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100e
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x152
	.4byte	0x65d
	.4byte	.LLST38
	.byte	0
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x1
	.byte	0x28
	.4byte	0x131
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10fe
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x28
	.4byte	0x65d
	.4byte	.LLST39
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x2d
	.4byte	0x131
	.4byte	.LLST40
	.uleb128 0x23
	.4byte	.LASF96
	.4byte	0x110e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5577
	.uleb128 0x26
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x10e2
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.byte	0x3e
	.4byte	0xee
	.4byte	.LLST41
	.uleb128 0x1d
	.4byte	.LVL113
	.4byte	0x59e
	.4byte	0x108a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL115
	.4byte	0x118a
	.uleb128 0x1d
	.4byte	.LVL116
	.4byte	0x1195
	.4byte	0x10d1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5577
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0xfe3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL106
	.4byte	0x59e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x110e
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x10fe
	.uleb128 0x29
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x15a
	.4byte	0x131
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1158
	.uleb128 0x2a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x15a
	.4byte	0x65d
	.4byte	.LLST42
	.uleb128 0x2b
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x15a
	.4byte	0x143
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LVL121
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0x14e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.byte	0x30
	.uleb128 0x35
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x32b
	.uleb128 0x36
	.4byte	.LASF132
	.4byte	.LASF132
	.uleb128 0x34
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xa
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xa
	.byte	0x6b
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xa
	.2byte	0x107
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x8
	.byte	0x63
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x72
	.sleb128 -130
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x15
	.byte	0x73
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x4c
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0xc
	.4byte	0x1ffff
	.byte	0x1a
	.byte	0x39
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x37
	.byte	0x1a
	.byte	0x4c
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0xc
	.4byte	0x1ffff
	.byte	0x1a
	.byte	0x39
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x17
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x37
	.byte	0x1a
	.byte	0x4c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.4byte	0x1ffff
	.byte	0x1a
	.byte	0x39
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL72
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL72
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL79
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL82
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL84
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL94
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0x78
	.sleb128 -130
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x74
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x74
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.4byte	0xff8000
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
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
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"count"
.LASF31:
	.string	"capacity"
.LASF34:
	.string	"card_command_class"
.LASF95:
	.string	"sdmmc_init_io_bus_width"
.LASF84:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF100:
	.string	"sdmmc_io_read_byte"
.LASF121:
	.string	"sdmmc_init_io"
.LASF116:
	.string	"sdmmc_io_write_bytes"
.LASF4:
	.string	"__uint8_t"
.LASF40:
	.string	"revision"
.LASF29:
	.string	"csd_ver"
.LASF126:
	.string	"vTaskDelay"
.LASF62:
	.string	"init"
.LASF119:
	.string	"sdmmc_io_write_blocks"
.LASF65:
	.string	"set_bus_ddr_mode"
.LASF48:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF90:
	.string	"sdmmc_io_rw_direct"
.LASF128:
	.string	"esp_log_write"
.LASF102:
	.string	"addr"
.LASF87:
	.string	"voltage"
.LASF91:
	.string	"func"
.LASF122:
	.string	"host_ocr"
.LASF51:
	.string	"response"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"set_bus_width"
.LASF101:
	.string	"function"
.LASF94:
	.string	"sdio_reset"
.LASF98:
	.string	"sdmmc_io_enable_hs_mode"
.LASF105:
	.string	"in_byte"
.LASF12:
	.string	"long int"
.LASF36:
	.string	"sdmmc_csd_t"
.LASF67:
	.string	"do_transaction"
.LASF17:
	.string	"uint16_t"
.LASF86:
	.string	"card"
.LASF37:
	.string	"mfg_id"
.LASF92:
	.string	"byte"
.LASF114:
	.string	"size_aligned"
.LASF9:
	.string	"__uint32_t"
.LASF103:
	.string	"out_byte"
.LASF82:
	.string	"reserved"
.LASF125:
	.string	"sdmmc_send_cmd"
.LASF131:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/sdmmc"
.LASF43:
	.string	"sdmmc_cid_t"
.LASF74:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"slot"
.LASF66:
	.string	"set_card_clk"
.LASF117:
	.string	"pc_src"
.LASF93:
	.string	"sdmmc_io_reset"
.LASF129:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"name"
.LASF113:
	.string	"pc_dst"
.LASF107:
	.string	"sdmmc_io_rw_extended"
.LASF52:
	.string	"data"
.LASF69:
	.string	"io_int_enable"
.LASF112:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"date"
.LASF124:
	.string	"timeout_ticks"
.LASF71:
	.string	"command_timeout_ms"
.LASF97:
	.string	"card_cap"
.LASF33:
	.string	"read_block_len"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF76:
	.string	"is_mem"
.LASF54:
	.string	"blklen"
.LASF46:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF53:
	.string	"datalen"
.LASF38:
	.string	"oem_id"
.LASF28:
	.string	"TickType_t"
.LASF35:
	.string	"tr_speed"
.LASF30:
	.string	"mmc_ver"
.LASF77:
	.string	"is_sdio"
.LASF73:
	.string	"sdmmc_host_t"
.LASF111:
	.string	"sdmmc_io_read_bytes"
.LASF99:
	.string	"hs_mask"
.LASF88:
	.string	"ocrp"
.LASF72:
	.string	"float"
.LASF56:
	.string	"error"
.LASF75:
	.string	"ext_csd"
.LASF57:
	.string	"timeout_ms"
.LASF32:
	.string	"sector_size"
.LASF78:
	.string	"is_mmc"
.LASF108:
	.string	"datap"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF109:
	.string	"max_byte_transfer_size"
.LASF6:
	.string	"short int"
.LASF104:
	.string	"sdmmc_io_write_byte"
.LASF132:
	.string	"memset"
.LASF127:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF96:
	.string	"__func__"
.LASF85:
	.string	"get_host_ocr"
.LASF68:
	.string	"deinit"
.LASF83:
	.string	"sdmmc_card_t"
.LASF49:
	.string	"sdmmc_response_t"
.LASF14:
	.string	"long unsigned int"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF15:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF7:
	.string	"__uint16_t"
.LASF123:
	.string	"sdmmc_io_wait_int"
.LASF8:
	.string	"__int32_t"
.LASF58:
	.string	"sdmmc_command_t"
.LASF118:
	.string	"sdmmc_io_read_blocks"
.LASF80:
	.string	"log_bus_width"
.LASF89:
	.string	"sdmmc_io_send_op_cond"
.LASF120:
	.string	"sdmmc_io_enable_int"
.LASF19:
	.string	"uint32_t"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF61:
	.string	"io_voltage"
.LASF47:
	.string	"power_class"
.LASF26:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF55:
	.string	"flags"
.LASF41:
	.string	"serial"
.LASF70:
	.string	"io_int_wait"
.LASF130:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/sdmmc/sdmmc_io.c"
.LASF45:
	.string	"bus_width"
.LASF106:
	.string	"tmp_byte"
.LASF60:
	.string	"max_freq_khz"
.LASF64:
	.string	"get_bus_width"
.LASF44:
	.string	"sd_spec"
.LASF115:
	.string	"will_transfer"
.LASF50:
	.string	"opcode"
.LASF79:
	.string	"num_io_functions"
.LASF81:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
