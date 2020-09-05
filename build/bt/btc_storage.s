	.file	"btc_storage.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"LinkKeyType"
.LC2:
	.string	"PinLength"
.LC4:
	.string	"LinkKey"
	.section	.text.btc_storage_add_bonded_device,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.global	btc_storage_add_bonded_device
	.type	btc_storage_add_bonded_device, @function
btc_storage_add_bonded_device:
.LFB44:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_storage.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 44 0
	mov.n	a11, sp
	movi.n	a12, 0x12
	mov.n	a10, a2
	call8	bdaddr_to_string
.LVL1:
	.loc 1 47 0
	call8	btc_config_lock
.LVL2:
	.loc 1 41 0
	extui	a4, a4, 0, 8
	.loc 1 48 0
	l32r	a11, .LC1
	mov.n	a12, a4
	mov.n	a10, sp
	call8	btc_config_set_int
.LVL3:
	.loc 1 41 0
	extui	a5, a5, 0, 8
	.loc 1 49 0
	l32r	a11, .LC3
	.loc 1 48 0
	mov.n	a2, a10
.LVL4:
	.loc 1 49 0
	mov.n	a12, a5
	mov.n	a10, sp
	call8	btc_config_set_int
.LVL5:
	.loc 1 50 0
	l32r	a11, .LC5
	and	a10, a2, a10
	movi.n	a13, 0x10
	mov.n	a12, a3
	extui	a2, a10, 0, 8
.LVL6:
	mov.n	a10, sp
	call8	btc_config_set_bin
.LVL7:
	and	a2, a10, a2
.LVL8:
	.loc 1 52 0
	call8	btc_config_flush
.LVL9:
	.loc 1 53 0
	call8	btc_config_unlock
.LVL10:
	.loc 1 57 0
	movi.n	a8, 1
	xor	a2, a2, a8
.LVL11:
	retw.n
.LFE44:
	.size	btc_storage_add_bonded_device, .-btc_storage_add_bonded_device
	.section	.rodata.str1.1
.LC8:
	.string	"DevClass"
.LC11:
	.string	"BT_BTC"
.LC13:
	.string	"\033[0;31mE (%d) %s: bounded device:%s, LinkKeyType or PinLength is invalid\n\033[0m\n"
	.section	.text.btc_storage_load_bonded_devices,"ax",@progbits
	.literal_position
	.literal .LC6, .LC4
	.literal .LC7, .LC0
	.literal .LC9, .LC8
	.literal .LC10, .LC2
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	btc_storage_load_bonded_devices
	.type	btc_storage_load_bonded_devices, @function
btc_storage_load_bonded_devices:
.LFB46:
	.loc 1 129 0
	entry	sp, 96
.LCFI1:
.LVL12:
.LBB14:
.LBB15:
	.loc 1 73 0
	call8	btc_config_lock
.LVL13:
.LBB16:
	.loc 1 74 0
	call8	btc_config_section_begin
.LVL14:
	mov.n	a3, a10
.LVL15:
.LBB17:
	.loc 1 82 0
	movi.n	a4, 0x10
	j	.L3
.LVL16:
.L10:
	.loc 1 75 0
	mov.n	a10, a3
	call8	btc_config_section_name
.LVL17:
	mov.n	a2, a10
.LVL18:
	.loc 1 76 0
	call8	string_is_bdaddr
.LVL19:
	beqz.n	a10, .L5
	.loc 1 83 0
	l32r	a11, .LC6
	addi	a13, sp, 52
	addi	a12, sp, 16
	mov.n	a10, a2
	.loc 1 82 0
	s32i.n	a4, sp, 52
	.loc 1 83 0
	call8	btc_config_get_bin
.LVL20:
	beqz.n	a10, .L5
.LBB18:
	.loc 1 85 0
	l32r	a11, .LC7
	addi	a12, sp, 48
	mov.n	a10, a2
	call8	btc_config_get_int
.LVL21:
	beqz.n	a10, .L7
.LBB19:
	.loc 1 87 0
	addi	a11, sp, 32
	mov.n	a10, a2
	call8	string_to_bdaddr
.LVL22:
.LBB20:
	.loc 1 89 0
	movi.n	a8, 0
	.loc 1 92 0
	l32r	a11, .LC9
	.loc 1 89 0
	s8i	a8, sp, 56
	s8i	a8, sp, 57
	s8i	a8, sp, 58
	.loc 1 92 0
	addi	a12, sp, 44
	.loc 1 91 0
	movi.n	a8, 0
	.loc 1 92 0
	mov.n	a10, a2
	.loc 1 91 0
	s32i.n	a8, sp, 40
	.loc 1 92 0
	call8	btc_config_get_int
.LVL23:
	beqz.n	a10, .L8
	.loc 1 93 0
	l32i.n	a10, sp, 44
	addi	a11, sp, 56
	call8	uint2devclass
.LVL24:
.L8:
	.loc 1 95 0
	l32r	a11, .LC10
	addi	a12, sp, 40
	mov.n	a10, a2
	call8	btc_config_get_int
.LVL25:
	.loc 1 97 0
	l8ui	a2, sp, 40
.LVL26:
	movi.n	a13, 0
	l8ui	a15, sp, 48
	s32i.n	a2, sp, 4
	s32i.n	a13, sp, 0
	mov.n	a14, a13
	addi	a12, sp, 16
	addi	a11, sp, 56
	addi	a10, sp, 32
	call8	BTA_DmAddDevice
.LVL27:
	j	.L5
.LVL28:
.L7:
.LBE20:
.LBE19:
	.loc 1 103 0
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC12
	l32r	a12, .LC14
	mov.n	a13, a10
	mov.n	a15, a2
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
.L5:
.LBE18:
.LBE17:
	.loc 1 74 0
	mov.n	a10, a3
	call8	btc_config_section_next
.LVL31:
	mov.n	a3, a10
.LVL32:
.L3:
	call8	btc_config_section_end
.LVL33:
	bne	a3, a10, .L10
.LBE16:
	.loc 1 110 0
	call8	btc_config_unlock
.LVL34:
.LBE15:
.LBE14:
	.loc 1 134 0
	movi.n	a2, 0
	retw.n
.LFE46:
	.size	btc_storage_load_bonded_devices, .-btc_storage_load_bonded_devices
	.section	.text.btc_storage_remove_bonded_device,"ax",@progbits
	.literal_position
	.literal .LC15, .LC0
	.literal .LC16, .LC2
	.literal .LC17, .LC4
	.align	4
	.global	btc_storage_remove_bonded_device
	.type	btc_storage_remove_bonded_device, @function
btc_storage_remove_bonded_device:
.LFB47:
	.loc 1 147 0
.LVL35:
	entry	sp, 64
.LCFI2:
	.loc 1 149 0
	movi.n	a12, 0x12
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bdaddr_to_string
.LVL36:
	.loc 1 153 0
	call8	btc_config_lock
.LVL37:
	.loc 1 154 0
	l32r	a3, .LC15
	mov.n	a10, sp
	mov.n	a11, a3
	call8	btc_config_exist
.LVL38:
	.loc 1 150 0
	movi.n	a2, 1
.LVL39:
	.loc 1 154 0
	beqz.n	a10, .L18
	.loc 1 155 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	btc_config_remove
.LVL40:
	mov.n	a2, a10
.LVL41:
.L18:
	.loc 1 157 0
	l32r	a3, .LC16
	mov.n	a10, sp
	mov.n	a11, a3
	call8	btc_config_exist
.LVL42:
	beqz.n	a10, .L19
	.loc 1 158 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	btc_config_remove
.LVL43:
	and	a2, a2, a10
.LVL44:
.L19:
	.loc 1 160 0
	l32r	a3, .LC17
	mov.n	a10, sp
	mov.n	a11, a3
	call8	btc_config_exist
.LVL45:
	beqz.n	a10, .L20
	.loc 1 161 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	btc_config_remove
.LVL46:
	and	a2, a2, a10
.LVL47:
.L20:
	.loc 1 164 0
	call8	btc_config_flush
.LVL48:
	.loc 1 168 0
	movi.n	a3, 1
	.loc 1 165 0
	call8	btc_config_unlock
.LVL49:
	.loc 1 168 0
	xor	a2, a2, a3
.LVL50:
	retw.n
.LFE47:
	.size	btc_storage_remove_bonded_device, .-btc_storage_remove_bonded_device
	.section	.text.btc_storage_get_num_bt_bond_devices,"ax",@progbits
	.literal_position
	.literal .LC18, .LC0
	.literal .LC19, .LC2
	.literal .LC20, .LC4
	.align	4
	.global	btc_storage_get_num_bt_bond_devices
	.type	btc_storage_get_num_bt_bond_devices, @function
btc_storage_get_num_bt_bond_devices:
.LFB48:
	.loc 1 180 0
	entry	sp, 32
.LCFI3:
.LVL51:
	.loc 1 183 0
	call8	btc_config_lock
.LVL52:
.LBB21:
	.loc 1 184 0
	call8	btc_config_section_begin
.LVL53:
	mov.n	a3, a10
.LVL54:
.LBE21:
	.loc 1 181 0
	movi.n	a2, 0
.LBB23:
	.loc 1 184 0
	j	.L30
.LVL55:
.L32:
.LBB22:
	.loc 1 186 0
	mov.n	a10, a3
	call8	btc_config_section_name
.LVL56:
	mov.n	a4, a10
.LVL57:
	.loc 1 187 0
	call8	string_is_bdaddr
.LVL58:
	beqz.n	a10, .L31
	.loc 1 188 0 discriminator 1
	l32r	a11, .LC18
	mov.n	a10, a4
	call8	btc_config_exist
.LVL59:
	.loc 1 187 0 discriminator 1
	beqz.n	a10, .L31
	.loc 1 189 0
	l32r	a11, .LC19
	mov.n	a10, a4
	call8	btc_config_exist
.LVL60:
	.loc 1 188 0
	beqz.n	a10, .L31
	.loc 1 190 0
	l32r	a11, .LC20
	mov.n	a10, a4
	call8	btc_config_exist
.LVL61:
	.loc 1 191 0
	movi.n	a4, 0
.LVL62:
	movi.n	a8, 1
	movnez	a4, a8, a10
	add.n	a2, a2, a4
.LVL63:
.L31:
.LBE22:
	.loc 1 185 0
	mov.n	a10, a3
	call8	btc_config_section_next
.LVL64:
	mov.n	a3, a10
.LVL65:
.L30:
	.loc 1 184 0 discriminator 1
	call8	btc_config_section_end
.LVL66:
	bne	a3, a10, .L32
.LBE23:
	.loc 1 194 0
	call8	btc_config_unlock
.LVL67:
	.loc 1 197 0
	retw.n
.LFE48:
	.size	btc_storage_get_num_bt_bond_devices, .-btc_storage_get_num_bt_bond_devices
	.section	.text.btc_storage_get_bonded_bt_devices_list,"ax",@progbits
	.literal_position
	.literal .LC21, .LC0
	.literal .LC22, .LC2
	.literal .LC23, .LC4
	.align	4
	.global	btc_storage_get_bonded_bt_devices_list
	.type	btc_storage_get_bonded_bt_devices_list, @function
btc_storage_get_bonded_bt_devices_list:
.LFB49:
	.loc 1 210 0
.LVL68:
	entry	sp, 48
.LCFI4:
	.loc 1 213 0
	call8	btc_config_lock
.LVL69:
.LBB24:
	.loc 1 214 0
	call8	btc_config_section_begin
.LVL70:
	mov.n	a5, a10
.LVL71:
	j	.L45
.L48:
.LVL72:
.LBB25:
	.loc 1 217 0
	blti	a3, 1, .L46
	.loc 1 221 0
	mov.n	a10, a5
	call8	btc_config_section_name
.LVL73:
	mov.n	a4, a10
.LVL74:
	.loc 1 223 0
	call8	string_is_bdaddr
.LVL75:
	beqz.n	a10, .L47
	.loc 1 224 0 discriminator 1
	l32r	a11, .LC21
	mov.n	a10, a4
	call8	btc_config_exist
.LVL76:
	.loc 1 223 0 discriminator 1
	beqz.n	a10, .L47
	.loc 1 225 0
	l32r	a11, .LC22
	mov.n	a10, a4
	call8	btc_config_exist
.LVL77:
	.loc 1 224 0
	beqz.n	a10, .L47
	.loc 1 226 0
	l32r	a11, .LC23
	mov.n	a10, a4
	call8	btc_config_exist
.LVL78:
	.loc 1 225 0
	beqz.n	a10, .L47
	.loc 1 227 0
	mov.n	a11, sp
	mov.n	a10, a4
	call8	string_to_bdaddr
.LVL79:
	.loc 1 228 0
	mov.n	a10, a2
	movi.n	a12, 6
	mov.n	a11, sp
	call8	memcpy
.LVL80:
	.loc 1 229 0
	addi.n	a2, a2, 6
.LVL81:
.L47:
.LBE25:
	.loc 1 215 0
	mov.n	a10, a5
	call8	btc_config_section_next
.LVL82:
	mov.n	a5, a10
.LVL83:
	addi.n	a3, a3, -1
.LVL84:
.L45:
	.loc 1 214 0 discriminator 1
	call8	btc_config_section_end
.LVL85:
	bne	a5, a10, .L48
.LVL86:
.L46:
.LBE24:
	.loc 1 232 0
	call8	btc_config_unlock
.LVL87:
	.loc 1 235 0
	movi.n	a2, 0
.LVL88:
	retw.n
.LFE49:
	.size	btc_storage_get_bonded_bt_devices_list, .-btc_storage_get_bonded_bt_devices_list
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI0-.LFB44
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI2-.LFB47
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI3-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI4-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/include/bt_common.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_util.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/include/btc/btc_config.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/bdaddr.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb0d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x5
	.byte	0x1f
	.4byte	0xec
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x93
	.4byte	0x16b
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0xa7
	.4byte	0xec
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1a
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x1c
	.4byte	0xb0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x22
	.4byte	0x197
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF45
	.uleb128 0x9
	.4byte	0x176
	.4byte	0x1ae
	.uleb128 0xa
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x176
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x137
	.4byte	0x1c0
	.uleb128 0x9
	.4byte	0x176
	.4byte	0x1d0
	.uleb128 0xa
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x147
	.4byte	0x1dc
	.uleb128 0x9
	.4byte	0x176
	.4byte	0x1ec
	.uleb128 0xa
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x6
	.byte	0x8
	.byte	0x3b
	.4byte	0x201
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x8
	.byte	0x3c
	.4byte	0x201
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xa5
	.4byte	0x211
	.uleb128 0xa
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3d
	.4byte	0x1ec
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x1f
	.4byte	0x227
	.uleb128 0x9
	.4byte	0x93
	.4byte	0x237
	.uleb128 0xa
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x17
	.4byte	0x242
	.uleb128 0xe
	.4byte	.LASF50
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x1
	.byte	0x45
	.4byte	0x16b
	.byte	0x1
	.4byte	0x2db
	.uleb128 0x10
	.string	"add"
	.byte	0x1
	.byte	0x45
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x47
	.4byte	0x18c
	.uleb128 0x12
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4a
	.4byte	0x2db
	.uleb128 0x12
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4b
	.4byte	0x9a
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x51
	.4byte	0x1b4
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x52
	.4byte	0x2c
	.uleb128 0x12
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.uleb128 0x12
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.byte	0x56
	.4byte	0x211
	.uleb128 0x12
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x59
	.4byte	0x1d0
	.uleb128 0x13
	.string	"cod"
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2e1
	.uleb128 0x6
	.4byte	0x237
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x25
	.4byte	0x16b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fb
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x25
	.4byte	0x3fb
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.byte	0x26
	.4byte	0x1ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0x27
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x28
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2a
	.4byte	0x21c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0xa2a
	.4byte	0x371
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xa35
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0xa40
	.4byte	0x39d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0xa40
	.4byte	0x3c0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0xa4b
	.4byte	0x3e8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0xa56
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0xa61
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x211
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x80
	.4byte	0x16b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x664
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x82
	.4byte	0x16b
	.uleb128 0x1c
	.4byte	0x247
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x83
	.uleb128 0x1d
	.4byte	0x257
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1f
	.4byte	0x262
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x64f
	.uleb128 0x21
	.4byte	0x26e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x628
	.uleb128 0x1f
	.4byte	0x27a
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	0x285
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.4byte	0x290
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x5d9
	.uleb128 0x21
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x57c
	.uleb128 0x21
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x565
	.uleb128 0x21
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.4byte	0x2bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0xa6c
	.4byte	0x4f9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0xa77
	.4byte	0x50d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0xa6c
	.4byte	0x530
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xa82
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0xa8e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0xa6c
	.4byte	0x59f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0xa99
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0xaa4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xaaf
	.4byte	0x5ed
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0xaba
	.4byte	0x601
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0xac5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0xad0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xadb
	.4byte	0x645
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0xae6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0xa35
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0xa61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x92
	.4byte	0x16b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x780
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x92
	.4byte	0x3fb
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x94
	.4byte	0x21c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x96
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xa2a
	.4byte	0x6c8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0xa35
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0xaf1
	.4byte	0x6eb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0xafc
	.4byte	0x705
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0xaf1
	.4byte	0x71f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0xafc
	.4byte	0x739
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0xaf1
	.4byte	0x753
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL46
	.4byte	0xafc
	.4byte	0x76d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0xa56
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0xa61
	.byte	0
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x890
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0xb5
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0x87d
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0xb8
	.4byte	0x2db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x856
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0xba
	.4byte	0x9a
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0xaaf
	.4byte	0x7ee
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xaba
	.4byte	0x802
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xaf1
	.4byte	0x81f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0xaf1
	.4byte	0x83c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0xaf1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0xad0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0xadb
	.4byte	0x873
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0xae6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL52
	.4byte	0xa35
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0xa61
	.byte	0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0xd1
	.4byte	0x16b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fa
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xd1
	.4byte	0x3fb
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0xd3
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x9e7
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd6
	.4byte	0x2db
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x9c0
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0xdd
	.4byte	0x9a
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0xaaf
	.4byte	0x91f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0xaba
	.4byte	0x933
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0xaf1
	.4byte	0x950
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0xaf1
	.4byte	0x96d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0xaf1
	.4byte	0x98a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x19
	.4byte	.LVL79
	.4byte	0xa8e
	.4byte	0x9a4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL80
	.4byte	0xb07
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0xad0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0xadb
	.4byte	0x9dd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0xae6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0xa35
	.uleb128 0x1b
	.4byte	.LVL87
	.4byte	0xa61
	.byte	0
	.uleb128 0x25
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x2b8
	.4byte	0xa0d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x6
	.4byte	0x19e
	.uleb128 0x25
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x2b9
	.4byte	0xa25
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x19e
	.uleb128 0x26
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x32
	.uleb128 0x26
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0x37
	.uleb128 0x26
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xa
	.byte	0x20
	.uleb128 0x26
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x24
	.uleb128 0x26
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2f
	.uleb128 0x26
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.byte	0x38
	.uleb128 0x26
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xa
	.byte	0x1f
	.uleb128 0x26
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x2a
	.uleb128 0x27
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xc
	.2byte	0x694
	.uleb128 0x26
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xb
	.byte	0x3a
	.uleb128 0x26
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x5
	.byte	0x57
	.uleb128 0x26
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.byte	0x6b
	.uleb128 0x26
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xa
	.byte	0x2d
	.uleb128 0x26
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xb
	.byte	0x35
	.uleb128 0x26
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xa
	.byte	0x23
	.uleb128 0x26
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x2a
	.uleb128 0x26
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.byte	0x2c
	.uleb128 0x26
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x2b
	.uleb128 0x26
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xa
	.byte	0x1e
	.uleb128 0x26
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xa
	.byte	0x25
	.uleb128 0x28
	.4byte	.LASF99
	.4byte	.LASF99
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE44
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x27
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE47
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL68
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"btc_in_fetch_bonded_devices"
.LASF71:
	.string	"dev_num"
.LASF57:
	.string	"bd_addr"
.LASF95:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/btc/core/btc_storage.c"
.LASF33:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF2:
	.string	"signed char"
.LASF79:
	.string	"btc_config_unlock"
.LASF3:
	.string	"size_t"
.LASF78:
	.string	"btc_config_flush"
.LASF29:
	.string	"BT_STATUS_PARM_INVALID"
.LASF11:
	.string	"sizetype"
.LASF49:
	.string	"bdstr_t"
.LASF39:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF27:
	.string	"BT_STATUS_DONE"
.LASF43:
	.string	"UINT32"
.LASF8:
	.string	"long long int"
.LASF99:
	.string	"memcpy"
.LASF6:
	.string	"short int"
.LASF51:
	.string	"bt_linkkey_file_found"
.LASF58:
	.string	"dev_class"
.LASF37:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF26:
	.string	"BT_STATUS_BUSY"
.LASF14:
	.string	"uint8_t"
.LASF86:
	.string	"btc_config_section_name"
.LASF66:
	.string	"btc_storage_remove_bonded_device"
.LASF15:
	.string	"uint32_t"
.LASF56:
	.string	"linkkey_type"
.LASF68:
	.string	"num_dev"
.LASF92:
	.string	"btc_config_exist"
.LASF52:
	.string	"iter"
.LASF30:
	.string	"BT_STATUS_UNHANDLED"
.LASF25:
	.string	"BT_STATUS_NOMEM"
.LASF32:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF36:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF60:
	.string	"remote_bd_addr"
.LASF9:
	.string	"long long unsigned int"
.LASF81:
	.string	"uint2devclass"
.LASF44:
	.string	"BOOLEAN"
.LASF88:
	.string	"btc_config_get_bin"
.LASF46:
	.string	"LINK_KEY"
.LASF77:
	.string	"btc_config_set_bin"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF42:
	.string	"UINT8"
.LASF4:
	.string	"__uint8_t"
.LASF31:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF62:
	.string	"bdstr"
.LASF53:
	.string	"name"
.LASF24:
	.string	"BT_STATUS_NOT_READY"
.LASF89:
	.string	"btc_config_section_begin"
.LASF5:
	.string	"unsigned char"
.LASF41:
	.string	"bt_status_t"
.LASF93:
	.string	"btc_config_remove"
.LASF97:
	.string	"address"
.LASF59:
	.string	"pin_length"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF73:
	.string	"bd_addr_null"
.LASF48:
	.string	"bt_bdaddr_t"
.LASF28:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF61:
	.string	"key_type"
.LASF35:
	.string	"BT_STATUS_PENDING"
.LASF65:
	.string	"status"
.LASF1:
	.string	"short unsigned int"
.LASF96:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF63:
	.string	"btc_storage_add_bonded_device"
.LASF13:
	.string	"char"
.LASF75:
	.string	"btc_config_lock"
.LASF10:
	.string	"long int"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF45:
	.string	"_Bool"
.LASF54:
	.string	"link_key"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF40:
	.string	"BT_STATUS_EIR_TOO_LARGE"
.LASF64:
	.string	"btc_storage_load_bonded_devices"
.LASF12:
	.string	"long unsigned int"
.LASF91:
	.string	"btc_config_section_end"
.LASF90:
	.string	"btc_config_section_next"
.LASF7:
	.string	"__uint32_t"
.LASF55:
	.string	"size"
.LASF34:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF82:
	.string	"BTA_DmAddDevice"
.LASF23:
	.string	"BT_STATUS_FAIL"
.LASF94:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"BT_STATUS_SUCCESS"
.LASF84:
	.string	"esp_log_timestamp"
.LASF87:
	.string	"string_is_bdaddr"
.LASF70:
	.string	"bond_dev"
.LASF72:
	.string	"bd_addr_any"
.LASF38:
	.string	"BT_STATUS_TIMEOUT"
.LASF83:
	.string	"string_to_bdaddr"
.LASF50:
	.string	"btc_config_section_iter_t"
.LASF80:
	.string	"btc_config_get_int"
.LASF76:
	.string	"btc_config_set_int"
.LASF85:
	.string	"esp_log_write"
.LASF47:
	.string	"DEV_CLASS"
.LASF67:
	.string	"btc_storage_get_num_bt_bond_devices"
.LASF74:
	.string	"bdaddr_to_string"
.LASF69:
	.string	"btc_storage_get_bonded_bt_devices_list"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
