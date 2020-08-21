	.file	"esp_efuse_api.c"
	.text
.Ltext0:
	.section	.text.esp_efuse_read_field_blob,"ax",@progbits
	.literal_position
	.literal .LC0, s_efuse_lock
	.literal .LC1, esp_efuse_utility_fill_buff
	.align	4
	.global	esp_efuse_read_field_blob
	.type	esp_efuse_read_field_blob, @function
esp_efuse_read_field_blob:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_api.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 39 0
	l32r	a6, .LC0
	mov.n	a10, a6
	call8	_lock_acquire
.LVL1:
	.loc 1 41 0
	movi.n	a8, 0
	movi.n	a9, 1
	mov.n	a5, a8
	moveqz	a5, a9, a3
	moveqz	a8, a9, a4
	or	a5, a5, a8
	bnez.n	a5, .L3
	moveqz	a5, a9, a2
	bnez.n	a5, .L3
	.loc 1 44 0
	movi.n	a11, 8
	mov.n	a10, a4
	call8	esp_efuse_utility_get_number_of_items
.LVL2:
	mov.n	a12, a10
	mov.n	a11, a5
	mov.n	a10, a3
	call8	memset
.LVL3:
	.loc 1 45 0
	l32r	a13, .LC1
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a11, a3
	call8	esp_efuse_utility_process
.LVL4:
	mov.n	a2, a10
.LVL5:
	j	.L2
.LVL6:
.L3:
	.loc 1 42 0
	movi	a2, 0x102
.LVL7:
.L2:
	.loc 1 47 0
	mov.n	a10, a6
	call8	_lock_release
.LVL8:
	.loc 1 49 0
	retw.n
.LFE0:
	.size	esp_efuse_read_field_blob, .-esp_efuse_read_field_blob
	.section	.text.esp_efuse_read_field_cnt,"ax",@progbits
	.literal_position
	.literal .LC2, s_efuse_lock
	.literal .LC3, esp_efuse_utility_count_once
	.align	4
	.global	esp_efuse_read_field_cnt
	.type	esp_efuse_read_field_cnt, @function
esp_efuse_read_field_cnt:
.LFB1:
	.loc 1 53 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 54 0
	l32r	a4, .LC2
	mov.n	a10, a4
	call8	_lock_acquire
.LVL10:
	.loc 1 56 0
	movi.n	a8, 1
	movi.n	a12, 0
	moveqz	a12, a8, a2
	extui	a12, a12, 0, 8
	bnez.n	a12, .L6
	moveqz	a12, a8, a3
	bnez.n	a12, .L6
	.loc 1 60 0
	l32r	a13, .LC3
	mov.n	a10, a2
	.loc 1 59 0
	s32i.n	a12, a3, 0
	.loc 1 60 0
	mov.n	a11, a3
	call8	esp_efuse_utility_process
.LVL11:
	mov.n	a2, a10
.LVL12:
	j	.L5
.LVL13:
.L6:
	.loc 1 57 0
	movi	a2, 0x102
.LVL14:
.L5:
	.loc 1 62 0
	mov.n	a10, a4
	call8	_lock_release
.LVL15:
	.loc 1 64 0
	retw.n
.LFE1:
	.size	esp_efuse_read_field_cnt, .-esp_efuse_read_field_cnt
	.section	.text.esp_efuse_write_field_blob,"ax",@progbits
	.literal_position
	.literal .LC4, s_efuse_lock
	.literal .LC5, esp_efuse_utility_write_blob
	.align	4
	.global	esp_efuse_write_field_blob
	.type	esp_efuse_write_field_blob, @function
esp_efuse_write_field_blob:
.LFB2:
	.loc 1 68 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 69 0
	l32r	a5, .LC4
	mov.n	a10, a5
	call8	_lock_acquire
.LVL17:
	.loc 1 71 0
	movi.n	a9, 0
	movi.n	a10, 1
	mov.n	a8, a9
	moveqz	a8, a10, a3
	moveqz	a9, a10, a4
	or	a8, a8, a9
	bnez.n	a8, .L10
	moveqz	a8, a10, a2
	bnez.n	a8, .L10
	.loc 1 74 0
	call8	esp_efuse_utility_reset
.LVL18:
	.loc 1 75 0
	l32r	a13, .LC5
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a11, a3
	call8	esp_efuse_utility_process
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 77 0
	bnez.n	a10, .L9
	.loc 1 78 0
	call8	esp_efuse_utility_apply_new_coding_scheme
.LVL21:
	mov.n	a2, a10
.LVL22:
	.loc 1 79 0
	bnez.n	a10, .L9
	.loc 1 80 0
	call8	esp_efuse_utility_burn_efuses
.LVL23:
.L9:
	.loc 1 83 0
	call8	esp_efuse_utility_reset
.LVL24:
	j	.L8
.LVL25:
.L10:
	.loc 1 72 0
	movi	a2, 0x102
.LVL26:
.L8:
	.loc 1 85 0
	mov.n	a10, a5
	call8	_lock_release
.LVL27:
	.loc 1 87 0
	retw.n
.LFE2:
	.size	esp_efuse_write_field_blob, .-esp_efuse_write_field_blob
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"efuse"
.LC11:
	.string	"\033[0;31mE (%d) %s: The required number of bits can not be set. [Not set %d]\033[0m\n"
	.section	.text.esp_efuse_write_field_cnt,"ax",@progbits
	.literal_position
	.literal .LC6, 5634
	.literal .LC7, s_efuse_lock
	.literal .LC8, esp_efuse_utility_write_cnt
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, -5633
	.align	4
	.global	esp_efuse_write_field_cnt
	.type	esp_efuse_write_field_cnt, @function
esp_efuse_write_field_cnt:
.LFB3:
	.loc 1 91 0
.LVL28:
	entry	sp, 48
.LCFI3:
	.loc 1 91 0
	s32i.n	a3, sp, 0
	.loc 1 92 0
	l32r	a3, .LC7
.LVL29:
	.loc 1 94 0
	movi.n	a5, 1
	.loc 1 92 0
	mov.n	a10, a3
	call8	_lock_acquire
.LVL30:
	.loc 1 94 0
	l32i.n	a4, sp, 0
	movi.n	a12, 0
	moveqz	a12, a5, a4
	extui	a4, a12, 0, 8
	bnez.n	a4, .L16
	moveqz	a4, a5, a2
	bnez.n	a4, .L16
	.loc 1 97 0
	call8	esp_efuse_utility_reset
.LVL31:
	.loc 1 98 0
	l32r	a13, .LC8
	mov.n	a12, a4
	mov.n	a10, a2
	mov.n	a11, sp
.LVL32:
	call8	esp_efuse_utility_process
.LVL33:
	.loc 1 100 0
	l32i.n	a4, sp, 0
	.loc 1 98 0
	mov.n	a2, a10
.LVL34:
	.loc 1 100 0
	beqz.n	a4, .L13
	.loc 1 101 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC10
	l32i.n	a15, sp, 0
	l32r	a12, .LC12
	mov.n	a13, a10
	mov.n	a14, a11
	mov.n	a10, a5
	call8	esp_log_write
.LVL36:
	.loc 1 102 0 discriminator 2
	l32r	a2, .LC6
.LVL37:
.L13:
	.loc 1 105 0
	l32r	a9, .LC13
	movi.n	a4, 1
	add.n	a9, a2, a9
	movi.n	a8, 0
	moveqz	a8, a4, a9
	extui	a8, a8, 0, 8
	bnez.n	a8, .L17
	moveqz	a8, a4, a2
	beqz.n	a8, .L14
.L17:
	.loc 1 106 0
	call8	esp_efuse_utility_apply_new_coding_scheme
.LVL38:
	mov.n	a2, a10
.LVL39:
	.loc 1 107 0
	bnez.n	a10, .L14
	.loc 1 108 0
	call8	esp_efuse_utility_burn_efuses
.LVL40:
.L14:
	.loc 1 111 0
	call8	esp_efuse_utility_reset
.LVL41:
	j	.L12
.LVL42:
.L16:
	.loc 1 95 0
	movi	a2, 0x102
.LVL43:
.L12:
	.loc 1 113 0
	mov.n	a10, a3
	call8	_lock_release
.LVL44:
	.loc 1 115 0
	retw.n
.LFE3:
	.size	esp_efuse_write_field_cnt, .-esp_efuse_write_field_cnt
	.section	.text.esp_efuse_set_write_protect,"ax",@progbits
	.literal_position
	.literal .LC14, ESP_EFUSE_WR_DIS_BLK1
	.literal .LC15, ESP_EFUSE_WR_DIS_BLK2
	.literal .LC16, ESP_EFUSE_WR_DIS_BLK3
	.align	4
	.global	esp_efuse_set_write_protect
	.type	esp_efuse_set_write_protect, @function
esp_efuse_set_write_protect:
.LFB4:
	.loc 1 119 0
.LVL45:
	entry	sp, 32
.LCFI4:
	.loc 1 119 0
	mov.n	a11, a2
	.loc 1 121 0
	l32r	a10, .LC14
	.loc 1 120 0
	beqi	a2, 1, .L29
.L25:
	.loc 1 122 0
	bnei	a2, 2, .L27
	.loc 1 123 0
	movi.n	a11, 1
	l32r	a10, .LC15
	j	.L29
.L27:
	.loc 1 127 0
	movi	a10, 0x106
	.loc 1 124 0
	bnei	a2, 3, .L26
	.loc 1 125 0
	l32r	a10, .LC16
	movi.n	a11, 1
.L29:
	call8	esp_efuse_write_field_cnt
.LVL46:
.L26:
	.loc 1 128 0
	mov.n	a2, a10
.LVL47:
	retw.n
.LFE4:
	.size	esp_efuse_set_write_protect, .-esp_efuse_set_write_protect
	.section	.text.esp_efuse_set_read_protect,"ax",@progbits
	.literal_position
	.literal .LC17, ESP_EFUSE_RD_DIS_BLK1
	.literal .LC18, ESP_EFUSE_RD_DIS_BLK2
	.literal .LC19, ESP_EFUSE_RD_DIS_BLK3
	.align	4
	.global	esp_efuse_set_read_protect
	.type	esp_efuse_set_read_protect, @function
esp_efuse_set_read_protect:
.LFB5:
	.loc 1 132 0
.LVL48:
	entry	sp, 32
.LCFI5:
	.loc 1 132 0
	mov.n	a11, a2
	.loc 1 134 0
	l32r	a10, .LC17
	.loc 1 133 0
	beqi	a2, 1, .L35
.L31:
	.loc 1 135 0
	bnei	a2, 2, .L33
	.loc 1 136 0
	movi.n	a11, 1
	l32r	a10, .LC18
	j	.L35
.L33:
	.loc 1 140 0
	movi	a10, 0x106
	.loc 1 137 0
	bnei	a2, 3, .L32
	.loc 1 138 0
	l32r	a10, .LC19
	movi.n	a11, 1
.L35:
	call8	esp_efuse_write_field_cnt
.LVL49:
.L32:
	.loc 1 141 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE5:
	.size	esp_efuse_set_read_protect, .-esp_efuse_set_read_protect
	.section	.text.esp_efuse_get_field_size,"ax",@progbits
	.literal_position
	.align	4
	.global	esp_efuse_get_field_size
	.type	esp_efuse_get_field_size, @function
esp_efuse_get_field_size:
.LFB6:
	.loc 1 145 0
.LVL51:
	entry	sp, 32
.LCFI6:
.LVL52:
	.loc 1 145 0
	mov.n	a8, a2
	.loc 1 147 0
	beqz.n	a2, .L37
	movi.n	a2, 0
.LVL53:
	j	.L38
.LVL54:
.L39:
.LBB2:
	.loc 1 150 0
	l16ui	a9, a9, 2
	add.n	a2, a2, a9
.LVL55:
.L38:
	addi.n	a8, a8, 4
	.loc 1 149 0
	addi	a9, a8, -4
	l32i.n	a9, a9, 0
	bnez.n	a9, .L39
.LVL56:
.L37:
.LBE2:
	.loc 1 155 0
	retw.n
.LFE6:
	.size	esp_efuse_get_field_size, .-esp_efuse_get_field_size
	.section	.text.esp_efuse_read_reg,"ax",@progbits
	.literal_position
	.literal .LC22, s_efuse_lock
	.align	4
	.global	esp_efuse_read_reg
	.type	esp_efuse_read_reg, @function
esp_efuse_read_reg:
.LFB7:
	.loc 1 159 0
.LVL57:
	entry	sp, 32
.LCFI7:
	.loc 1 160 0
	l32r	a4, .LC22
	mov.n	a10, a4
	call8	_lock_acquire
.LVL58:
	.loc 1 161 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_efuse_utility_read_reg
.LVL59:
	mov.n	a2, a10
.LVL60:
	.loc 1 162 0
	mov.n	a10, a4
	call8	_lock_release
.LVL61:
	.loc 1 164 0
	retw.n
.LFE7:
	.size	esp_efuse_read_reg, .-esp_efuse_read_reg
	.section	.text.esp_efuse_write_reg,"ax",@progbits
	.literal_position
	.literal .LC23, s_efuse_lock
	.align	4
	.global	esp_efuse_write_reg
	.type	esp_efuse_write_reg, @function
esp_efuse_write_reg:
.LFB8:
	.loc 1 168 0
.LVL62:
	entry	sp, 32
.LCFI8:
	.loc 1 169 0
	l32r	a5, .LC23
	mov.n	a10, a5
	call8	_lock_acquire
.LVL63:
	.loc 1 170 0
	call8	esp_efuse_utility_reset
.LVL64:
	.loc 1 171 0
	mov.n	a10, a2
	mov.n	a12, a4
	mov.n	a11, a3
	call8	esp_efuse_utility_write_reg
.LVL65:
	mov.n	a2, a10
.LVL66:
	.loc 1 172 0
	bnez.n	a10, .L43
	.loc 1 173 0
	call8	esp_efuse_utility_apply_new_coding_scheme
.LVL67:
	mov.n	a2, a10
.LVL68:
	.loc 1 174 0
	bnez.n	a10, .L43
	.loc 1 175 0
	call8	esp_efuse_utility_burn_efuses
.LVL69:
.L43:
	.loc 1 178 0
	call8	esp_efuse_utility_reset
.LVL70:
	.loc 1 179 0
	mov.n	a10, a5
	call8	_lock_release
.LVL71:
	.loc 1 181 0
	retw.n
.LFE8:
	.size	esp_efuse_write_reg, .-esp_efuse_write_reg
	.section	.text.esp_efuse_get_coding_scheme,"ax",@progbits
	.literal_position
	.literal .LC24, 1073061912
	.align	4
	.global	esp_efuse_get_coding_scheme
	.type	esp_efuse_get_coding_scheme, @function
esp_efuse_get_coding_scheme:
.LFB9:
	.loc 1 185 0
.LVL72:
	entry	sp, 32
.LCFI9:
	.loc 1 188 0
	movi.n	a8, 0
	.loc 1 187 0
	beq	a2, a8, .L45
.LBB3:
.LBB4:
.LBB5:
	.loc 1 190 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE5:
	extui	a8, a8, 0, 2
.LVL73:
.LBE4:
	.loc 1 191 0
	beqz.n	a8, .L47
	beqi	a8, 3, .L47
	.loc 1 197 0
	addi.n	a8, a8, -1
.LVL74:
	movi.n	a9, 2
	movi.n	a10, 1
	moveqz	a9, a10, a8
	mov.n	a8, a9
.LVL75:
	j	.L45
.LVL76:
.L47:
.LBE3:
	.loc 1 188 0
	movi.n	a8, 0
.LVL77:
.L45:
	.loc 1 202 0
	mov.n	a2, a8
.LVL78:
	retw.n
.LFE9:
	.size	esp_efuse_get_coding_scheme, .-esp_efuse_get_coding_scheme
	.section	.text.esp_efuse_read_block,"ax",@progbits
	.align	4
	.global	esp_efuse_read_block
	.type	esp_efuse_read_block, @function
esp_efuse_read_block:
.LFB10:
	.loc 1 206 0
.LVL79:
	entry	sp, 48
.LCFI10:
.LVL80:
	.loc 1 208 0
	addi.n	a8, a2, -1
	.loc 1 206 0
	mov.n	a11, a3
	mov.n	a12, a5
	.loc 1 209 0
	movi	a10, 0x102
	.loc 1 208 0
	bgeui	a8, 3, .L51
	.loc 1 208 0 discriminator 1
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a3
	extui	a8, a8, 0, 8
	bnez.n	a8, .L53
	moveqz	a8, a9, a5
	bnez.n	a8, .L53
.LBB6:
	.loc 1 211 0
	s8i	a2, sp, 8
	.loc 1 219 0
	mov.n	a10, sp
	.loc 1 215 0
	addi.n	a2, sp, 8
.LVL81:
	.loc 1 211 0
	s8i	a4, sp, 9
	s16i	a5, sp, 10
	.loc 1 215 0
	s32i.n	a2, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 219 0
	call8	esp_efuse_read_field_blob
.LVL82:
	j	.L51
.LVL83:
.L53:
.LBE6:
	.loc 1 209 0
	movi	a10, 0x102
.LVL84:
.L51:
	.loc 1 222 0
	mov.n	a2, a10
	retw.n
.LFE10:
	.size	esp_efuse_read_block, .-esp_efuse_read_block
	.section	.text.esp_efuse_write_block,"ax",@progbits
	.align	4
	.global	esp_efuse_write_block
	.type	esp_efuse_write_block, @function
esp_efuse_write_block:
.LFB11:
	.loc 1 226 0
.LVL85:
	entry	sp, 48
.LCFI11:
.LVL86:
	.loc 1 228 0
	addi.n	a8, a2, -1
	.loc 1 226 0
	mov.n	a11, a3
	mov.n	a12, a5
	.loc 1 229 0
	movi	a10, 0x102
	.loc 1 228 0
	bgeui	a8, 3, .L55
	.loc 1 228 0 discriminator 1
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a3
	extui	a8, a8, 0, 8
	bnez.n	a8, .L57
	moveqz	a8, a9, a5
	bnez.n	a8, .L57
.LBB7:
	.loc 1 231 0
	s8i	a2, sp, 8
	.loc 1 239 0
	mov.n	a10, sp
	.loc 1 235 0
	addi.n	a2, sp, 8
.LVL87:
	.loc 1 231 0
	s8i	a4, sp, 9
	s16i	a5, sp, 10
	.loc 1 235 0
	s32i.n	a2, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 239 0
	call8	esp_efuse_write_field_blob
.LVL88:
	j	.L55
.LVL89:
.L57:
.LBE7:
	.loc 1 229 0
	movi	a10, 0x102
.LVL90:
.L55:
	.loc 1 242 0
	mov.n	a2, a10
	retw.n
.LFE11:
	.size	esp_efuse_write_block, .-esp_efuse_write_block
	.section	.bss.s_efuse_lock,"aw",@nobits
	.align	4
	.type	s_efuse_lock, @object
	.size	s_efuse_lock, 4
s_efuse_lock:
	.zero	4
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/dieter/SoftwareDevelop/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/dieter/SoftwareDevelop/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/dieter/SoftwareDevelop/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/include/esp_efuse.h"
	.file 9 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/esp32/include/esp_efuse_table.h"
	.file 10 "/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_utility.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x997
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xb
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.4byte	0xe2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x1f
	.4byte	0x137
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x23
	.4byte	0x15c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x28
	.4byte	0x137
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x2d
	.4byte	0x186
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x31
	.4byte	0x167
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x36
	.4byte	0x1c1
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x8
	.byte	0x37
	.4byte	0x15c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.4byte	0x89
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x39
	.4byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3a
	.4byte	0x191
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x25
	.4byte	0xfb
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x295
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.4byte	0x295
	.4byte	.LLST0
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0x25
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x25
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x28
	.4byte	0xfb
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x918
	.4byte	0x231
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x923
	.4byte	0x24a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x92e
	.4byte	0x264
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x937
	.4byte	0x284
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0x7
	.4byte	0x1c1
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x34
	.4byte	0xfb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33b
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x34
	.4byte	0x295
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x34
	.4byte	0x33b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x37
	.4byte	0xfb
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x918
	.4byte	0x2fe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x937
	.4byte	0x32a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xe
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x43
	.4byte	0xfb
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fb
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x43
	.4byte	0x295
	.4byte	.LLST4
	.uleb128 0x10
	.string	"src"
	.byte	0x1
	.byte	0x43
	.4byte	0xf4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x43
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x46
	.4byte	0xfb
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x918
	.4byte	0x3a6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x94d
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x937
	.4byte	0x3cf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x958
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x963
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x94d
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x5a
	.4byte	0xfb
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e2
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5a
	.4byte	0x295
	.4byte	.LLST6
	.uleb128 0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x5a
	.4byte	0xb5
	.4byte	.LLST7
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0x5d
	.4byte	0xfb
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LVL30
	.4byte	0x918
	.4byte	0x455
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x94d
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x937
	.4byte	0x47e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x96e
	.uleb128 0x13
	.4byte	.LVL36
	.4byte	0x979
	.4byte	0x4b6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x958
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x963
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0x94d
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x76
	.4byte	0xfb
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0x76
	.4byte	0x15c
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0x3fb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x83
	.4byte	0xfb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x546
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0x83
	.4byte	0x15c
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0x3fb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x90
	.4byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x591
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x90
	.4byte	0x295
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x92
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x94
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9e
	.4byte	0xaa
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x612
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0x9e
	.4byte	0x15c
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9e
	.4byte	0x74
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa1
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL58
	.4byte	0x918
	.4byte	0x5e7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL59
	.4byte	0x984
	.4byte	0x601
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa7
	.4byte	0xfb
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0xa7
	.4byte	0x15c
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa7
	.4byte	0x74
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0xa7
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0xab
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL63
	.4byte	0x918
	.4byte	0x675
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL64
	.4byte	0x94d
	.uleb128 0x13
	.4byte	.LVL65
	.4byte	0x98f
	.4byte	0x69e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL67
	.4byte	0x958
	.uleb128 0x16
	.4byte	.LVL69
	.4byte	0x963
	.uleb128 0x16
	.4byte	.LVL70
	.4byte	0x94d
	.uleb128 0x15
	.4byte	.LVL71
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb8
	.4byte	0x186
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0xb8
	.4byte	0x15c
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0xba
	.4byte	0x186
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1d
	.4byte	.LASF88
	.4byte	0x732
	.uleb128 0x19
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbe
	.4byte	0xaa
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xe2
	.4byte	0x732
	.uleb128 0x1f
	.4byte	0xd4
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0x722
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0xcd
	.4byte	0xfb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d8
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0xcd
	.4byte	0x15c
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0xcd
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0xcd
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0xcd
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0xcf
	.4byte	0xfb
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd3
	.4byte	0x7e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd7
	.4byte	0x7ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL82
	.4byte	0x1cc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x1c1
	.4byte	0x7e8
	.uleb128 0x1f
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x7d8
	.uleb128 0x1e
	.4byte	0x29b
	.4byte	0x7fd
	.uleb128 0x1f
	.4byte	0xd4
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe1
	.4byte	0xfb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89e
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0xe1
	.4byte	0x15c
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe1
	.4byte	0xf4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe1
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe1
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0xe3
	.4byte	0xfb
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe7
	.4byte	0x89e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0xeb
	.4byte	0x7ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0x341
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x7d8
	.uleb128 0x1c
	.string	"TAG"
	.byte	0x1
	.byte	0x16
	.4byte	0x8b5
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xe9
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1d
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_efuse_lock
	.uleb128 0x1e
	.4byte	0x29b
	.4byte	0x8d6
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x9
	.byte	0x2b
	.4byte	0x8cb
	.uleb128 0x21
	.4byte	.LASF68
	.byte	0x9
	.byte	0x2c
	.4byte	0x8cb
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x9
	.byte	0x2d
	.4byte	0x8cb
	.uleb128 0x21
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2e
	.4byte	0x8cb
	.uleb128 0x21
	.4byte	.LASF71
	.byte	0x9
	.byte	0x2f
	.4byte	0x8cb
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x9
	.byte	0x30
	.4byte	0x8cb
	.uleb128 0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x5
	.byte	0x20
	.uleb128 0x22
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x5d
	.uleb128 0x23
	.4byte	.LASF89
	.4byte	.LASF89
	.uleb128 0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0x38
	.uleb128 0x22
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.byte	0x24
	.uleb128 0x22
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x6e
	.uleb128 0x22
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xa
	.byte	0x86
	.uleb128 0x22
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.byte	0x58
	.uleb128 0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x7
	.byte	0x6b
	.uleb128 0x22
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xa
	.byte	0x62
	.uleb128 0x22
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0x67
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
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
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL33-1
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xa
	.2byte	0x1602
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"EFUSE_CODING_SCHEME_3_4"
.LASF15:
	.string	"size_t"
.LASF71:
	.string	"ESP_EFUSE_RD_DIS_BLK2"
.LASF57:
	.string	"scheme"
.LASF3:
	.string	"__uint8_t"
.LASF43:
	.string	"esp_efuse_read_field_cnt"
.LASF64:
	.string	"esp_efuse_write_block"
.LASF50:
	.string	"esp_efuse_get_field_size"
.LASF68:
	.string	"ESP_EFUSE_WR_DIS_BLK2"
.LASF69:
	.string	"ESP_EFUSE_WR_DIS_BLK3"
.LASF10:
	.string	"long long unsigned int"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"field"
.LASF82:
	.string	"esp_efuse_utility_read_reg"
.LASF17:
	.string	"long int"
.LASF81:
	.string	"esp_log_write"
.LASF16:
	.string	"_lock_t"
.LASF12:
	.string	"uint16_t"
.LASF63:
	.string	"field_desc"
.LASF77:
	.string	"esp_efuse_utility_reset"
.LASF7:
	.string	"__uint32_t"
.LASF58:
	.string	"coding_scheme"
.LASF52:
	.string	"esp_efuse_read_reg"
.LASF78:
	.string	"esp_efuse_utility_apply_new_coding_scheme"
.LASF55:
	.string	"esp_efuse_write_reg"
.LASF8:
	.string	"unsigned int"
.LASF36:
	.string	"esp_efuse_coding_scheme_t"
.LASF75:
	.string	"esp_efuse_utility_process"
.LASF76:
	.string	"_lock_release"
.LASF19:
	.string	"long unsigned int"
.LASF66:
	.string	"s_efuse_lock"
.LASF79:
	.string	"esp_efuse_utility_burn_efuses"
.LASF47:
	.string	"esp_efuse_write_field_cnt"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"bit_start"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"esp_efuse_read_field_blob"
.LASF46:
	.string	"src_size_bits"
.LASF39:
	.string	"esp_efuse_desc_t"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"sizetype"
.LASF48:
	.string	"esp_efuse_set_write_protect"
.LASF74:
	.string	"esp_efuse_utility_get_number_of_items"
.LASF85:
	.string	"/home/dieter/SoftwareDevelop/esp-idf/components/efuse/src/esp_efuse_api.c"
.LASF62:
	.string	"size_bits"
.LASF32:
	.string	"esp_efuse_block_t"
.LASF67:
	.string	"ESP_EFUSE_WR_DIS_BLK1"
.LASF60:
	.string	"dst_key"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"EFUSE_BLK0"
.LASF29:
	.string	"EFUSE_BLK1"
.LASF30:
	.string	"EFUSE_BLK2"
.LASF31:
	.string	"EFUSE_BLK3"
.LASF33:
	.string	"EFUSE_CODING_SCHEME_NONE"
.LASF2:
	.string	"short int"
.LASF89:
	.string	"memset"
.LASF80:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF54:
	.string	"ret_val"
.LASF88:
	.string	"__func__"
.LASF38:
	.string	"bit_count"
.LASF73:
	.string	"_lock_acquire"
.LASF14:
	.string	"uint32_t"
.LASF41:
	.string	"dst_size_bits"
.LASF51:
	.string	"bits_counter"
.LASF20:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF44:
	.string	"out_cnt"
.LASF4:
	.string	"__uint16_t"
.LASF70:
	.string	"ESP_EFUSE_RD_DIS_BLK1"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF72:
	.string	"ESP_EFUSE_RD_DIS_BLK3"
.LASF61:
	.string	"offset_in_bits"
.LASF6:
	.string	"__int32_t"
.LASF59:
	.string	"esp_efuse_read_block"
.LASF87:
	.string	"efuse_block"
.LASF83:
	.string	"esp_efuse_utility_write_reg"
.LASF86:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/efuse"
.LASF49:
	.string	"esp_efuse_set_read_protect"
.LASF65:
	.string	"src_key"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"esp_err_t"
.LASF11:
	.string	"uint8_t"
.LASF35:
	.string	"EFUSE_CODING_SCHEME_REPEAT"
.LASF53:
	.string	"num_reg"
.LASF45:
	.string	"esp_efuse_write_field_blob"
.LASF56:
	.string	"esp_efuse_get_coding_scheme"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
