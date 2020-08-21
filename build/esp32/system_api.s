	.file	"system_api.c"
	.text
.Ltext0:
	.section	.text.system_init,"ax",@progbits
	.align	4
	.global	system_init
	.type	system_init, @function
system_init:
.LFB34:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/system_api.c"
	.loc 1 49 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE34:
	.size	system_init, .-system_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"system_api"
.LC2:
	.string	"\033[0;31mE (%d) %s: Base MAC address is NULL\033[0m\n"
	.section	.text.esp_base_mac_addr_set,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, base_mac_addr
	.align	4
	.global	esp_base_mac_addr_set
	.type	esp_base_mac_addr_set, @function
esp_base_mac_addr_set:
.LFB35:
	.loc 1 53 0
.LVL0:
	.loc 1 53 0
	entry	sp, 32
.LCFI1:
	.loc 1 53 0
	mov.n	a11, a2
	.loc 1 54 0
	bnez.n	a2, .L3
	.loc 1 55 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC1
	l32r	a12, .LC3
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 56 0 discriminator 2
	call8	abort
.LVL3:
.L3:
	.loc 1 59 0
	l32r	a10, .LC4
	movi.n	a12, 6
	call8	memcpy
.LVL4:
	.loc 1 62 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE35:
	.size	esp_base_mac_addr_set, .-esp_base_mac_addr_set
	.section	.rodata.str1.1
.LC7:
	.string	"\033[0;32mI (%d) %s: Base MAC address is not set, read default base MAC address from BLK0 of EFUSE\033[0m\n"
	.section	.text.esp_base_mac_addr_get,"ax",@progbits
	.literal_position
	.literal .LC5, base_mac_addr
	.literal .LC6, .LC0
	.literal .LC8, .LC7
	.align	4
	.global	esp_base_mac_addr_get
	.type	esp_base_mac_addr_get, @function
esp_base_mac_addr_get:
.LFB36:
	.loc 1 65 0
.LVL6:
	entry	sp, 48
.LCFI2:
	.loc 1 68 0
	l32r	a4, .LC5
	.loc 1 66 0
	movi.n	a3, 0
	.loc 1 68 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a4
	.loc 1 66 0
	s32i.n	a3, sp, 0
	s16i	a3, sp, 4
	.loc 1 68 0
	call8	memcmp
.LVL7:
	bne	a10, a3, .L5
.LVL8:
.LBB14:
.LBB15:
	.loc 1 69 0
	call8	esp_log_timestamp
.LVL9:
	l32r	a11, .LC6
	l32r	a12, .LC8
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 3
	call8	esp_log_write
.LVL10:
	movi	a2, 0x10b
.LVL11:
	retw.n
.LVL12:
.L5:
.LBE15:
.LBE14:
	.loc 1 73 0
	movi.n	a12, 6
	mov.n	a11, a4
	mov.n	a10, a2
	call8	memcpy
.LVL13:
	.loc 1 75 0
	mov.n	a2, a3
.LVL14:
	.loc 1 76 0
	retw.n
.LFE36:
	.size	esp_base_mac_addr_get, .-esp_base_mac_addr_get
	.section	.rodata.str1.1
.LC11:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK3 of EFUSE version error, version = %d\033[0m\n"
.LC15:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK3 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x\033[0m\n"
	.section	.text.esp_efuse_mac_get_custom,"ax",@progbits
	.literal_position
	.literal .LC9, 1073062028
	.literal .LC10, .LC0
	.literal .LC12, .LC11
	.literal .LC13, 1073062012
	.literal .LC14, 1073062008
	.literal .LC16, .LC15
	.align	4
	.global	esp_efuse_mac_get_custom
	.type	esp_efuse_mac_get_custom, @function
esp_efuse_mac_get_custom:
.LFB37:
	.loc 1 79 0
.LVL15:
	entry	sp, 48
.LCFI3:
	.loc 1 85 0
	l32r	a3, .LC9
	memw
	l32i.n	a3, a3, 0
	extui	a3, a3, 24, 8
.LVL16:
	.loc 1 87 0
	beqi	a3, 1, .L8
	.loc 1 88 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC10
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a15, a3
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 89 0 discriminator 2
	movi	a2, 0x10a
.LVL19:
	retw.n
.LVL20:
.L8:
	.loc 1 92 0
	l32r	a4, .LC13
	.loc 1 104 0
	mov.n	a10, a2
	.loc 1 92 0
	memw
	l32i.n	a8, a4, 0
.LVL21:
	.loc 1 93 0
	l32r	a4, .LC14
	.loc 1 104 0
	movi.n	a11, 6
	.loc 1 93 0
	memw
	l32i.n	a4, a4, 0
.LVL22:
	.loc 1 98 0
	s8i	a8, a2, 3
	.loc 1 95 0
	srli	a5, a4, 8
	s8i	a5, a2, 0
	.loc 1 96 0
	extui	a5, a4, 16, 16
	s8i	a5, a2, 1
	.loc 1 97 0
	extui	a5, a4, 24, 8
	s8i	a5, a2, 2
	.loc 1 99 0
	srli	a5, a8, 8
	.loc 1 100 0
	extui	a8, a8, 16, 16
.LVL23:
	.loc 1 99 0
	s8i	a5, a2, 4
	.loc 1 100 0
	s8i	a8, a2, 5
.LVL24:
	.loc 1 104 0
	call8	esp_crc8
.LVL25:
	.loc 1 106 0
	extui	a8, a4, 0, 8
	.loc 1 104 0
	mov.n	a5, a10
.LVL26:
	.loc 1 110 0
	movi.n	a2, 0
.LVL27:
	.loc 1 106 0
	beq	a8, a10, .L9
	.loc 1 107 0 discriminator 2
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC10
	l32r	a12, .LC16
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	extui	a15, a4, 0, 8
	mov.n	a14, a11
	mov.n	a10, a3
	call8	esp_log_write
.LVL29:
	.loc 1 108 0 discriminator 2
	movi	a2, 0x109
.L9:
	.loc 1 111 0
	retw.n
.LFE37:
	.size	esp_efuse_mac_get_custom, .-esp_efuse_mac_get_custom
	.section	.rodata.str1.1
.LC21:
	.string	"\033[0;31mE (%d) %s: Base MAC address from BLK0 of EFUSE CRC error, efuse_crc = 0x%02x; calc_crc = 0x%02x\033[0m\n"
	.section	.text.esp_efuse_mac_get_default,"ax",@progbits
	.literal_position
	.literal .LC17, 1073061892
	.literal .LC18, 1073061896
	.literal .LC19, 6398
	.literal .LC20, .LC0
	.literal .LC22, .LC21
	.align	4
	.global	esp_efuse_mac_get_default
	.type	esp_efuse_mac_get_default, @function
esp_efuse_mac_get_default:
.LFB38:
	.loc 1 114 0
.LVL30:
	entry	sp, 48
.LCFI4:
	.loc 1 114 0
	mov.n	a10, a2
	.loc 1 120 0
	l32r	a2, .LC17
.LVL31:
	.loc 1 132 0
	movi.n	a11, 6
	.loc 1 120 0
	memw
	l32i.n	a8, a2, 0
.LVL32:
	.loc 1 121 0
	l32r	a2, .LC18
	memw
	l32i.n	a2, a2, 0
.LVL33:
	.loc 1 128 0
	s8i	a8, a10, 5
	.loc 1 123 0
	srli	a3, a2, 8
	s8i	a3, a10, 0
	.loc 1 125 0
	extui	a3, a8, 24, 8
	s8i	a3, a10, 2
	.loc 1 126 0
	extui	a3, a8, 16, 16
	s8i	a3, a10, 3
	.loc 1 127 0
	srli	a3, a8, 8
	s8i	a3, a10, 4
	.loc 1 124 0
	s8i	a2, a10, 1
	.loc 1 132 0
	call8	esp_crc8
.LVL34:
	.loc 1 130 0
	extui	a3, a2, 16, 16
.LVL35:
	.loc 1 134 0
	extui	a8, a3, 0, 8
	.loc 1 132 0
	mov.n	a4, a10
.LVL36:
	.loc 1 134 0
	beq	a8, a10, .L12
	.loc 1 137 0
	l32r	a8, .LC19
	extui	a2, a2, 0, 16
.LVL37:
	beq	a2, a8, .L12
	.loc 1 142 0 discriminator 2
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC20
	l32r	a12, .LC22
	mov.n	a13, a10
	extui	a15, a3, 0, 8
	mov.n	a14, a11
	movi.n	a10, 1
	s32i.n	a4, sp, 0
	call8	esp_log_write
.LVL39:
	.loc 1 143 0 discriminator 2
	call8	abort
.LVL40:
.L12:
	.loc 1 147 0
	movi.n	a2, 0
	retw.n
.LFE38:
	.size	esp_efuse_mac_get_default, .-esp_efuse_mac_get_default
	.global	esp_efuse_read_mac
	.set	esp_efuse_read_mac,esp_efuse_mac_get_default
	.global	system_efuse_read_mac
	.set	system_efuse_read_mac,esp_efuse_mac_get_default
	.section	.rodata.str1.1
.LC24:
	.string	"\033[0;31mE (%d) %s: mac address param is NULL\033[0m\n"
	.section	.text.esp_derive_local_mac,"ax",@progbits
	.literal_position
	.literal .LC23, .LC0
	.literal .LC25, .LC24
	.align	4
	.global	esp_derive_local_mac
	.type	esp_derive_local_mac, @function
esp_derive_local_mac:
.LFB39:
	.loc 1 153 0
.LVL41:
	entry	sp, 32
.LCFI5:
	.loc 1 156 0
	movi.n	a8, 1
	movi.n	a4, 0
	moveqz	a4, a8, a2
	extui	a4, a4, 0, 8
	bnez.n	a4, .L19
	moveqz	a4, a8, a3
	beqz.n	a4, .L14
.L19:
	.loc 1 157 0 discriminator 2
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC23
	l32r	a12, .LC25
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	.loc 1 158 0 discriminator 2
	movi	a10, 0x102
	j	.L16
.L14:
	.loc 1 161 0
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL44:
	.loc 1 164 0
	movi.n	a5, 2
.LVL45:
.L17:
	l8ui	a8, a3, 0
	.loc 1 166 0
	movi.n	a12, 6
	.loc 1 164 0
	or	a9, a8, a5
	slli	a8, a4, 2
	xor	a8, a9, a8
	s8i	a8, a2, 0
	.loc 1 166 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcmp
.LVL46:
	bnez.n	a10, .L18
.LVL47:
	addi.n	a4, a4, 1
.LVL48:
	.loc 1 162 0 discriminator 2
	bnei	a4, 64, .L17
	j	.L16
.LVL49:
.L18:
	.loc 1 171 0
	movi.n	a10, 0
.LVL50:
.L16:
	.loc 1 172 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LFE39:
	.size	esp_derive_local_mac, .-esp_derive_local_mac
	.section	.rodata.str1.1
.LC28:
	.string	"\033[0;31mE (%d) %s: mac type is incorrect\033[0m\n"
	.section	.text.esp_read_mac,"ax",@progbits
	.literal_position
	.literal .LC26, .LC0
	.literal .LC27, .LC24
	.literal .LC29, .LC28
	.align	4
	.global	esp_read_mac
	.type	esp_read_mac, @function
esp_read_mac:
.LFB40:
	.loc 1 175 0
.LVL52:
	entry	sp, 48
.LCFI6:
	.loc 1 178 0
	bnez.n	a2, .L22
	.loc 1 179 0 discriminator 2
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC26
	mov.n	a13, a10
	mov.n	a14, a11
	l32r	a12, .LC27
	j	.L33
.L22:
	.loc 1 183 0
	bltui	a3, 4, .L24
	.loc 1 184 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC26
	l32r	a12, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
.L33:
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 185 0 discriminator 2
	movi	a2, 0x102
.LVL56:
	retw.n
.LVL57:
.L24:
	.loc 1 192 0
	mov.n	a10, sp
	call8	esp_base_mac_addr_get
.LVL58:
	beqz.n	a10, .L25
	.loc 1 193 0
	mov.n	a10, sp
	call8	esp_efuse_mac_get_default
.LVL59:
.L25:
	.loc 1 210 0
	movi.n	a12, 6
	mov.n	a11, sp
	mov.n	a10, a2
	.loc 1 196 0
	beqi	a3, 2, .L27
	beqi	a3, 3, .L28
	beqi	a3, 1, .L29
	.loc 1 198 0
	call8	memcpy
.LVL60:
	j	.L35
.L29:
	.loc 1 202 0
	call8	memcpy
.LVL61:
	.loc 1 203 0
	l8ui	a3, a2, 5
.LVL62:
	addi.n	a3, a3, 1
	j	.L34
.LVL63:
.L27:
	.loc 1 210 0
	call8	memcpy
.LVL64:
	.loc 1 212 0
	l8ui	a3, a2, 5
.LVL65:
	addi.n	a3, a3, 2
	j	.L34
.LVL66:
.L28:
	.loc 1 220 0
	call8	memcpy
.LVL67:
	.loc 1 221 0
	l8ui	a3, a2, 5
.LVL68:
	addi.n	a3, a3, 3
.L34:
	s8i	a3, a2, 5
.L35:
	.loc 1 233 0
	movi.n	a2, 0
.LVL69:
	.loc 1 234 0
	retw.n
.LFE40:
	.size	esp_read_mac, .-esp_read_mac
	.section	.text.esp_register_shutdown_handler,"ax",@progbits
	.literal_position
	.literal .LC30, shutdown_handlers
	.align	4
	.global	esp_register_shutdown_handler
	.type	esp_register_shutdown_handler, @function
esp_register_shutdown_handler:
.LFB41:
	.loc 1 237 0
.LVL70:
	entry	sp, 32
.LCFI7:
.LVL71:
	.loc 1 240 0
	l32r	a9, .LC30
	l32i.n	a8, a9, 0
	beqz.n	a8, .L37
.LVL72:
	l32i.n	a10, a9, 4
	.loc 1 245 0
	movi.n	a8, -1
	.loc 1 240 0
	bnez.n	a10, .L38
	.loc 1 239 0
	movi.n	a8, 1
.LVL73:
.L37:
	.loc 1 241 0
	addx4	a8, a8, a9
	s32i.n	a2, a8, 0
	.loc 1 242 0
	movi.n	a8, 0
.L38:
	.loc 1 246 0
	mov.n	a2, a8
.LVL74:
	retw.n
.LFE41:
	.size	esp_register_shutdown_handler, .-esp_register_shutdown_handler
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC31, TIMERG0
	.literal .LC32, 1356348065
	.literal .LC33, 2147483647
	.literal .LC34, TIMERG1
	.literal .LC35, 1072955420
	.literal .LC36, 268369920
	.literal .LC37, 1073020956
	.literal .LC38, 1073143836
	.literal .LC39, 1072972080
	.literal .LC40, 1072972084
	.literal .LC41, 1072972088
	.literal .LC42, 1072972092
	.literal .LC43, 1072972096
	.literal .LC44, 1072972100
	.literal .LC45, 1072693456
	.literal .LC46, 1072693444
	.literal .LC47, 1072693304
	.align	4
	.global	esp_restart_noos
	.type	esp_restart_noos, @function
esp_restart_noos:
.LFB43:
	.loc 1 270 0
	entry	sp, 32
.LCFI8:
	.loc 1 272 0
	movi.n	a10, -1
	call8	xt_ints_off
.LVL75:
	.loc 1 275 0
	call8	rtc_wdt_protect_off
.LVL76:
	.loc 1 276 0
	call8	rtc_wdt_disable
.LVL77:
	.loc 1 277 0
	movi.n	a11, 4
	movi.n	a10, 0
	call8	rtc_wdt_set_stage
.LVL78:
	.loc 1 278 0
	movi.n	a11, 3
	movi.n	a10, 1
	call8	rtc_wdt_set_stage
.LVL79:
	.loc 1 279 0
	movi.n	a11, 1
	movi.n	a10, 0
	call8	rtc_wdt_set_length_of_reset_signal
.LVL80:
	.loc 1 280 0
	movi.n	a11, 1
	mov.n	a10, a11
	call8	rtc_wdt_set_length_of_reset_signal
.LVL81:
	.loc 1 281 0
	movi	a11, 0x3e8
	movi.n	a10, 0
	call8	rtc_wdt_set_time
.LVL82:
	.loc 1 282 0
	call8	rtc_wdt_flashboot_mode_enable
.LVL83:
.LBB32:
.LBB33:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL84:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 290 0
	movi.n	a4, 0
	movi.n	a2, 1
	movnez	a2, a4, a3
	mov.n	a10, a2
	call8	esp_cpu_reset
.LVL85:
	.loc 1 291 0
	mov.n	a10, a2
	call8	esp_cpu_stall
.LVL86:
	.loc 1 294 0
	call8	esp_dport_access_int_abort
.LVL87:
	.loc 1 297 0
	l32r	a10, .LC32
	l32r	a2, .LC31
	.loc 1 298 0
	l32r	a8, .LC33
	.loc 1 297 0
	memw
	s32i	a10, a2, 100
	.loc 1 298 0
	memw
	l32i	a9, a2, 72
	and	a9, a9, a8
	memw
	s32i	a9, a2, 72
	.loc 1 299 0
	memw
	s32i	a4, a2, 100
	.loc 1 300 0
	l32r	a2, .LC34
	memw
	s32i	a10, a2, 100
	.loc 1 301 0
	memw
	l32i	a9, a2, 72
	and	a8, a9, a8
	memw
	s32i	a8, a2, 72
	.loc 1 302 0
	memw
	s32i	a4, a2, 100
.LVL88:
.LBB34:
.LBB35:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/uart.h"
	.loc 3 272 0
	l32r	a8, .LC35
	.loc 3 274 0
	l32r	a2, .LC36
.L42:
	.loc 3 272 0
	memw
	l32i.n	a4, a8, 0
.LVL89:
	.loc 3 274 0
	bany	a4, a2, .L42
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 3 272 0
	l32r	a8, .LC37
	.loc 3 274 0
	l32r	a2, .LC36
.LVL90:
.L43:
	.loc 3 272 0
	memw
	l32i.n	a4, a8, 0
.LVL91:
	.loc 3 274 0
	bany	a4, a2, .L43
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	.loc 3 272 0
	l32r	a8, .LC38
	.loc 3 274 0
	l32r	a4, .LC36
.LVL92:
.L44:
	.loc 3 272 0
	memw
	l32i.n	a2, a8, 0
.LVL93:
	.loc 3 274 0
	and	a2, a2, a4
.LVL94:
	bnez.n	a2, .L44
.LVL95:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/cache.h"
	.loc 4 158 0
	mov.n	a10, a2
	call8	Cache_Read_Disable_rom
.LVL96:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	movi.n	a10, 1
	call8	Cache_Read_Disable_rom
.LVL97:
.LBE43:
.LBE42:
	.loc 1 315 0
	l32r	a4, .LC39
	movi.n	a8, 0x30
	memw
	s32i.n	a8, a4, 0
	.loc 1 316 0
	l32r	a4, .LC40
	.loc 1 323 0
	movi	a9, 0x7ff
	.loc 1 316 0
	memw
	s32i.n	a8, a4, 0
	.loc 1 317 0
	l32r	a4, .LC41
	memw
	s32i.n	a8, a4, 0
	.loc 1 318 0
	l32r	a4, .LC42
	memw
	s32i.n	a8, a4, 0
	.loc 1 319 0
	l32r	a4, .LC43
	memw
	s32i.n	a8, a4, 0
	.loc 1 320 0
	l32r	a4, .LC44
	memw
	s32i.n	a8, a4, 0
.LVL98:
.LBB44:
.LBB45:
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 5 170 0
	l32r	a8, .LC45
	memw
	l32i.n	a4, a8, 0
.LBE45:
.LBE44:
	.loc 1 323 0
	or	a9, a4, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 328 0
	memw
	s32i.n	a2, a8, 0
.LVL99:
.LBB46:
.LBB47:
	.loc 5 170 0
	l32r	a8, .LC46
.LBE47:
.LBE46:
	.loc 1 331 0
	movi.n	a9, 7
.LBB49:
.LBB48:
	.loc 5 170 0
	memw
	l32i.n	a4, a8, 0
.LBE48:
.LBE49:
	.loc 1 331 0
	or	a9, a4, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 333 0
	memw
	s32i.n	a2, a8, 0
	.loc 1 336 0
	call8	rtc_clk_cpu_freq_set_xtal
.LVL100:
	.loc 1 339 0
	l32r	a4, .LC47
	memw
	s32i.n	a2, a4, 0
	.loc 1 342 0
	bnez.n	a3, .L45
	.loc 1 344 0
	movi.n	a10, 1
	call8	esp_cpu_reset
.LVL101:
	.loc 1 345 0
	mov.n	a10, a3
	call8	esp_cpu_reset
.LVL102:
	j	.L46
.L45:
	.loc 1 349 0
	mov.n	a10, a2
	call8	esp_cpu_reset
.LVL103:
	.loc 1 350 0
	mov.n	a10, a2
	call8	esp_cpu_unstall
.LVL104:
	.loc 1 351 0
	movi.n	a10, 1
	call8	esp_cpu_reset
.LVL105:
.L46:
.L50:
	j	.L50
.LFE43:
	.size	esp_restart_noos, .-esp_restart_noos
	.literal_position
	.literal .LC48, shutdown_handlers
	.align	4
	.global	esp_restart
	.type	esp_restart, @function
esp_restart:
.LFB42:
	.loc 1 251 0
	entry	sp, 32
.LCFI9:
.LVL106:
	.loc 1 254 0
	l32r	a8, .LC48
	l32i.n	a9, a8, 0
	mov.n	a2, a8
	beqz.n	a9, .L52
	.loc 1 255 0
	callx8	a9
.LVL107:
.L52:
	.loc 1 254 0
	l32i.n	a2, a2, 4
	beqz.n	a2, .L53
	.loc 1 255 0
	callx8	a2
.LVL108:
.L53:
	.loc 1 260 0
	call8	vTaskSuspendAll
.LVL109:
	.loc 1 262 0
	call8	esp_restart_noos
.LVL110:
.LFE42:
	.size	esp_restart, .-esp_restart
	.global	system_restart
	.set	system_restart,esp_restart
	.section	.text.esp_get_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC49, 4096
	.align	4
	.global	esp_get_free_heap_size
	.type	esp_get_free_heap_size, @function
esp_get_free_heap_size:
.LFB44:
	.loc 1 361 0
	entry	sp, 32
.LCFI10:
	.loc 1 362 0
	l32r	a10, .LC49
	call8	heap_caps_get_free_size
.LVL111:
	.loc 1 363 0
	mov.n	a2, a10
	retw.n
.LFE44:
	.size	esp_get_free_heap_size, .-esp_get_free_heap_size
	.global	system_get_free_heap_size
	.set	system_get_free_heap_size,esp_get_free_heap_size
	.section	.text.esp_get_minimum_free_heap_size,"ax",@progbits
	.literal_position
	.literal .LC50, 4096
	.align	4
	.global	esp_get_minimum_free_heap_size
	.type	esp_get_minimum_free_heap_size, @function
esp_get_minimum_free_heap_size:
.LFB45:
	.loc 1 366 0
	entry	sp, 32
.LCFI11:
	.loc 1 367 0
	l32r	a10, .LC50
	call8	heap_caps_get_minimum_free_size
.LVL112:
	.loc 1 368 0
	mov.n	a2, a10
	retw.n
.LFE45:
	.size	esp_get_minimum_free_heap_size, .-esp_get_minimum_free_heap_size
	.section	.rodata.str1.1
.LC51:
	.string	"master"
	.section	.text.system_get_sdk_version,"ax",@progbits
	.literal_position
	.literal .LC52, .LC51
	.align	4
	.global	system_get_sdk_version
	.type	system_get_sdk_version, @function
system_get_sdk_version:
.LFB46:
	.loc 1 373 0
	entry	sp, 32
.LCFI12:
	.loc 1 375 0
	l32r	a2, .LC52
	retw.n
.LFE46:
	.size	system_get_sdk_version, .-system_get_sdk_version
	.section	.rodata.str1.1
.LC53:
	.string	"v3.2"
	.section	.text.esp_get_idf_version,"ax",@progbits
	.literal_position
	.literal .LC54, .LC53
	.align	4
	.global	esp_get_idf_version
	.type	esp_get_idf_version, @function
esp_get_idf_version:
.LFB47:
	.loc 1 378 0
	entry	sp, 32
.LCFI13:
	.loc 1 380 0
	l32r	a2, .LC54
	retw.n
.LFE47:
	.size	esp_get_idf_version, .-esp_get_idf_version
	.section	.text.esp_chip_info,"ax",@progbits
	.literal_position
	.literal .LC55, 1073061900
	.align	4
	.global	esp_chip_info
	.type	esp_chip_info, @function
esp_chip_info:
.LFB49:
	.loc 1 409 0
.LVL113:
	entry	sp, 32
.LCFI14:
.LVL114:
.LBB52:
.LBB53:
	.loc 1 384 0
	l32r	a3, .LC55
	.loc 1 385 0
	movi.n	a12, 0xc
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 384 0
	memw
	l32i.n	a3, a3, 0
.LVL115:
	.loc 1 385 0
	call8	memset
.LVL116:
	.loc 1 387 0
	movi.n	a8, 1
	s32i.n	a8, a2, 0
	.loc 1 388 0
	bbci	a3, 15, .L65
	.loc 1 389 0
	s8i	a8, a2, 9
.L65:
	.loc 1 392 0
	movi.n	a8, 2
	.loc 1 391 0
	bbci	a3, 0, .L81
.L66:
	.loc 1 394 0
	movi.n	a8, 1
.L81:
	s8i	a8, a2, 8
	.loc 1 397 0
	movi.n	a8, 2
	bnone	a3, a8, .L68
	j	.L82
.L68:
	.loc 1 398 0
	movi.n	a8, 0x32
.L82:
	.loc 1 400 0
	extui	a3, a3, 9, 3
.LVL117:
	.loc 1 398 0
	s32i.n	a8, a2, 4
	.loc 1 402 0
	addi	a8, a3, -4
	bltui	a8, 2, .L73
	bnei	a3, 2, .L64
.L73:
	.loc 1 404 0
	l32i.n	a8, a2, 4
	movi.n	a3, 1
.LVL118:
	or	a3, a8, a3
	s32i.n	a3, a2, 4
.L64:
	retw.n
.LBE53:
.LBE52:
.LFE49:
	.size	esp_chip_info, .-esp_chip_info
	.section	.bss.shutdown_handlers,"aw",@nobits
	.align	4
	.type	shutdown_handlers, @object
	.size	shutdown_handlers, 8
shutdown_handlers:
	.zero	8
	.section	.bss.base_mac_addr,"aw",@nobits
	.type	base_mac_addr, @object
	.size	base_mac_addr, 6
base_mac_addr:
	.zero	6
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI4-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI6-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI7-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI8-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI9-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI10-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI12-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI14-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/efuse.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/xtensa_api.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 19 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 20 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/task.h"
	.file 21 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15e8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0xc
	.4byte	.LASF204
	.4byte	.LASF205
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x6
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x7
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x8
	.byte	0x18
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1b
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x9
	.byte	0x20
	.4byte	0xdf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.byte	0x4c
	.4byte	0x93
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.2byte	0x132
	.4byte	0x12e
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.2byte	0x134
	.4byte	0x11a
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.2byte	0x13f
	.4byte	0x178
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x140
	.4byte	0x12e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x141
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x142
	.4byte	0xac
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x143
	.4byte	0xac
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x144
	.4byte	0x13a
	.uleb128 0x5
	.byte	0x4
	.4byte	0xac
	.uleb128 0xe
	.4byte	0xac
	.4byte	0x19a
	.uleb128 0xf
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x7
	.4byte	0xac
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x1f
	.4byte	0x1db
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.4byte	0x25c
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x19
	.4byte	0xc2
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x1a
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.byte	0x1b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x1c
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.byte	0x1d
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xb
	.byte	0x1e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xb
	.byte	0x1f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xb
	.byte	0x20
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0x275
	.uleb128 0x13
	.4byte	0x1db
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x22
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x24
	.byte	0xb
	.byte	0x16
	.4byte	0x2ea
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0xb
	.byte	0x23
	.4byte	0x25c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0xb
	.byte	0x24
	.4byte	0xc2
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0xb
	.byte	0x25
	.4byte	0xc2
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0xb
	.byte	0x26
	.4byte	0xc2
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0xb
	.byte	0x27
	.4byte	0xc2
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xb
	.byte	0x28
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xb
	.byte	0x29
	.4byte	0xc2
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0xb
	.byte	0x2a
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2b
	.4byte	0xc2
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.4byte	0x397
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x2f
	.4byte	0xc2
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xb
	.byte	0x30
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0xb
	.byte	0x31
	.4byte	0xc2
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xb
	.byte	0x32
	.4byte	0xc2
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.byte	0x33
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x34
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0xb
	.byte	0x35
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xb
	.byte	0x36
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0xb
	.byte	0x37
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0xb
	.byte	0x38
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0x39
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.4byte	0x3b0
	.uleb128 0x13
	.4byte	0x2ea
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x3b
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x3e
	.4byte	0x3d7
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x3f
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0xb
	.byte	0x40
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x3d
	.4byte	0x3f0
	.uleb128 0x13
	.4byte	0x3b0
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x42
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x4b
	.4byte	0x453
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x4c
	.4byte	0xc2
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xb
	.byte	0x4d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xb
	.byte	0x4e
	.4byte	0xc2
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x16
	.string	"rdy"
	.byte	0xb
	.byte	0x4f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.string	"max"
	.byte	0xb
	.byte	0x50
	.4byte	0xc2
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0xb
	.byte	0x51
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x4a
	.4byte	0x46c
	.uleb128 0x13
	.4byte	0x3f0
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x53
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.4byte	0x493
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x57
	.4byte	0xc2
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0xb
	.byte	0x58
	.4byte	0xc2
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x55
	.4byte	0x4ac
	.uleb128 0x13
	.4byte	0x46c
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x5a
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x5d
	.4byte	0x559
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x5e
	.4byte	0xc2
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xb
	.byte	0x5f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xb
	.byte	0x60
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xb
	.byte	0x61
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.byte	0x62
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.byte	0x63
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xb
	.byte	0x64
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xb
	.byte	0x65
	.4byte	0xc2
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xb
	.byte	0x66
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xb
	.byte	0x67
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0x68
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x5c
	.4byte	0x572
	.uleb128 0x13
	.4byte	0x4ac
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x6a
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x6d
	.4byte	0x599
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0x6e
	.4byte	0xc2
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xb
	.byte	0x6f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x6c
	.4byte	0x5b2
	.uleb128 0x13
	.4byte	0x572
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x71
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x7c
	.4byte	0x604
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x7d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x7e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x7f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x80
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x81
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x7b
	.4byte	0x61d
	.uleb128 0x13
	.4byte	0x5b2
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x83
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x86
	.4byte	0x66f
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x87
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x88
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x89
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x8a
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x8b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x85
	.4byte	0x688
	.uleb128 0x13
	.4byte	0x61d
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x8d
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x90
	.4byte	0x6da
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x91
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x92
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x93
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x94
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x95
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x8f
	.4byte	0x6f3
	.uleb128 0x13
	.4byte	0x688
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0x97
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0x9a
	.4byte	0x745
	.uleb128 0x16
	.string	"t0"
	.byte	0xb
	.byte	0x9b
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.string	"t1"
	.byte	0xb
	.byte	0x9c
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.string	"wdt"
	.byte	0xb
	.byte	0x9d
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x9e
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x9f
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x99
	.4byte	0x75e
	.uleb128 0x13
	.4byte	0x6f3
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xa1
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xb8
	.4byte	0x785
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0xb9
	.4byte	0xc2
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xb
	.byte	0xba
	.4byte	0xc2
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0xb7
	.4byte	0x79e
	.uleb128 0x13
	.4byte	0x75e
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xbc
	.4byte	0xc2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xbf
	.4byte	0x7c4
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xb
	.byte	0xc0
	.4byte	0xc2
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.string	"en"
	.byte	0xb
	.byte	0xc1
	.4byte	0xc2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0xbe
	.4byte	0x7dd
	.uleb128 0x13
	.4byte	0x79e
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xc3
	.4byte	0xc2
	.byte	0
	.uleb128 0x17
	.2byte	0x100
	.byte	0xb
	.byte	0x15
	.4byte	0xa1b
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xb
	.byte	0x2c
	.4byte	0xa1b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xb
	.byte	0x3c
	.4byte	0x397
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xb
	.byte	0x43
	.4byte	0x3d7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xb
	.byte	0x44
	.4byte	0xc2
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xb
	.byte	0x45
	.4byte	0xc2
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xb
	.byte	0x46
	.4byte	0xc2
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xb
	.byte	0x47
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xb
	.byte	0x48
	.4byte	0xc2
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0xb
	.byte	0x49
	.4byte	0xc2
	.byte	0x64
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xb
	.byte	0x54
	.4byte	0x453
	.byte	0x68
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xb
	.byte	0x5b
	.4byte	0x493
	.byte	0x6c
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xb
	.byte	0x6b
	.4byte	0x559
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0xb
	.byte	0x72
	.4byte	0x599
	.byte	0x74
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0xb
	.byte	0x73
	.4byte	0xc2
	.byte	0x78
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xb
	.byte	0x74
	.4byte	0xc2
	.byte	0x7c
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xb
	.byte	0x75
	.4byte	0xc2
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xb
	.byte	0x76
	.4byte	0xc2
	.byte	0x84
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0xb
	.byte	0x77
	.4byte	0xc2
	.byte	0x88
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0xb
	.byte	0x78
	.4byte	0xc2
	.byte	0x8c
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0xb
	.byte	0x79
	.4byte	0xc2
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0xb
	.byte	0x7a
	.4byte	0xc2
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0xb
	.byte	0x84
	.4byte	0x604
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0xb
	.byte	0x8e
	.4byte	0x66f
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0xb
	.byte	0x98
	.4byte	0x6da
	.byte	0xa0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0xb
	.byte	0xa2
	.4byte	0x745
	.byte	0xa4
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0xb
	.byte	0xa3
	.4byte	0xc2
	.byte	0xa8
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0xb
	.byte	0xa4
	.4byte	0xc2
	.byte	0xac
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0xb
	.byte	0xa5
	.4byte	0xc2
	.byte	0xb0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0xb
	.byte	0xa6
	.4byte	0xc2
	.byte	0xb4
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0xb
	.byte	0xa7
	.4byte	0xc2
	.byte	0xb8
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0xb
	.byte	0xa8
	.4byte	0xc2
	.byte	0xbc
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0xb
	.byte	0xa9
	.4byte	0xc2
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0xb
	.byte	0xaa
	.4byte	0xc2
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0xb
	.byte	0xab
	.4byte	0xc2
	.byte	0xc8
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0xb
	.byte	0xac
	.4byte	0xc2
	.byte	0xcc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0xb
	.byte	0xad
	.4byte	0xc2
	.byte	0xd0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0xb
	.byte	0xae
	.4byte	0xc2
	.byte	0xd4
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0xb
	.byte	0xaf
	.4byte	0xc2
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0xb
	.byte	0xb0
	.4byte	0xc2
	.byte	0xdc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0xb
	.byte	0xb1
	.4byte	0xc2
	.byte	0xe0
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0xb
	.byte	0xb2
	.4byte	0xc2
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0xb
	.byte	0xb3
	.4byte	0xc2
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0xb
	.byte	0xb4
	.4byte	0xc2
	.byte	0xec
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0xb
	.byte	0xb5
	.4byte	0xc2
	.byte	0xf0
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0xb
	.byte	0xb6
	.4byte	0xc2
	.byte	0xf4
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0xb
	.byte	0xbd
	.4byte	0x785
	.byte	0xf8
	.uleb128 0x18
	.string	"clk"
	.byte	0xb
	.byte	0xc4
	.4byte	0x7c4
	.byte	0xfc
	.byte	0
	.uleb128 0xe
	.4byte	0x275
	.4byte	0xa2b
	.uleb128 0xf
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xb
	.byte	0xc5
	.4byte	0xa36
	.uleb128 0x19
	.4byte	0x7dd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x40
	.4byte	0xa60
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x48
	.4byte	0xa8b
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x51
	.4byte	0xaa4
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x57
	.4byte	0xae1
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF206
	.byte	0x1
	.byte	0x40
	.4byte	0xcd
	.byte	0x1
	.4byte	0xb08
	.uleb128 0x1b
	.string	"mac"
	.byte	0x1
	.byte	0x40
	.4byte	0x184
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.byte	0x42
	.4byte	0x18a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF207
	.byte	0x5
	.byte	0xa7
	.4byte	0xc2
	.byte	0x3
	.4byte	0xb24
	.uleb128 0x1b
	.string	"reg"
	.byte	0x5
	.byte	0xa7
	.4byte	0xc2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x4
	.byte	0x9a
	.byte	0x3
	.4byte	0xb44
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x4
	.byte	0x9a
	.4byte	0x25
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0x4
	.byte	0x9c
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x2
	.byte	0xce
	.4byte	0xc2
	.byte	0x3
	.4byte	0xb5f
	.uleb128 0x22
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0x23
	.4byte	.LASF208
	.byte	0x1
	.byte	0x30
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF145
	.byte	0x1
	.byte	0x34
	.4byte	0xcd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf1
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0x34
	.4byte	0x184
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LVL1
	.4byte	0x14f0
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0x14fb
	.4byte	0xbcf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL3
	.4byte	0x1506
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0x1511
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0xae1
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca9
	.uleb128 0x2b
	.4byte	0xaf1
	.4byte	.LLST1
	.uleb128 0x2c
	.4byte	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xc6e
	.uleb128 0x2b
	.4byte	0xaf1
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2f
	.4byte	0xafc
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x14f0
	.uleb128 0x29
	.4byte	.LVL10
	.4byte	0x14fb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0x151a
	.4byte	0xc8d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0x1511
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4e
	.4byte	0xcd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaf
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0x4e
	.4byte	0x184
	.4byte	.LLST3
	.uleb128 0x30
	.4byte	.LASF147
	.byte	0x1
	.byte	0x50
	.4byte	0xc2
	.4byte	.LLST4
	.uleb128 0x31
	.4byte	.LASF148
	.byte	0x1
	.byte	0x51
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF149
	.byte	0x1
	.byte	0x52
	.4byte	0xac
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF150
	.byte	0x1
	.byte	0x53
	.4byte	0xac
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	.LASF151
	.byte	0x1
	.byte	0x55
	.4byte	0xac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x14f0
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0x14fb
	.4byte	0xd51
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL25
	.4byte	0x1525
	.4byte	0xd6a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x26
	.4byte	.LVL28
	.4byte	0x14f0
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0x14fb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0x1
	.byte	0x71
	.4byte	0xcd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7a
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0x71
	.4byte	0x184
	.4byte	.LLST5
	.uleb128 0x30
	.4byte	.LASF147
	.byte	0x1
	.byte	0x73
	.4byte	0xc2
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.byte	0x74
	.4byte	0xc2
	.4byte	.LLST7
	.uleb128 0x31
	.4byte	.LASF149
	.byte	0x1
	.byte	0x75
	.4byte	0xac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF150
	.byte	0x1
	.byte	0x76
	.4byte	0xac
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LVL34
	.4byte	0x1525
	.4byte	0xe29
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x26
	.4byte	.LVL38
	.4byte	0x14f0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0x14fb
	.4byte	0xe70
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL40
	.4byte	0x1506
	.byte	0
	.uleb128 0x24
	.4byte	.LASF153
	.byte	0x1
	.byte	0x98
	.4byte	0xcd
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf30
	.uleb128 0x32
	.4byte	.LASF154
	.byte	0x1
	.byte	0x98
	.4byte	0x184
	.4byte	.LLST8
	.uleb128 0x33
	.4byte	.LASF155
	.byte	0x1
	.byte	0x98
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"idx"
	.byte	0x1
	.byte	0x9a
	.4byte	0xac
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0x14f0
	.uleb128 0x27
	.4byte	.LVL43
	.4byte	0x14fb
	.4byte	0xef5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL44
	.4byte	0x1511
	.4byte	0xf14
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL46
	.4byte	0x151a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF156
	.byte	0x1
	.byte	0xae
	.4byte	0xcd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffd
	.uleb128 0x25
	.string	"mac"
	.byte	0x1
	.byte	0xae
	.4byte	0x184
	.4byte	.LLST10
	.uleb128 0x32
	.4byte	.LASF157
	.byte	0x1
	.byte	0xae
	.4byte	0x104
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LASF158
	.byte	0x1
	.byte	0xb0
	.4byte	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL53
	.4byte	0x14f0
	.uleb128 0x26
	.4byte	.LVL54
	.4byte	0x14f0
	.uleb128 0x27
	.4byte	.LVL55
	.4byte	0x14fb
	.4byte	0xf9a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL58
	.4byte	0xae1
	.4byte	0xfae
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.4byte	.LVL59
	.4byte	0xdaf
	.4byte	0xfc2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.4byte	.LVL60
	.4byte	0x1511
	.4byte	0xfe1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x26
	.4byte	.LVL61
	.4byte	0x1511
	.uleb128 0x26
	.4byte	.LVL64
	.4byte	0x1511
	.uleb128 0x26
	.4byte	.LVL67
	.4byte	0x1511
	.byte	0
	.uleb128 0x24
	.4byte	.LASF159
	.byte	0x1
	.byte	0xec
	.4byte	0xcd
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1033
	.uleb128 0x32
	.4byte	.LASF160
	.byte	0x1
	.byte	0xec
	.4byte	0x10f
	.4byte	.LLST12
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0xee
	.4byte	0x25
	.4byte	.LLST13
	.byte	0
	.uleb128 0x35
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x10d
	.byte	0x3
	.4byte	0x1059
	.uleb128 0x36
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x10d
	.4byte	0xac
	.uleb128 0x37
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x10e
	.4byte	0xc2
	.byte	0
	.uleb128 0x38
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x10d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1325
	.uleb128 0x37
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x120
	.4byte	0x1325
	.uleb128 0x39
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x121
	.4byte	0x1325
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x3a
	.4byte	0xb44
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x120
	.4byte	0x10b6
	.uleb128 0x2e
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2c
	.4byte	0xb54
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0x1033
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x131
	.4byte	0x10e4
	.uleb128 0x3b
	.4byte	0x1040
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x3c
	.4byte	0x104c
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0x1033
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x132
	.4byte	0x1111
	.uleb128 0x3d
	.4byte	0x1040
	.uleb128 0x2e
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x3c
	.4byte	0x104c
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0x1033
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x133
	.4byte	0x113e
	.uleb128 0x3d
	.4byte	0x1040
	.uleb128 0x2e
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x3c
	.4byte	0x104c
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0xb24
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x136
	.4byte	0x1173
	.uleb128 0x3b
	.4byte	0xb30
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x29
	.4byte	.LVL96
	.4byte	0x1530
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0xb24
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x137
	.4byte	0x11a7
	.uleb128 0x3b
	.4byte	0xb30
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x29
	.4byte	.LVL97
	.4byte	0x1530
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0xb08
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.2byte	0x143
	.4byte	0x11c5
	.uleb128 0x3e
	.4byte	0xb18
	.4byte	0x3ff000d0
	.byte	0
	.uleb128 0x3f
	.4byte	0xb08
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x14b
	.4byte	0x11e3
	.uleb128 0x3e
	.4byte	0xb18
	.4byte	0x3ff000c4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL75
	.4byte	0x153b
	.4byte	0x11f7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x26
	.4byte	.LVL76
	.4byte	0x1546
	.uleb128 0x26
	.4byte	.LVL77
	.4byte	0x1551
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x155c
	.4byte	0x1221
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0x155c
	.4byte	0x1239
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x27
	.4byte	.LVL80
	.4byte	0x1567
	.4byte	0x1251
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL81
	.4byte	0x1567
	.4byte	0x1269
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL82
	.4byte	0x1572
	.4byte	0x1283
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x26
	.4byte	.LVL83
	.4byte	0x157d
	.uleb128 0x27
	.4byte	.LVL85
	.4byte	0x1588
	.4byte	0x12a0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x1593
	.4byte	0x12b4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL87
	.4byte	0x159e
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x15a9
	.uleb128 0x27
	.4byte	.LVL101
	.4byte	0x1588
	.4byte	0x12d9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL102
	.4byte	0x1588
	.4byte	0x12ed
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL103
	.4byte	0x1588
	.4byte	0x1301
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL104
	.4byte	0x15b5
	.4byte	0x1315
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL105
	.4byte	0x1588
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xc2
	.uleb128 0x40
	.4byte	.LASF166
	.byte	0x1
	.byte	0xfa
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1367
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x41
	.4byte	.LVL108
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0x15c0
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x1059
	.byte	0
	.uleb128 0x42
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x168
	.4byte	0xc2
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1393
	.uleb128 0x29
	.4byte	.LVL111
	.4byte	0x15cc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x16d
	.4byte	0xc2
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bf
	.uleb128 0x29
	.4byte	.LVL112
	.4byte	0x15d7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x174
	.4byte	0xa1
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x179
	.4byte	0xa1
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17e
	.byte	0x1
	.4byte	0x141d
	.uleb128 0x36
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x17e
	.4byte	0x141d
	.uleb128 0x44
	.string	"reg"
	.byte	0x1
	.2byte	0x180
	.4byte	0xc2
	.uleb128 0x37
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x190
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x178
	.uleb128 0x45
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x198
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1496
	.uleb128 0x46
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x198
	.4byte	0x141d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x47
	.4byte	0x13eb
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.2byte	0x19c
	.uleb128 0x48
	.4byte	0x13f8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x3c
	.4byte	0x1404
	.4byte	.LLST18
	.uleb128 0x3c
	.4byte	0x1410
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	.LVL116
	.4byte	0x15e2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.string	"TAG"
	.byte	0x1
	.byte	0x29
	.4byte	0x19a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LASF176
	.byte	0x1
	.byte	0x2b
	.4byte	0x18a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_mac_addr
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x14c9
	.uleb128 0xf
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.4byte	.LASF177
	.byte	0x1
	.byte	0x2e
	.4byte	0x14b9
	.uleb128 0x5
	.byte	0x3
	.4byte	shutdown_handlers
	.uleb128 0x4a
	.4byte	.LASF178
	.byte	0xb
	.byte	0xc6
	.4byte	0xa2b
	.uleb128 0x4a
	.4byte	.LASF179
	.byte	0xb
	.byte	0xc7
	.4byte	0xa2b
	.uleb128 0x4b
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xa
	.byte	0x57
	.uleb128 0x4b
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xa
	.byte	0x6b
	.uleb128 0x4b
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xd
	.byte	0x47
	.uleb128 0x4c
	.4byte	.LASF201
	.4byte	.LASF201
	.uleb128 0x4b
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xe
	.byte	0x16
	.uleb128 0x4b
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xf
	.byte	0x6b
	.uleb128 0x4b
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x4
	.byte	0x9c
	.uleb128 0x4b
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x10
	.byte	0x5f
	.uleb128 0x4b
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xc
	.byte	0x72
	.uleb128 0x4b
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xc
	.byte	0x85
	.uleb128 0x4b
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4b
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xc
	.byte	0xbc
	.uleb128 0x4b
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xc
	.byte	0x98
	.uleb128 0x4b
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xc
	.byte	0x80
	.uleb128 0x4b
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x11
	.byte	0x65
	.uleb128 0x4b
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x11
	.byte	0x59
	.uleb128 0x4b
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x12
	.byte	0x22
	.uleb128 0x4d
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x13
	.2byte	0x1be
	.uleb128 0x4b
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x11
	.byte	0x5f
	.uleb128 0x4d
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x14
	.2byte	0x4cb
	.uleb128 0x4b
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x15
	.byte	0x76
	.uleb128 0x4b
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x15
	.byte	0x88
	.uleb128 0x4c
	.4byte	.LASF202
	.4byte	.LASF202
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x87
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x87
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
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
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
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF147:
	.string	"mac_low"
.LASF53:
	.string	"load_high"
.LASF154:
	.string	"local_mac"
.LASF184:
	.string	"esp_crc8"
.LASF109:
	.string	"reserved_cc"
.LASF191:
	.string	"rtc_wdt_set_time"
.LASF97:
	.string	"int_raw"
.LASF93:
	.string	"lactloadlo"
.LASF22:
	.string	"ESP_MAC_ETH"
.LASF5:
	.string	"__uint8_t"
.LASF63:
	.string	"start_cycling"
.LASF30:
	.string	"revision"
.LASF161:
	.string	"uart_tx_wait_idle"
.LASF88:
	.string	"lactlo"
.LASF111:
	.string	"reserved_d4"
.LASF157:
	.string	"type"
.LASF112:
	.string	"reserved_d8"
.LASF9:
	.string	"long long unsigned int"
.LASF196:
	.string	"rtc_clk_cpu_freq_set_xtal"
.LASF76:
	.string	"wdt_config0"
.LASF77:
	.string	"wdt_config1"
.LASF208:
	.string	"system_init"
.LASF79:
	.string	"wdt_config3"
.LASF80:
	.string	"wdt_config4"
.LASF81:
	.string	"wdt_config5"
.LASF140:
	.string	"RTC_WDT_LENGTH_3_2us"
.LASF169:
	.string	"system_get_sdk_version"
.LASF173:
	.string	"package"
.LASF186:
	.string	"xt_ints_off"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF121:
	.string	"timg_dev_t"
.LASF136:
	.string	"RTC_WDT_LENGTH_400ns"
.LASF113:
	.string	"reserved_dc"
.LASF27:
	.string	"model"
.LASF135:
	.string	"RTC_WDT_LENGTH_300ns"
.LASF144:
	.string	"null_mac"
.LASF114:
	.string	"reserved_e0"
.LASF10:
	.string	"long int"
.LASF115:
	.string	"reserved_e4"
.LASF155:
	.string	"universal_mac"
.LASF116:
	.string	"reserved_e8"
.LASF47:
	.string	"cnt_low"
.LASF181:
	.string	"esp_log_write"
.LASF25:
	.string	"CHIP_ESP32"
.LASF201:
	.string	"memcpy"
.LASF204:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/system_api.c"
.LASF110:
	.string	"reserved_d0"
.LASF45:
	.string	"enable"
.LASF148:
	.string	"mac_high"
.LASF43:
	.string	"autoreload"
.LASF199:
	.string	"heap_caps_get_free_size"
.LASF7:
	.string	"__uint32_t"
.LASF117:
	.string	"reserved_ec"
.LASF132:
	.string	"RTC_WDT_CPU_RESET_SIG"
.LASF92:
	.string	"lactalarmhi"
.LASF71:
	.string	"lact"
.LASF66:
	.string	"value"
.LASF82:
	.string	"wdt_feed"
.LASF150:
	.string	"calc_crc"
.LASF118:
	.string	"reserved_f0"
.LASF0:
	.string	"unsigned int"
.LASF119:
	.string	"reserved_f4"
.LASF40:
	.string	"level_int_en"
.LASF46:
	.string	"config"
.LASF177:
	.string	"shutdown_handlers"
.LASF52:
	.string	"load_low"
.LASF12:
	.string	"long unsigned int"
.LASF54:
	.string	"reload"
.LASF29:
	.string	"cores"
.LASF126:
	.string	"RTC_WDT_STAGE_ACTION_OFF"
.LASF164:
	.string	"core_id"
.LASF168:
	.string	"esp_get_minimum_free_heap_size"
.LASF1:
	.string	"short unsigned int"
.LASF73:
	.string	"date"
.LASF20:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF98:
	.string	"int_st_timers"
.LASF75:
	.string	"hw_timer"
.LASF152:
	.string	"esp_efuse_mac_get_default"
.LASF95:
	.string	"lactload"
.LASF137:
	.string	"RTC_WDT_LENGTH_500ns"
.LASF44:
	.string	"increase"
.LASF192:
	.string	"rtc_wdt_flashboot_mode_enable"
.LASF6:
	.string	"__int32_t"
.LASF120:
	.string	"timg_date"
.LASF143:
	.string	"xPortGetCoreID"
.LASF100:
	.string	"reserved_a8"
.LASF28:
	.string	"features"
.LASF160:
	.string	"handler"
.LASF174:
	.string	"esp_restart_noos"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF171:
	.string	"get_chip_info_esp32"
.LASF151:
	.string	"version"
.LASF89:
	.string	"lacthi"
.LASF197:
	.string	"esp_cpu_unstall"
.LASF21:
	.string	"ESP_MAC_BT"
.LASF159:
	.string	"esp_register_shutdown_handler"
.LASF41:
	.string	"edge_int_en"
.LASF94:
	.string	"lactloadhi"
.LASF96:
	.string	"int_ena"
.LASF50:
	.string	"alarm_low"
.LASF127:
	.string	"RTC_WDT_STAGE_ACTION_INTERRUPT"
.LASF56:
	.string	"sys_reset_length"
.LASF203:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF64:
	.string	"clk_sel"
.LASF48:
	.string	"cnt_high"
.LASF134:
	.string	"RTC_WDT_LENGTH_200ns"
.LASF85:
	.string	"rtc_cali_cfg1"
.LASF131:
	.string	"RTC_WDT_SYS_RESET_SIG"
.LASF158:
	.string	"efuse_mac"
.LASF141:
	.string	"cpu_no"
.LASF175:
	.string	"esp_chip_info"
.LASF23:
	.string	"esp_mac_type_t"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF139:
	.string	"RTC_WDT_LENGTH_1_6us"
.LASF149:
	.string	"efuse_crc"
.LASF193:
	.string	"esp_cpu_reset"
.LASF62:
	.string	"clk_prescale"
.LASF101:
	.string	"reserved_ac"
.LASF39:
	.string	"alarm_en"
.LASF130:
	.string	"RTC_WDT_STAGE_ACTION_RESET_RTC"
.LASF18:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF189:
	.string	"rtc_wdt_set_stage"
.LASF74:
	.string	"reserved28"
.LASF122:
	.string	"RTC_WDT_STAGE0"
.LASF68:
	.string	"cpst_en"
.LASF123:
	.string	"RTC_WDT_STAGE1"
.LASF4:
	.string	"short int"
.LASF124:
	.string	"RTC_WDT_STAGE2"
.LASF195:
	.string	"esp_dport_access_int_abort"
.LASF165:
	.string	"other_core_id"
.LASF180:
	.string	"esp_log_timestamp"
.LASF153:
	.string	"esp_derive_local_mac"
.LASF172:
	.string	"out_info"
.LASF14:
	.string	"uint8_t"
.LASF102:
	.string	"reserved_b0"
.LASF185:
	.string	"Cache_Read_Disable_rom"
.LASF190:
	.string	"rtc_wdt_set_length_of_reset_signal"
.LASF99:
	.string	"int_clr_timers"
.LASF83:
	.string	"wdt_wprotect"
.LASF55:
	.string	"flashboot_mod_en"
.LASF146:
	.string	"esp_efuse_mac_get_custom"
.LASF16:
	.string	"uint32_t"
.LASF26:
	.string	"esp_chip_model_t"
.LASF207:
	.string	"DPORT_READ_PERI_REG"
.LASF198:
	.string	"vTaskSuspendAll"
.LASF162:
	.string	"uart_no"
.LASF188:
	.string	"rtc_wdt_disable"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF13:
	.string	"char"
.LASF31:
	.string	"esp_chip_info_t"
.LASF51:
	.string	"alarm_high"
.LASF205:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/esp32"
.LASF170:
	.string	"esp_get_idf_version"
.LASF145:
	.string	"esp_base_mac_addr_set"
.LASF182:
	.string	"abort"
.LASF86:
	.string	"lactconfig"
.LASF61:
	.string	"stg0"
.LASF60:
	.string	"stg1"
.LASF59:
	.string	"stg2"
.LASF58:
	.string	"stg3"
.LASF103:
	.string	"reserved_b4"
.LASF183:
	.string	"memcmp"
.LASF104:
	.string	"reserved_b8"
.LASF78:
	.string	"wdt_config2"
.LASF178:
	.string	"TIMERG0"
.LASF179:
	.string	"TIMERG1"
.LASF142:
	.string	"Cache_Read_Disable"
.LASF67:
	.string	"rtc_only"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF176:
	.string	"base_mac_addr"
.LASF91:
	.string	"lactalarmlo"
.LASF24:
	.string	"shutdown_handler_t"
.LASF49:
	.string	"update"
.LASF128:
	.string	"RTC_WDT_STAGE_ACTION_RESET_CPU"
.LASF19:
	.string	"ESP_MAC_WIFI_STA"
.LASF84:
	.string	"rtc_cali_cfg"
.LASF138:
	.string	"RTC_WDT_LENGTH_800ns"
.LASF202:
	.string	"memset"
.LASF57:
	.string	"cpu_reset_length"
.LASF163:
	.string	"status"
.LASF156:
	.string	"esp_read_mac"
.LASF17:
	.string	"esp_err_t"
.LASF105:
	.string	"reserved_bc"
.LASF200:
	.string	"heap_caps_get_minimum_free_size"
.LASF167:
	.string	"esp_get_free_heap_size"
.LASF206:
	.string	"esp_base_mac_addr_get"
.LASF166:
	.string	"esp_restart"
.LASF133:
	.string	"RTC_WDT_LENGTH_100ns"
.LASF11:
	.string	"sizetype"
.LASF42:
	.string	"divider"
.LASF90:
	.string	"lactupdate"
.LASF106:
	.string	"reserved_c0"
.LASF187:
	.string	"rtc_wdt_protect_off"
.LASF107:
	.string	"reserved_c4"
.LASF69:
	.string	"lac_en"
.LASF70:
	.string	"step_len"
.LASF38:
	.string	"reserved0"
.LASF72:
	.string	"reserved4"
.LASF65:
	.string	"start"
.LASF125:
	.string	"RTC_WDT_STAGE3"
.LASF194:
	.string	"esp_cpu_stall"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF87:
	.string	"lactrtc"
.LASF129:
	.string	"RTC_WDT_STAGE_ACTION_RESET_SYSTEM"
.LASF108:
	.string	"reserved_c8"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
