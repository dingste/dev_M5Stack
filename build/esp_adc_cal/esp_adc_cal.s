	.file	"esp_adc_cal.c"
	.text
.Ltext0:
	.section	.text.check_efuse_tp$part$0,"ax",@progbits
	.literal_position
	.literal .LC0, 1073062020
	.align	4
	.type	check_efuse_tp$part$0, @function
check_efuse_tp$part$0:
.LFB21:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_adc_cal/esp_adc_cal.c"
	.loc 1 119 0
	entry	sp, 32
.LCFI0:
	.loc 1 126 0
	l32r	a8, .LC0
	.loc 1 132 0
	movi.n	a2, 0
	.loc 1 126 0
	memw
	l32i.n	a9, a8, 0
	extui	a9, a9, 0, 7
	beq	a9, a2, .L2
	.loc 1 127 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 126 0
	extui	a9, a9, 16, 7
	beq	a9, a2, .L2
	.loc 1 128 0
	memw
	l32i.n	a9, a8, 0
	.loc 1 127 0
	extui	a9, a9, 7, 9
	beq	a9, a2, .L2
	.loc 1 129 0
	memw
	l32i.n	a8, a8, 0
	.loc 1 128 0
	movi.n	a9, 1
	extui	a8, a8, 23, 9
	movnez	a2, a9, a8
	extui	a2, a2, 0, 8
.L2:
	.loc 1 134 0
	retw.n
.LFE21:
	.size	check_efuse_tp$part$0, .-check_efuse_tp$part$0
	.section	.text.read_efuse_vref,"ax",@progbits
	.literal_position
	.literal .LC1, 1073061904
	.align	4
	.type	read_efuse_vref, @function
read_efuse_vref:
.LFB7:
	.loc 1 154 0
	entry	sp, 32
.LCFI1:
.LVL0:
	.loc 1 157 0
	l32r	a2, .LC1
	memw
	l32i.n	a8, a2, 0
	srli	a8, a8, 8
.LVL1:
.LBB10:
.LBB11:
	.loc 1 139 0
	extui	a9, a8, 4, 1
	extui	a8, a8, 0, 4
.LVL2:
	.loc 1 144 0
	neg	a2, a8
	movnez	a8, a2, a9
.LVL3:
.LBE11:
.LBE10:
	.loc 1 159 0
	subx8	a8, a8, a8
.LVL4:
	.loc 1 160 0
	movi	a2, 0x44c
.LVL5:
	add.n	a2, a8, a2
	retw.n
.LFE7:
	.size	read_efuse_vref, .-read_efuse_vref
	.section	.text.esp_adc_cal_check_efuse,"ax",@progbits
	.literal_position
	.literal .LC2, 1073061900
	.literal .LC3, 1073061904
	.align	4
	.global	esp_adc_cal_check_efuse
	.type	esp_adc_cal_check_efuse, @function
esp_adc_cal_check_efuse:
.LFB15:
	.loc 1 286 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 287 0
	bnei	a2, 1, .L13
.LBB16:
.LBB17:
	.loc 1 122 0
	l32r	a2, .LC2
.LVL7:
	memw
	l32i.n	a2, a2, 0
	bbci	a2, 14, .L14
	call8	check_efuse_tp$part$0
.LVL8:
.LBE17:
.LBE16:
	.loc 1 288 0
	beqz.n	a10, .L14
.L16:
	movi.n	a8, 0
	j	.L15
.L14:
	.loc 1 288 0 is_stmt 0 discriminator 2
	movi	a8, 0x106
	j	.L15
.LVL9:
.L13:
	.loc 1 292 0 is_stmt 1
	movi	a8, 0x102
	.loc 1 289 0
	bnez.n	a2, .L15
.LBB18:
.LBB19:
	.loc 1 116 0
	l32r	a2, .LC3
.LVL10:
	memw
	l32i.n	a8, a2, 0
.LBE19:
.LBE18:
	.loc 1 290 0
	extui	a8, a8, 8, 5
	beqz.n	a8, .L14
	j	.L16
.L15:
	.loc 1 294 0
	mov.n	a2, a8
	retw.n
.LFE15:
	.size	esp_adc_cal_check_efuse, .-esp_adc_cal_check_efuse
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC18:
	.string	"(adc_num == ADC_UNIT_1) || (adc_num == ADC_UNIT_2)"
.LC21:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_adc_cal/esp_adc_cal.c"
.LC23:
	.string	"chars != NULL"
.LC25:
	.string	"bit_width < ADC_WIDTH_MAX"
	.section	.text.esp_adc_cal_characterize,"ax",@progbits
	.literal_position
	.literal .LC4, 3265
	.literal .LC5, 3406
	.literal .LC6, adc1_tp_atten_offset
	.literal .LC7, adc1_tp_atten_scale
	.literal .LC8, adc2_tp_atten_offset
	.literal .LC9, adc2_tp_atten_scale
	.literal .LC10, adc1_vref_atten_offset
	.literal .LC11, adc1_vref_atten_scale
	.literal .LC12, adc2_vref_atten_offset
	.literal .LC13, adc2_vref_atten_scale
	.literal .LC14, lut_adc1_low
	.literal .LC15, lut_adc2_low
	.literal .LC16, lut_adc1_high
	.literal .LC17, lut_adc2_high
	.literal .LC19, .LC18
	.literal .LC20, __func__$3674
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC27, 1073061900
	.literal .LC28, 1073061904
	.literal .LC29, 1073062020
	.align	4
	.global	esp_adc_cal_characterize
	.type	esp_adc_cal_characterize, @function
esp_adc_cal_characterize:
.LFB16:
	.loc 1 301 0
.LVL11:
	entry	sp, 48
.LCFI3:
	.loc 1 303 0
	addi.n	a7, a2, -1
	bltui	a7, 2, .L25
	.loc 1 303 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0x12f
	j	.L59
.L25:
	.loc 1 304 0 is_stmt 1
	bnez.n	a6, .L26
	.loc 1 304 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC20
	movi	a11, 0x130
.L59:
	l32r	a10, .LC22
	call8	__assert_func
.LVL12:
.L26:
	.loc 1 305 0 is_stmt 1
	bltui	a4, 4, .L27
	.loc 1 305 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC20
	movi	a11, 0x131
	j	.L59
.L27:
.LBB40:
.LBB41:
	.loc 1 122 0 is_stmt 1
	l32r	a7, .LC27
	.loc 1 123 0
	movi.n	a10, 0
	.loc 1 122 0
	memw
	l32i.n	a7, a7, 0
	bbci	a7, 14, .L28
	call8	check_efuse_tp$part$0
.LVL13:
.L28:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 1 116 0
	l32r	a7, .LC28
	memw
	l32i.n	a9, a7, 0
	slli	a7, a3, 2
	extui	a9, a9, 8, 5
.LBE43:
.LBE42:
	.loc 1 312 0
	beqz.n	a10, .L29
.LVL14:
	l32r	a8, .LC29
.LBB44:
.LBB45:
.LBB46:
	.loc 1 187 0
	memw
	l32i.n	a8, a8, 0
	.loc 1 185 0
	bnei	a2, 1, .L30
.LVL15:
	.loc 1 187 0
	extui	a8, a8, 7, 9
.LVL16:
	.loc 1 186 0
	l32r	a10, .LC4
	j	.L31
.LVL17:
.L30:
	.loc 1 189 0
	l32r	a10, .LC5
	.loc 1 190 0
	extui	a8, a8, 23, 9
.LVL18:
.L31:
.LBB47:
.LBB48:
	.loc 1 139 0
	movi	a12, 0x100
	.loc 1 148 0
	extui	a11, a8, 0, 8
	.loc 1 139 0
	bnone	a8, a12, .L33
	.loc 1 142 0
	neg	a8, a8
.LVL19:
	extui	a8, a8, 0, 8
.LVL20:
	neg	a11, a8
.LVL21:
.L33:
	l32r	a8, .LC29
.LBE48:
.LBE47:
	.loc 1 192 0
	addx4	a11, a11, a10
.LVL22:
.LBE46:
.LBE45:
.LBB49:
.LBB50:
	.loc 1 170 0
	memw
	l32i.n	a8, a8, 0
	.loc 1 168 0
	bnei	a2, 1, .L34
.LVL23:
	.loc 1 170 0
	extui	a8, a8, 0, 7
.LVL24:
	.loc 1 169 0
	movi	a12, 0x116
	j	.L35
.LVL25:
.L34:
	.loc 1 173 0
	extui	a8, a8, 16, 7
.LVL26:
	.loc 1 172 0
	movi	a12, 0x1a5
.LVL27:
.L35:
.LBB51:
.LBB52:
	.loc 1 139 0
	movi.n	a13, 0x40
	.loc 1 148 0
	extui	a10, a8, 0, 6
	.loc 1 139 0
	bnone	a8, a13, .L37
	.loc 1 142 0
	neg	a8, a8
.LVL28:
	extui	a8, a8, 0, 6
.LVL29:
	neg	a10, a8
.LVL30:
.L37:
.LBE52:
.LBE51:
	.loc 1 175 0
	slli	a8, a10, 2
.LBE50:
.LBE49:
.LBB53:
.LBB54:
	.loc 1 209 0
	l32r	a14, .LC6
	sub	a10, a11, a12
.LVL31:
	.loc 1 208 0
	l32r	a12, .LC7
	.loc 1 207 0
	beqi	a2, 1, .L38
	.loc 1 212 0
	l32r	a14, .LC8
	.loc 1 211 0
	l32r	a12, .LC9
.L38:
.LVL32:
	.loc 1 218 0
	add.n	a12, a12, a7
.LVL33:
	l32i.n	a12, a12, 0
	.loc 1 215 0
	sub	a10, a10, a8
.LVL34:
	.loc 1 218 0
	movi	a8, 0x2bc
	mull	a12, a8, a12
	srli	a13, a10, 1
	add.n	a12, a12, a13
	.loc 1 220 0
	mull	a8, a11, a8
	.loc 1 218 0
	quou	a12, a12, a10
	.loc 1 220 0
	add.n	a13, a8, a13
	.loc 1 218 0
	s32i.n	a12, a6, 12
	.loc 1 220 0
	add.n	a7, a14, a7
	l32i.n	a7, a7, 0
	quou	a10, a13, a10
.LVL35:
	movi	a13, 0x352
	sub	a10, a13, a10
	add.n	a10, a10, a7
	s32i.n	a10, a6, 16
.LBE54:
.LBE53:
	.loc 1 317 0
	movi.n	a7, 1
	j	.L39
.LVL36:
.L29:
.LBE44:
	.loc 1 318 0
	beqz.n	a9, .L40
.LBB55:
	.loc 1 320 0
	s32i.n	a9, sp, 0
	call8	read_efuse_vref
.LVL37:
.LBB56:
.LBB57:
	.loc 1 234 0
	l32r	a11, .LC10
	.loc 1 233 0
	l32r	a8, .LC11
	.loc 1 232 0
	l32i.n	a9, sp, 0
	beqi	a2, 1, .L41
	.loc 1 237 0
	l32r	a11, .LC12
	.loc 1 236 0
	l32r	a8, .LC13
.L41:
.LVL38:
	.loc 1 241 0
	add.n	a8, a8, a7
.LVL39:
	l32i.n	a8, a8, 0
	.loc 1 242 0
	add.n	a7, a11, a7
	.loc 1 241 0
	mull	a10, a10, a8
.LVL40:
	srli	a10, a10, 12
	s32i.n	a10, a6, 12
	.loc 1 242 0
	l32i.n	a7, a7, 0
	s32i.n	a7, a6, 16
.LBE57:
.LBE56:
	.loc 1 322 0
	movi.n	a7, 0
	j	.L39
.LVL41:
.L40:
.LBE55:
.LBB58:
.LBB59:
	.loc 1 234 0
	l32r	a10, .LC10
	.loc 1 233 0
	l32r	a8, .LC11
	.loc 1 232 0
	beqi	a2, 1, .L42
	.loc 1 237 0
	l32r	a10, .LC12
	.loc 1 236 0
	l32r	a8, .LC13
.L42:
.LVL42:
	.loc 1 241 0
	add.n	a8, a8, a7
.LVL43:
	l32i.n	a8, a8, 0
	.loc 1 242 0
	add.n	a7, a10, a7
	.loc 1 241 0
	mull	a8, a5, a8
	srli	a8, a8, 12
	s32i.n	a8, a6, 12
	.loc 1 242 0
	l32i.n	a7, a7, 0
	s32i.n	a7, a6, 16
.LBE59:
.LBE58:
	.loc 1 326 0
	movi.n	a7, 2
.LVL44:
.L39:
	.loc 1 330 0
	s32i.n	a2, a6, 0
	.loc 1 331 0
	s32i.n	a3, a6, 4
	.loc 1 332 0
	s32i.n	a4, a6, 8
	.loc 1 333 0
	mov.n	a10, a5
	beqz.n	a9, .L43
	.loc 1 333 0 is_stmt 0 discriminator 1
	call8	read_efuse_vref
.LVL45:
.L43:
	.loc 1 333 0 discriminator 4
	s32i.n	a10, a6, 20
	.loc 1 335 0 is_stmt 1 discriminator 4
	bnei	a3, 3, .L44
	.loc 1 336 0
	addi.n	a8, a2, -1
	l32r	a3, .LC14
.LVL46:
	l32r	a2, .LC15
.LVL47:
	moveqz	a2, a3, a8
	s32i.n	a2, a6, 24
	.loc 1 337 0
	l32r	a3, .LC17
	l32r	a2, .LC16
	movnez	a2, a3, a8
	s32i.n	a2, a6, 28
	j	.L47
.LVL48:
.L44:
	.loc 1 339 0
	movi.n	a2, 0
.LVL49:
	s32i.n	a2, a6, 24
	.loc 1 340 0
	s32i.n	a2, a6, 28
.LVL50:
.L47:
	.loc 1 343 0
	mov.n	a2, a7
	retw.n
.LFE16:
	.size	esp_adc_cal_characterize, .-esp_adc_cal_characterize
	.section	.text.esp_adc_cal_raw_to_voltage,"ax",@progbits
	.literal_position
	.literal .LC30, .LC23
	.literal .LC31, __func__$3685
	.literal .LC32, .LC21
	.literal .LC33, 4095
	.literal .LC34, 2879
	.literal .LC35, -2880
	.literal .LC36, 1374389535
	.literal .LC37, 2944
	.literal .LC38, 32768
	.align	4
	.global	esp_adc_cal_raw_to_voltage
	.type	esp_adc_cal_raw_to_voltage, @function
esp_adc_cal_raw_to_voltage:
.LFB17:
	.loc 1 346 0
.LVL51:
	entry	sp, 32
.LCFI4:
	.loc 1 347 0
	bnez.n	a3, .L61
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	l32r	a10, .LC32
	movi	a11, 0x15b
	call8	__assert_func
.LVL52:
.L61:
	.loc 1 350 0 is_stmt 1
	l32i.n	a10, a3, 8
	movi.n	a4, 3
	sub	a10, a4, a10
	ssl	a10
	sll	a2, a2
.LVL53:
	l32r	a10, .LC33
	minu	a10, a2, a10
.LVL54:
	.loc 1 355 0
	l32i.n	a2, a3, 4
	bne	a2, a4, .L62
	l32r	a2, .LC34
	bgeu	a2, a10, .L62
.LBB70:
.LBB71:
.LBB72:
	.loc 1 256 0
	l32r	a11, .LC35
.LBE72:
.LBE71:
	.loc 1 357 0
	l32i.n	a5, a3, 24
.LBB77:
.LBB73:
	.loc 1 256 0
	add.n	a11, a10, a11
.LBE73:
.LBE77:
	.loc 1 357 0
	l32i.n	a14, a3, 28
.LVL55:
.LBB78:
.LBB74:
	.loc 1 256 0
	srli	a2, a11, 6
	.loc 1 261 0
	addi	a12, a2, 46
	.loc 1 265 0
	slli	a2, a2, 2
.LBE74:
.LBE78:
	.loc 1 357 0
	l32i.n	a9, a3, 20
.LVL56:
.LBB79:
.LBB75:
	.loc 1 266 0
	addi.n	a15, a2, 4
	.loc 1 265 0
	add.n	a8, a5, a2
	.loc 1 267 0
	add.n	a2, a14, a2
	.loc 1 259 0
	movi	a4, 0x4b0
	.loc 1 260 0
	movi	a13, -0x3e8
	.loc 1 272 0
	l32i.n	a8, a8, 0
	l32i.n	a2, a2, 0
	.loc 1 259 0
	sub	a4, a4, a9
.LVL57:
	.loc 1 260 0
	add.n	a13, a9, a13
.LVL58:
	.loc 1 272 0
	mull	a8, a4, a8
	mull	a2, a13, a2
	.loc 1 261 0
	slli	a12, a12, 6
.LVL59:
	.loc 1 262 0
	addi	a9, a12, -64
.LVL60:
	.loc 1 272 0
	add.n	a8, a8, a2
	sub	a12, a12, a10
.LVL61:
	.loc 1 266 0
	add.n	a5, a5, a15
.LVL62:
	.loc 1 272 0
	mull	a8, a8, a12
	l32i.n	a12, a5, 0
.LVL63:
	.loc 1 262 0
	sub	a9, a10, a9
.LVL64:
	.loc 1 272 0
	mull	a2, a4, a12
	.loc 1 268 0
	add.n	a14, a14, a15
.LVL65:
	.loc 1 272 0
	mull	a2, a2, a9
.LBE75:
.LBE79:
	.loc 1 358 0
	l32r	a4, .LC37
.LVL66:
.LBB80:
.LBB76:
	.loc 1 272 0
	add.n	a2, a8, a2
	l32i.n	a8, a14, 0
	mull	a8, a13, a8
	mull	a9, a8, a9
.LVL67:
	add.n	a8, a2, a9
.LVL68:
	.loc 1 275 0
	l32r	a2, .LC36
	.loc 1 273 0
	addmi	a8, a8, 0x1900
.LVL69:
	.loc 1 275 0
	mulsh	a2, a8, a2
	srai	a8, a8, 31
.LVL70:
	srai	a2, a2, 12
	sub	a2, a2, a8
.LBE76:
.LBE80:
	.loc 1 358 0
	bltu	a4, a10, .L64
.LVL71:
.LBB81:
.LBB82:
.LBB83:
	.loc 1 249 0
	l32i.n	a4, a3, 12
	l32r	a8, .LC38
	mull	a10, a10, a4
.LVL72:
	l32i.n	a3, a3, 16
.LVL73:
	add.n	a10, a10, a8
	extui	a10, a10, 16, 16
	add.n	a10, a10, a3
.LVL74:
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	.loc 1 281 0
	slli	a3, a10, 6
.LVL75:
	mull	a10, a10, a11
.LVL76:
	addi	a3, a3, 32
	mull	a2, a11, a2
.LVL77:
	sub	a10, a3, a10
	add.n	a2, a10, a2
	srli	a2, a2, 6
.LBE85:
.LBE84:
	.loc 1 361 0
	retw.n
.LVL78:
.L62:
.LBE81:
.LBE70:
.LBB86:
.LBB87:
	.loc 1 249 0
	l32i.n	a2, a3, 12
	l32r	a8, .LC38
	mull	a10, a10, a2
.LVL79:
	add.n	a2, a10, a8
	extui	a10, a2, 16, 16
	l32i.n	a2, a3, 16
	add.n	a2, a10, a2
.LVL80:
.L64:
.LBE87:
.LBE86:
	.loc 1 368 0
	retw.n
.LFE17:
	.size	esp_adc_cal_raw_to_voltage, .-esp_adc_cal_raw_to_voltage
	.section	.text.esp_adc_cal_get_voltage,"ax",@progbits
	.align	4
	.global	esp_adc_cal_get_voltage
	.type	esp_adc_cal_get_voltage, @function
esp_adc_cal_get_voltage:
.LFB18:
	.loc 1 373 0
.LVL81:
	entry	sp, 48
.LCFI5:
	.loc 1 376 0
	movi.n	a11, 1
	movi.n	a9, 0
	moveqz	a9, a11, a3
	extui	a8, a9, 0, 8
	.loc 1 373 0
	mov.n	a10, a2
	.loc 1 376 0
	bnez.n	a8, .L76
	moveqz	a8, a11, a4
	bnez.n	a8, .L76
.LVL82:
.LBB90:
.LBB91:
	.loc 1 379 0
	l32i.n	a8, a3, 0
	.loc 1 381 0
	movi	a2, 0x102
.LVL83:
	.loc 1 379 0
	bne	a8, a11, .L73
	.loc 1 381 0
	bgeui	a10, 8, .L72
	.loc 1 382 0
	call8	adc1_get_raw
.LVL84:
	s32i.n	a10, sp, 0
	j	.L75
.LVL85:
.L73:
	.loc 1 385 0
	movi.n	a9, 9
	bltu	a9, a10, .L72
	.loc 1 386 0
	l32i.n	a11, a3, 8
	mov.n	a12, sp
	call8	adc2_get_raw
.LVL86:
	.loc 1 387 0
	movi	a2, 0x107
	.loc 1 386 0
	bnez.n	a10, .L72
.L75:
	.loc 1 390 0
	l32i.n	a10, sp, 0
	mov.n	a11, a3
	call8	esp_adc_cal_raw_to_voltage
.LVL87:
	s32i.n	a10, a4, 0
	.loc 1 391 0
	movi.n	a2, 0
	retw.n
.LVL88:
.L76:
.LBE91:
.LBE90:
	.loc 1 376 0
	movi	a2, 0x102
.LVL89:
.L72:
	.loc 1 392 0
	retw.n
.LFE18:
	.size	esp_adc_cal_get_voltage, .-esp_adc_cal_get_voltage
	.section	.text.esp_adc_cal_get_characteristics,"ax",@progbits
	.literal_position
	.literal .LC39, .LC23
	.literal .LC40, __func__$3700
	.literal .LC41, .LC21
	.align	4
	.global	esp_adc_cal_get_characteristics
	.type	esp_adc_cal_get_characteristics, @function
esp_adc_cal_get_characteristics:
.LFB19:
	.loc 1 399 0
.LVL90:
	entry	sp, 32
.LCFI6:
	.loc 1 399 0
	mov.n	a13, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a14, a5
	.loc 1 400 0
	bnez.n	a5, .L81
	.loc 1 400 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	l32r	a10, .LC41
	movi	a11, 0x190
	call8	__assert_func
.LVL91:
.L81:
	.loc 1 401 0 is_stmt 1
	movi.n	a10, 1
	call8	esp_adc_cal_characterize
.LVL92:
	retw.n
.LFE19:
	.size	esp_adc_cal_get_characteristics, .-esp_adc_cal_get_characteristics
	.section	.text.adc1_to_voltage,"ax",@progbits
	.literal_position
	.literal .LC42, .LC23
	.literal .LC43, __func__$3705
	.literal .LC44, .LC21
	.align	4
	.global	adc1_to_voltage
	.type	adc1_to_voltage, @function
adc1_to_voltage:
.LFB20:
	.loc 1 405 0
.LVL93:
	entry	sp, 48
.LCFI7:
	.loc 1 405 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 406 0
	bnez.n	a3, .L83
	.loc 1 406 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	l32r	a10, .LC44
	movi	a11, 0x196
	call8	__assert_func
.LVL94:
.L83:
	.loc 1 407 0 is_stmt 1
	movi.n	a8, 0
	.loc 1 408 0
	mov.n	a12, sp
	.loc 1 407 0
	s32i.n	a8, sp, 0
	.loc 1 408 0
	call8	esp_adc_cal_get_voltage
.LVL95:
	.loc 1 410 0
	l32i.n	a2, sp, 0
.LVL96:
	retw.n
.LFE20:
	.size	adc1_to_voltage, .-adc1_to_voltage
	.section	.rodata.__func__$3705,"a",@progbits
	.type	__func__$3705, @object
	.size	__func__$3705, 16
__func__$3705:
	.string	"adc1_to_voltage"
	.section	.rodata.__func__$3700,"a",@progbits
	.type	__func__$3700, @object
	.size	__func__$3700, 32
__func__$3700:
	.string	"esp_adc_cal_get_characteristics"
	.section	.rodata.__func__$3685,"a",@progbits
	.type	__func__$3685, @object
	.size	__func__$3685, 27
__func__$3685:
	.string	"esp_adc_cal_raw_to_voltage"
	.section	.rodata.__func__$3674,"a",@progbits
	.type	__func__$3674, @object
	.size	__func__$3674, 25
__func__$3674:
	.string	"esp_adc_cal_characterize"
	.section	.rodata.lut_adc2_high,"a",@progbits
	.align	4
	.type	lut_adc2_high, @object
	.size	lut_adc2_high, 80
lut_adc2_high:
	.word	2657
	.word	2698
	.word	2738
	.word	2774
	.word	2807
	.word	2838
	.word	2867
	.word	2894
	.word	2921
	.word	2946
	.word	2971
	.word	2996
	.word	3020
	.word	3043
	.word	3067
	.word	3092
	.word	3116
	.word	3139
	.word	3162
	.word	3185
	.section	.rodata.lut_adc2_low,"a",@progbits
	.align	4
	.type	lut_adc2_low, @object
	.size	lut_adc2_low, 80
lut_adc2_low:
	.word	2238
	.word	2293
	.word	2347
	.word	2399
	.word	2451
	.word	2507
	.word	2561
	.word	2613
	.word	2662
	.word	2710
	.word	2754
	.word	2792
	.word	2831
	.word	2869
	.word	2904
	.word	2937
	.word	2968
	.word	2999
	.word	3029
	.word	3059
	.section	.rodata.lut_adc1_high,"a",@progbits
	.align	4
	.type	lut_adc1_high, @object
	.size	lut_adc1_high, 80
lut_adc1_high:
	.word	2667
	.word	2706
	.word	2745
	.word	2780
	.word	2813
	.word	2844
	.word	2873
	.word	2901
	.word	2928
	.word	2956
	.word	2982
	.word	3006
	.word	3032
	.word	3059
	.word	3084
	.word	3110
	.word	3135
	.word	3160
	.word	3184
	.word	3209
	.section	.rodata.lut_adc1_low,"a",@progbits
	.align	4
	.type	lut_adc1_low, @object
	.size	lut_adc1_low, 80
lut_adc1_low:
	.word	2240
	.word	2297
	.word	2352
	.word	2405
	.word	2457
	.word	2512
	.word	2564
	.word	2616
	.word	2664
	.word	2709
	.word	2754
	.word	2795
	.word	2832
	.word	2868
	.word	2903
	.word	2937
	.word	2969
	.word	3000
	.word	3030
	.word	3060
	.section	.rodata.adc2_vref_atten_offset,"a",@progbits
	.align	4
	.type	adc2_vref_atten_offset, @object
	.size	adc2_vref_atten_offset, 16
adc2_vref_atten_offset:
	.word	63
	.word	66
	.word	89
	.word	128
	.section	.rodata.adc1_vref_atten_offset,"a",@progbits
	.align	4
	.type	adc1_vref_atten_offset, @object
	.size	adc1_vref_atten_offset, 16
adc1_vref_atten_offset:
	.word	75
	.word	78
	.word	107
	.word	142
	.section	.rodata.adc2_vref_atten_scale,"a",@progbits
	.align	4
	.type	adc2_vref_atten_scale, @object
	.size	adc2_vref_atten_scale, 16
adc2_vref_atten_scale:
	.word	57236
	.word	76175
	.word	105678
	.word	197170
	.section	.rodata.adc1_vref_atten_scale,"a",@progbits
	.align	4
	.type	adc1_vref_atten_scale, @object
	.size	adc1_vref_atten_scale, 16
adc1_vref_atten_scale:
	.word	57431
	.word	76236
	.word	105481
	.word	196602
	.section	.rodata.adc2_tp_atten_offset,"a",@progbits
	.align	4
	.type	adc2_tp_atten_offset, @object
	.size	adc2_tp_atten_offset, 16
adc2_tp_atten_offset:
	.word	0
	.word	9
	.word	26
	.word	66
	.section	.rodata.adc1_tp_atten_offset,"a",@progbits
	.align	4
	.type	adc1_tp_atten_offset, @object
	.size	adc1_tp_atten_offset, 16
adc1_tp_atten_offset:
	.word	0
	.word	1
	.word	27
	.word	54
	.section	.rodata.adc2_tp_atten_scale,"a",@progbits
	.align	4
	.type	adc2_tp_atten_scale, @object
	.size	adc2_tp_atten_scale, 16
adc2_tp_atten_scale:
	.word	65467
	.word	86861
	.word	120416
	.word	224708
	.section	.rodata.adc1_tp_atten_scale,"a",@progbits
	.align	4
	.type	adc1_tp_atten_scale, @object
	.size	adc1_tp_atten_scale, 16
adc1_tp_atten_scale:
	.word	65504
	.word	86975
	.word	120389
	.word	224310
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/driver/include/driver/adc.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_adc_cal/include/esp_adc_cal.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf6b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0xc
	.4byte	.LASF138
	.4byte	.LASF139
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x1c
	.4byte	0xe2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x22
	.4byte	0xb7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x24
	.4byte	0x118
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2a
	.4byte	0xed
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x37
	.4byte	0x166
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0x41
	.4byte	0x123
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x43
	.4byte	0x1c0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4f
	.4byte	0x171
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x51
	.4byte	0x21a
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5d
	.4byte	0x1cb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x5f
	.4byte	0x250
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x5
	.byte	0x65
	.4byte	0x225
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1d
	.4byte	0x27a
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x6
	.byte	0x21
	.4byte	0x25b
	.uleb128 0x7
	.byte	0x20
	.byte	0x6
	.byte	0x28
	.4byte	0x2ee
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.byte	0x29
	.4byte	0x250
	.byte	0
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x6
	.byte	0x2a
	.4byte	0xe2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x6
	.byte	0x2b
	.4byte	0x118
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x6
	.byte	0x2c
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x6
	.byte	0x2d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x6
	.byte	0x2e
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x6
	.byte	0x2f
	.4byte	0x2ee
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x6
	.byte	0x30
	.4byte	0x2ee
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f4
	.uleb128 0xa
	.4byte	0x7e
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x6
	.byte	0x31
	.4byte	0x285
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x1
	.byte	0x77
	.4byte	0xb0
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.byte	0x1
	.4byte	0x342
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x172
	.4byte	0xa5
	.byte	0x1
	.4byte	0x384
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x172
	.4byte	0x21a
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x173
	.4byte	0x384
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x174
	.4byte	0x38f
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x17a
	.4byte	0x33
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x38a
	.uleb128 0xa
	.4byte	0x2f9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.byte	0x3
	.4byte	0x3d3
	.uleb128 0x12
	.string	"y1"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0x12
	.string	"y2"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.byte	0
	.uleb128 0x13
	.4byte	0x304
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x1
	.byte	0x88
	.4byte	0x33
	.byte	0x3
	.4byte	0x41f
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0x88
	.4byte	0xb0
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.4byte	0x33
	.byte	0
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48f
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x9d
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x3e2
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x9e
	.uleb128 0x19
	.4byte	0x408
	.byte	0
	.uleb128 0x19
	.4byte	0x3fd
	.byte	0x1f
	.uleb128 0x1a
	.4byte	0x3f2
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1c
	.4byte	0x413
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x1
	.byte	0x71
	.4byte	0xb0
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x11d
	.4byte	0xa5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f4
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x11d
	.4byte	0x27a
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	0x304
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x120
	.4byte	0x4e3
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x3d3
	.byte	0
	.uleb128 0x21
	.4byte	0x48f
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x122
	.byte	0
	.uleb128 0x22
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	0x56f
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc5
	.4byte	0x250
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc6
	.4byte	0xe2
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc7
	.4byte	0x7e
	.uleb128 0x23
	.string	"low"
	.byte	0x1
	.byte	0xc8
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc9
	.4byte	0x38f
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0xca
	.4byte	0x38f
	.uleb128 0x24
	.4byte	.LASF96
	.byte	0x1
	.byte	0xcc
	.4byte	0x2ee
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0xcd
	.4byte	0x2ee
	.uleb128 0x24
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd7
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0xd8
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.byte	0x1
	.4byte	0x5a1
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa2
	.4byte	0x250
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xa5
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb3
	.4byte	0x7e
	.byte	0x1
	.4byte	0x5d3
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb3
	.4byte	0x250
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xb6
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb7
	.4byte	0x7e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	0x62d
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x1
	.byte	0xdf
	.4byte	0x250
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe0
	.4byte	0xe2
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe1
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe2
	.4byte	0x38f
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0xe3
	.4byte	0x38f
	.uleb128 0x24
	.4byte	.LASF96
	.byte	0x1
	.byte	0xe5
	.4byte	0x2ee
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0xe6
	.4byte	0x2ee
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x128
	.4byte	0x27a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97d
	.uleb128 0x1e
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x128
	.4byte	0x250
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x129
	.4byte	0xe2
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12a
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x12b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12c
	.4byte	0x97d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LASF108
	.4byte	0x993
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3674
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x134
	.4byte	0xb0
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x135
	.4byte	0xb0
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x136
	.4byte	0x27a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1f
	.4byte	0x304
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x134
	.4byte	0x6e4
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x3d3
	.byte	0
	.uleb128 0x21
	.4byte	0x48f
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x135
	.uleb128 0x28
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x879
	.uleb128 0x29
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x13a
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2a
	.string	"low"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	0x5a1
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x13a
	.4byte	0x793
	.uleb128 0x1a
	.4byte	0x5b1
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x1c
	.4byte	0x5bc
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	0x5c7
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	0x3e2
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0xc0
	.uleb128 0x1a
	.4byte	0x408
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	0x3fd
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	0x3f2
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x1c
	.4byte	0x413
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x56f
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x13b
	.4byte	0x80b
	.uleb128 0x1a
	.4byte	0x57f
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x1c
	.4byte	0x58a
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	0x595
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	0x3e2
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0xaf
	.uleb128 0x1a
	.4byte	0x408
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	0x3fd
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	0x3f2
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x1c
	.4byte	0x413
	.4byte	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x4f4
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x1a
	.4byte	0x537
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	0x52c
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	0x521
	.uleb128 0x2c
	.4byte	0x516
	.uleb128 0x1a
	.4byte	0x50b
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	0x500
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x1c
	.4byte	0x542
	.4byte	.LLST25
	.uleb128 0x1c
	.4byte	0x54d
	.4byte	.LLST26
	.uleb128 0x1c
	.4byte	0x558
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	0x563
	.4byte	.LLST28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0x8fe
	.uleb128 0x2d
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x140
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x1f
	.4byte	0x5d3
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x141
	.4byte	0x8f4
	.uleb128 0x1a
	.4byte	0x60b
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	0x600
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	0x5f5
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	0x5ea
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	0x5df
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x1c
	.4byte	0x616
	.4byte	.LLST35
	.uleb128 0x1c
	.4byte	0x621
	.4byte	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0x41f
	.byte	0
	.uleb128 0x1f
	.4byte	0x5d3
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x145
	.4byte	0x95c
	.uleb128 0x1a
	.4byte	0x60b
	.4byte	.LLST37
	.uleb128 0x1a
	.4byte	0x600
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	0x5f5
	.4byte	.LLST39
	.uleb128 0x1a
	.4byte	0x5ea
	.4byte	.LLST40
	.uleb128 0x1a
	.4byte	0x5df
	.4byte	.LLST41
	.uleb128 0x1b
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x1c
	.4byte	0x616
	.4byte	.LLST42
	.uleb128 0x1c
	.4byte	0x621
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL12
	.4byte	0xf4c
	.4byte	0x973
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0x41f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f9
	.uleb128 0x30
	.4byte	0x9e
	.4byte	0x993
	.uleb128 0x31
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x983
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.byte	0x1
	.4byte	0xa4b
	.uleb128 0x23
	.string	"adc"
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x1
	.byte	0xfd
	.4byte	0x2ee
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0x1
	.byte	0xfd
	.4byte	0x2ee
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x100
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x103
	.4byte	0x33
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x104
	.4byte	0x33
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x105
	.4byte	0x33
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x106
	.4byte	0x33
	.uleb128 0x2a
	.string	"q11"
	.byte	0x1
	.2byte	0x109
	.4byte	0x33
	.uleb128 0x2a
	.string	"q12"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x33
	.uleb128 0x2a
	.string	"q21"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x33
	.uleb128 0x2a
	.string	"q22"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x33
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x110
	.4byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc11
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.4byte	.LLST44
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x159
	.4byte	0x384
	.4byte	.LLST45
	.uleb128 0x26
	.4byte	.LASF108
	.4byte	0xc21
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3685
	.uleb128 0x28
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0xbb4
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x165
	.4byte	0x7e
	.uleb128 0x32
	.4byte	0x998
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x165
	.4byte	0xb38
	.uleb128 0x1a
	.4byte	0x9c9
	.4byte	.LLST46
	.uleb128 0x1a
	.4byte	0x9be
	.4byte	.LLST47
	.uleb128 0x1a
	.4byte	0x9b3
	.4byte	.LLST48
	.uleb128 0x1a
	.4byte	0x9a8
	.4byte	.LLST49
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x34
	.4byte	0x9d4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	0x9de
	.4byte	.LLST50
	.uleb128 0x1c
	.4byte	0x9ea
	.4byte	.LLST51
	.uleb128 0x1c
	.4byte	0x9f6
	.4byte	.LLST52
	.uleb128 0x1c
	.4byte	0xa02
	.4byte	.LLST53
	.uleb128 0x35
	.4byte	0xa0e
	.uleb128 0x35
	.4byte	0xa1a
	.uleb128 0x35
	.4byte	0xa26
	.uleb128 0x1c
	.4byte	0xa32
	.4byte	.LLST54
	.uleb128 0x1c
	.4byte	0xa3e
	.4byte	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x168
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	0x310
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x168
	.4byte	0xb7d
	.uleb128 0x1a
	.4byte	0x336
	.4byte	.LLST56
	.uleb128 0x1a
	.4byte	0x32b
	.4byte	.LLST57
	.uleb128 0x1a
	.4byte	0x320
	.4byte	.LLST58
	.byte	0
	.uleb128 0x2b
	.4byte	0x395
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x169
	.uleb128 0x1a
	.4byte	0x3bc
	.4byte	.LLST59
	.uleb128 0x1a
	.4byte	0x3c8
	.4byte	.LLST60
	.uleb128 0x1a
	.4byte	0x3b1
	.4byte	.LLST61
	.uleb128 0x1a
	.4byte	0x3a6
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x310
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x16e
	.4byte	0xbe4
	.uleb128 0x1a
	.4byte	0x336
	.4byte	.LLST63
	.uleb128 0x1a
	.4byte	0x32b
	.4byte	.LLST64
	.uleb128 0x1a
	.4byte	0x320
	.4byte	.LLST65
	.byte	0
	.uleb128 0x36
	.4byte	.LVL52
	.4byte	0xf4c
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3685
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x9e
	.4byte	0xc21
	.uleb128 0x31
	.4byte	0x90
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.4byte	0xc11
	.uleb128 0x37
	.4byte	0x342
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc6
	.uleb128 0x1a
	.4byte	0x353
	.4byte	.LLST66
	.uleb128 0x38
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	0x36b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	0x377
	.uleb128 0x1b
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.uleb128 0x1a
	.4byte	0x36b
	.4byte	.LLST67
	.uleb128 0x1a
	.4byte	0x35f
	.4byte	.LLST68
	.uleb128 0x1a
	.4byte	0x353
	.4byte	.LLST69
	.uleb128 0x1b
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.uleb128 0x34
	.4byte	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL84
	.4byte	0xf57
	.4byte	0xc9f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL86
	.4byte	0xf62
	.4byte	0xcb3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.4byte	.LVL87
	.4byte	0xa4b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x18b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd63
	.uleb128 0x25
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x18b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x18c
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x18d
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x18e
	.4byte	0x97d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LASF108
	.4byte	0xd73
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3700
	.uleb128 0x2e
	.4byte	.LVL91
	.4byte	0xf4c
	.4byte	0xd53
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3700
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x36
	.4byte	.LVL92
	.4byte	0x62d
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x9e
	.4byte	0xd73
	.uleb128 0x31
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xd63
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x194
	.4byte	0x7e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0f
	.uleb128 0x1e
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x194
	.4byte	0x166
	.4byte	.LLST70
	.uleb128 0x25
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x194
	.4byte	0x384
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF108
	.4byte	0xe1f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3705
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x197
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL94
	.4byte	0xf4c
	.4byte	0xdfe
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x196
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3705
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x36
	.4byte	.LVL95
	.4byte	0x342
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x9e
	.4byte	0xe1f
	.uleb128 0x31
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xe0f
	.uleb128 0x30
	.4byte	0x7e
	.4byte	0xe34
	.uleb128 0x31
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x5c
	.4byte	0xe45
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_tp_atten_scale
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5d
	.4byte	0xe5b
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_tp_atten_scale
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5e
	.4byte	0xe71
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_tp_atten_offset
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x5f
	.4byte	0xe87
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_tp_atten_offset
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF126
	.byte	0x1
	.byte	0x61
	.4byte	0xe9d
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_vref_atten_scale
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF127
	.byte	0x1
	.byte	0x62
	.4byte	0xeb3
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_vref_atten_scale
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF128
	.byte	0x1
	.byte	0x63
	.4byte	0xec9
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_vref_atten_offset
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x3a
	.4byte	.LASF129
	.byte	0x1
	.byte	0x64
	.4byte	0xedf
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_vref_atten_offset
	.uleb128 0xa
	.4byte	0xe24
	.uleb128 0x30
	.4byte	0x7e
	.4byte	0xef4
	.uleb128 0x31
	.4byte	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF130
	.byte	0x1
	.byte	0x67
	.4byte	0xf05
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc1_low
	.uleb128 0xa
	.4byte	0xee4
	.uleb128 0x3a
	.4byte	.LASF131
	.byte	0x1
	.byte	0x69
	.4byte	0xf1b
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc1_high
	.uleb128 0xa
	.4byte	0xee4
	.uleb128 0x3a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x6b
	.4byte	0xf31
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc2_low
	.uleb128 0xa
	.4byte	0xee4
	.uleb128 0x3a
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6d
	.4byte	0xf47
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc2_high
	.uleb128 0xa
	.4byte	0xee4
	.uleb128 0x3b
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x7
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x5
	.byte	0xd5
	.uleb128 0x3c
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x181
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xa
	.2byte	0x44c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x37
	.byte	0x1e
	.byte	0x23
	.uleb128 0x44c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x14
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x37
	.byte	0x1e
	.byte	0x23
	.uleb128 0x44c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xa
	.2byte	0xcc1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xa
	.2byte	0xd4e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xa
	.2byte	0x1ff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xa
	.2byte	0x116
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xa
	.2byte	0x1a5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x76
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xa
	.2byte	0x2bc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x76
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x76
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x4
	.byte	0x7b
	.sleb128 2880
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x24
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xfff
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
	.4byte	.LVL80
	.4byte	.LFE17
	.2byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x24
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xfff
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
.LLST45:
	.4byte	.LVL51
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL56
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x73
	.sleb128 28
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x4
	.byte	0x7d
	.sleb128 1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL55
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x4
	.byte	0x7b
	.sleb128 2880
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x8
	.byte	0xa
	.2byte	0x4b0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL58
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL72
	.2byte	0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x10
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0xe
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0xf
	.byte	0x7b
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.4byte	.LVL65
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.2byte	0x3200
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4e
	.byte	0xa
	.2byte	0x4b0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x73
	.sleb128 24
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0x40
	.byte	0xa
	.2byte	0x4b0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1900
	.byte	0xa
	.2byte	0x3200
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x53
	.byte	0xa
	.2byte	0x4b0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x73
	.sleb128 24
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb80
	.byte	0xa
	.2byte	0x4b0
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1900
	.byte	0xa
	.2byte	0x3200
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x55
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb80
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1900
	.byte	0xa
	.2byte	0x3200
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x4
	.byte	0x7b
	.sleb128 2880
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0xb9
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb80
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1900
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x51eb851f
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x3c
	.byte	0x26
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x6
	.byte	0x1e
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2e
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb80
	.byte	0x8
	.byte	0xc8
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1900
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x13
	.byte	0x7b
	.sleb128 2880
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x24
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xfff
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
.LLST66:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-1
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-1
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"esp_adc_cal_characteristics_t"
.LASF141:
	.string	"read_efuse_vref"
.LASF121:
	.string	"adc1_to_voltage"
.LASF70:
	.string	"ESP_ADC_CAL_VAL_EFUSE_TP"
.LASF71:
	.string	"ESP_ADC_CAL_VAL_DEFAULT_VREF"
.LASF134:
	.string	"__assert_func"
.LASF49:
	.string	"ADC2_CHANNEL_MAX"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"ADC2_CHANNEL_0"
.LASF40:
	.string	"ADC2_CHANNEL_1"
.LASF41:
	.string	"ADC2_CHANNEL_2"
.LASF42:
	.string	"ADC2_CHANNEL_3"
.LASF43:
	.string	"ADC2_CHANNEL_4"
.LASF44:
	.string	"ADC2_CHANNEL_5"
.LASF45:
	.string	"ADC2_CHANNEL_6"
.LASF46:
	.string	"ADC2_CHANNEL_7"
.LASF47:
	.string	"ADC2_CHANNEL_8"
.LASF48:
	.string	"ADC2_CHANNEL_9"
.LASF6:
	.string	"__int32_t"
.LASF85:
	.string	"voltage"
.LASF88:
	.string	"x_step"
.LASF128:
	.string	"adc1_vref_atten_offset"
.LASF138:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp_adc_cal/esp_adc_cal.c"
.LASF132:
	.string	"lut_adc2_low"
.LASF115:
	.string	"x1dist"
.LASF24:
	.string	"ADC_WIDTH_BIT_10"
.LASF25:
	.string	"ADC_WIDTH_BIT_11"
.LASF26:
	.string	"ADC_WIDTH_BIT_12"
.LASF125:
	.string	"adc2_tp_atten_offset"
.LASF87:
	.string	"interpolate_two_points"
.LASF129:
	.string	"adc2_vref_atten_offset"
.LASF103:
	.string	"characterize_using_vref"
.LASF17:
	.string	"ADC_ATTEN_DB_0"
.LASF97:
	.string	"atten_offsets"
.LASF100:
	.string	"read_efuse_tp_low"
.LASF19:
	.string	"ADC_ATTEN_DB_6"
.LASF82:
	.string	"adc_reading"
.LASF10:
	.string	"uint32_t"
.LASF28:
	.string	"adc_bits_width_t"
.LASF133:
	.string	"lut_adc2_high"
.LASF79:
	.string	"low_curve"
.LASF0:
	.string	"long long unsigned int"
.LASF119:
	.string	"lut_voltage"
.LASF27:
	.string	"ADC_WIDTH_MAX"
.LASF95:
	.string	"high"
.LASF51:
	.string	"ADC_CHANNEL_0"
.LASF52:
	.string	"ADC_CHANNEL_1"
.LASF53:
	.string	"ADC_CHANNEL_2"
.LASF54:
	.string	"ADC_CHANNEL_3"
.LASF55:
	.string	"ADC_CHANNEL_4"
.LASF56:
	.string	"ADC_CHANNEL_5"
.LASF57:
	.string	"ADC_CHANNEL_6"
.LASF58:
	.string	"ADC_CHANNEL_7"
.LASF59:
	.string	"ADC_CHANNEL_8"
.LASF60:
	.string	"ADC_CHANNEL_9"
.LASF61:
	.string	"ADC_CHANNEL_MAX"
.LASF120:
	.string	"linear_voltage"
.LASF137:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"characterize_using_two_point"
.LASF76:
	.string	"coeff_a"
.LASF77:
	.string	"coeff_b"
.LASF116:
	.string	"y2dist"
.LASF18:
	.string	"ADC_ATTEN_DB_2_5"
.LASF68:
	.string	"adc_unit_t"
.LASF29:
	.string	"ADC1_CHANNEL_0"
.LASF30:
	.string	"ADC1_CHANNEL_1"
.LASF31:
	.string	"ADC1_CHANNEL_2"
.LASF32:
	.string	"ADC1_CHANNEL_3"
.LASF33:
	.string	"ADC1_CHANNEL_4"
.LASF34:
	.string	"ADC1_CHANNEL_5"
.LASF35:
	.string	"ADC1_CHANNEL_6"
.LASF36:
	.string	"ADC1_CHANNEL_7"
.LASF16:
	.string	"_Bool"
.LASF112:
	.string	"low_vref_curve"
.LASF96:
	.string	"atten_scales"
.LASF101:
	.string	"read_efuse_tp_high"
.LASF110:
	.string	"efuse_vref_present"
.LASF69:
	.string	"ESP_ADC_CAL_VAL_EFUSE_VREF"
.LASF14:
	.string	"char"
.LASF66:
	.string	"ADC_UNIT_ALTER"
.LASF67:
	.string	"ADC_UNIT_MAX"
.LASF20:
	.string	"ADC_ATTEN_DB_11"
.LASF90:
	.string	"bits"
.LASF78:
	.string	"vref"
.LASF127:
	.string	"adc2_vref_atten_scale"
.LASF98:
	.string	"delta_x"
.LASF130:
	.string	"lut_adc1_low"
.LASF8:
	.string	"long long int"
.LASF142:
	.string	"esp_adc_cal_get_characteristics"
.LASF84:
	.string	"chars"
.LASF118:
	.string	"esp_adc_cal_raw_to_voltage"
.LASF63:
	.string	"ADC_UNIT_1"
.LASF64:
	.string	"ADC_UNIT_2"
.LASF123:
	.string	"adc2_tp_atten_scale"
.LASF65:
	.string	"ADC_UNIT_BOTH"
.LASF91:
	.string	"mask"
.LASF94:
	.string	"check_efuse_vref"
.LASF131:
	.string	"lut_adc1_high"
.LASF135:
	.string	"adc1_get_raw"
.LASF72:
	.string	"esp_adc_cal_value_t"
.LASF50:
	.string	"adc2_channel_t"
.LASF21:
	.string	"ADC_ATTEN_MAX"
.LASF111:
	.string	"calculate_voltage_lut"
.LASF83:
	.string	"channel"
.LASF37:
	.string	"ADC1_CHANNEL_MAX"
.LASF4:
	.string	"short int"
.LASF117:
	.string	"y1dist"
.LASF107:
	.string	"default_vref"
.LASF11:
	.string	"long int"
.LASF62:
	.string	"adc_channel_t"
.LASF113:
	.string	"high_vref_curve"
.LASF126:
	.string	"adc1_vref_atten_scale"
.LASF106:
	.string	"source"
.LASF104:
	.string	"esp_adc_cal_check_efuse"
.LASF38:
	.string	"adc1_channel_t"
.LASF12:
	.string	"sizetype"
.LASF13:
	.string	"long unsigned int"
.LASF114:
	.string	"x2dist"
.LASF139:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp_adc_cal"
.LASF9:
	.string	"int32_t"
.LASF74:
	.string	"atten"
.LASF99:
	.string	"delta_v"
.LASF22:
	.string	"adc_atten_t"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF89:
	.string	"decode_bits"
.LASF93:
	.string	"check_efuse_tp"
.LASF15:
	.string	"esp_err_t"
.LASF73:
	.string	"adc_num"
.LASF92:
	.string	"is_twos_compl"
.LASF2:
	.string	"signed char"
.LASF136:
	.string	"adc2_get_raw"
.LASF5:
	.string	"short unsigned int"
.LASF140:
	.string	"esp_adc_cal_get_voltage"
.LASF108:
	.string	"__func__"
.LASF124:
	.string	"adc1_tp_atten_offset"
.LASF109:
	.string	"efuse_tp_present"
.LASF23:
	.string	"ADC_WIDTH_BIT_9"
.LASF75:
	.string	"bit_width"
.LASF86:
	.string	"calculate_voltage_linear"
.LASF105:
	.string	"esp_adc_cal_characterize"
.LASF80:
	.string	"high_curve"
.LASF122:
	.string	"adc1_tp_atten_scale"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
