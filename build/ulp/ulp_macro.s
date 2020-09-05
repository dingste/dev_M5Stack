	.file	"ulp_macro.c"
	.text
.Ltext0:
	.section	.text.reloc_sort_func,"ax",@progbits
	.align	4
	.type	reloc_sort_func, @function
reloc_sort_func:
.LFB1:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/ulp_macro.c"
	.loc 1 63 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 64 0
	l32i.n	a8, a2, 0
	l16ui	a10, a2, 0
.LVL1:
	.loc 1 65 0
	l32i.n	a9, a3, 0
	l16ui	a11, a3, 0
	.loc 1 64 0
	extui	a8, a8, 28, 4
.LVL2:
	.loc 1 65 0
	extui	a9, a9, 28, 4
.LVL3:
	.loc 1 67 0
	movi.n	a2, -1
.LVL4:
	.loc 1 66 0
	bltu	a10, a11, .L2
	.loc 1 69 0
	movi.n	a2, 1
	.loc 1 68 0
	bltu	a11, a10, .L2
	.loc 1 72 0
	blt	a8, a9, .L6
	.loc 1 67 0
	blt	a9, a8, .L2
	movi.n	a2, 0
	retw.n
.L6:
	movi.n	a2, -1
.L2:
.LVL5:
	.loc 1 80 0
	retw.n
.LFE1:
	.size	reloc_sort_func, .-reloc_sort_func
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"ulp"
.LC11:
	.string	"\033[0;33mW (%d) %s: invalid load address %x, max is %x\033[0m\n"
.LC13:
	.string	"\033[0;31mE (%d) %s: program too big: %d words, max is %d words\033[0m\n"
.LC22:
	.string	"0 && \"invalid sub_opcode for macro insn\""
.LC25:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/ulp_macro.c"
.LC27:
	.string	"read_ptr != end && \"program can not end with macro insn\""
.LC30:
	.string	"label_info.type == RELOC_TYPE_LABEL"
.LC32:
	.string	"\033[0;31mE (%d) %s: duplicate label definition: %d\033[0m\n"
.LC34:
	.string	"\033[0;31mE (%d) %s: branch to an inexistent label: %d\033[0m\n"
.LC37:
	.string	"insn->b.opcode == OPCODE_BRANCH && \"branch macro was applied to a non-branch instruction\""
.LC40:
	.string	"\033[0;33mW (%d) %s: target out of range: branch from %x to %x\033[0m\n"
.LC45:
	.string	"insn->bx.reg == 0 && \"relocation applied to a jump with offset in register\""
.LC48:
	.string	"false && \"unexpected sub-opcode\""
	.section	.text.ulp_process_macros_and_load,"ax",@progbits
	.literal_position
	.literal .LC3, 4611
	.literal .LC4, 4612
	.literal .LC5, 4613
	.literal .LC6, 4610
	.literal .LC7, 4609
	.literal .LC8, -268435456
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, 1342177280
	.literal .LC16, -65536
	.literal .LC17, -251658241
	.literal .LC18, -134152193
	.literal .LC19, -134217729
	.literal .LC20, 268435455
	.literal .LC21, 268435456
	.literal .LC23, .LC22
	.literal .LC24, __func__$3486
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC29, reloc_sort_func
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC36, -2147483648
	.literal .LC38, .LC37
	.literal .LC39, __func__$3452
	.literal .LC41, .LC40
	.literal .LC42, -16646145
	.literal .LC43, -16777217
	.literal .LC44, 2097152
	.literal .LC46, .LC45
	.literal .LC47, -8189
	.literal .LC49, .LC48
	.align	4
	.global	ulp_process_macros_and_load
	.type	ulp_process_macros_and_load, @function
ulp_process_macros_and_load:
.LFB3:
	.loc 1 157 0
.LVL6:
	entry	sp, 80
.LCFI1:
.LVL7:
	.loc 1 159 0
	l32i.n	a8, a4, 0
	.loc 1 157 0
	s32i.n	a4, sp, 28
	.loc 1 159 0
	slli	a12, a8, 2
	.loc 1 160 0
	movi.n	a4, 0
.LVL8:
	.loc 1 159 0
	add.n	a6, a3, a12
.LVL9:
	.loc 1 158 0
	mov.n	a7, a3
.LBB9:
	.loc 1 164 0
	l32r	a9, .LC8
	.loc 1 165 0
	movi.n	a10, 1
	mov.n	a11, a4
.LBE9:
	.loc 1 162 0
	j	.L8
.LVL10:
.L10:
.LBB10:
	.loc 1 163 0
	l32i.n	a5, a7, 0
.LVL11:
	.loc 1 165 0
	mov.n	a13, a11
.LVL12:
	.loc 1 164 0
	and	a5, a5, a9
.LVL13:
	.loc 1 165 0
	sub	a5, a5, a9
	moveqz	a13, a10, a5
	add.n	a4, a4, a13
.LVL14:
	.loc 1 167 0
	addi.n	a7, a7, 4
.LVL15:
.L8:
.LBE10:
	.loc 1 162 0
	bltu	a7, a6, .L10
.LVL16:
	.loc 1 171 0
	movi	a5, 0x80
	bgeu	a5, a2, .L11
	.loc 1 172 0 discriminator 4
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC10
	l32r	a12, .LC12
	mov.n	a15, a2
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL18:
	.loc 1 174 0 discriminator 4
	l32r	a2, .LC6
.LVL19:
	retw.n
.LVL20:
.L11:
	.loc 1 169 0
	sub	a8, a8, a4
.LVL21:
	s32i.n	a8, sp, 16
	.loc 1 176 0
	add.n	a7, a8, a2
.LVL22:
	bgeu	a5, a7, .L13
	.loc 1 177 0 discriminator 2
	call8	esp_log_timestamp
.LVL23:
	l32r	a11, .LC10
	l32i.n	a15, sp, 16
	l32r	a12, .LC14
	mov.n	a13, a10
	s32i.n	a5, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL24:
	.loc 1 179 0 discriminator 2
	l32r	a2, .LC7
.LVL25:
	retw.n
.LVL26:
.L13:
	.loc 1 182 0
	bnez.n	a4, .L14
	.loc 1 183 0
	l32r	a10, .LC15
	mov.n	a11, a3
	addx4	a10, a2, a10
	call8	memcpy
.LVL27:
	.loc 1 184 0
	mov.n	a2, a4
.LVL28:
	retw.n
.LVL29:
.L14:
	.loc 1 187 0
	slli	a5, a4, 2
	.loc 1 186 0
	mov.n	a10, a5
	.loc 1 187 0
	s32i.n	a5, sp, 20
	.loc 1 186 0
	call8	malloc
.LVL30:
	mov.n	a5, a10
.LVL31:
	.loc 1 188 0
	beqz.n	a10, .L41
.LVL32:
	.loc 1 195 0
	l32r	a7, .LC15
	mov.n	a11, a3
	addx4	a8, a2, a7
	s32i.n	a8, sp, 24
.LVL33:
	addi.n	a14, a3, 4
	.loc 1 199 0
	mov.n	a8, a10
.LVL34:
	mov.n	a13, a2
	.loc 1 196 0
	l32i.n	a12, sp, 24
	.loc 1 199 0
	j	.L15
.LVL35:
.L23:
.LBB11:
	.loc 1 200 0
	l32i.n	a15, a11, 0
.LVL36:
	.loc 1 201 0
	l32r	a9, .LC16
.LVL37:
	.loc 1 200 0
	extui	a7, a15, 24, 4
	.loc 1 201 0
	and	a10, a15, a9
	.loc 1 200 0
	l16ui	a3, a11, 0
.LVL38:
	.loc 1 201 0
	slli	a9, a7, 24
	s32i.n	a9, sp, 36
	l32r	a9, .LC17
	or	a10, a10, a3
	and	a10, a10, a9
	l32i.n	a9, sp, 36
	or	a10, a10, a9
	l32r	a9, .LC8
	and	a10, a10, a9
	bne	a10, a9, .L16
	extui	a9, a13, 0, 16
	.loc 1 202 0
	beqz.n	a7, .L18
	beqi	a7, 1, .L19
	j	.L43
.L18:
	.loc 1 204 0
	s16i	a3, a8, 0
	l32i.n	a3, a8, 0
	l32r	a10, .LC18
	extui	a9, a9, 0, 11
	and	a3, a3, a10
	slli	a9, a9, 16
	or	a9, a3, a9
	l32r	a3, .LC19
	l32r	a10, .LC20
	and	a9, a9, a3
	and	a9, a9, a10
	s32i.n	a9, a8, 0
	.loc 1 206 0
	j	.L20
.L19:
	.loc 1 208 0
	s16i	a3, a8, 0
	l32i.n	a3, a8, 0
	l32r	a10, .LC18
	extui	a9, a9, 0, 11
	slli	a9, a9, 16
	and	a3, a3, a10
	or	a3, a3, a9
	l32r	a9, .LC19
	l32r	a10, .LC20
	and	a3, a3, a9
	l32r	a7, .LC21
	and	a3, a3, a10
	or	a3, a3, a7
	s32i.n	a3, a8, 0
	.loc 1 210 0
	j	.L20
.L43:
	.loc 1 212 0
	l32r	a13, .LC23
.LVL39:
	l32r	a12, .LC24
.LVL40:
	movi	a11, 0xd4
.LVL41:
	j	.L46
.LVL42:
.L20:
	.loc 1 215 0
	bne	a6, a14, .L21
	.loc 1 215 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
.LVL43:
	l32r	a12, .LC24
.LVL44:
	movi	a11, 0xd7
.LVL45:
.L46:
	l32r	a10, .LC26
	call8	__assert_func
.LVL46:
.L21:
	.loc 1 216 0 is_stmt 1
	addi.n	a8, a8, 4
.LVL47:
	j	.L22
.LVL48:
.L16:
	.loc 1 219 0
	s32i.n	a15, a12, 0
.LVL49:
	.loc 1 222 0
	addi.n	a13, a13, 1
.LVL50:
	.loc 1 221 0
	addi.n	a12, a12, 4
.LVL51:
.L22:
	addi.n	a11, a11, 4
	addi.n	a14, a14, 4
.L15:
.LVL52:
.LBE11:
	.loc 1 199 0
	bltu	a11, a6, .L23
	.loc 1 227 0
	l32r	a13, .LC29
.LVL53:
	movi.n	a12, 4
.LVL54:
	mov.n	a11, a4
.LVL55:
	mov.n	a10, a5
	call8	qsort
.LVL56:
	.loc 1 231 0
	l32i.n	a3, sp, 20
	.loc 1 233 0
	mov.n	a4, a5
.LVL57:
	.loc 1 231 0
	add.n	a10, a5, a3
.LVL58:
.LBB12:
.LBB13:
	.loc 1 238 0
	l32r	a12, .LC8
.LBB14:
.LBB15:
.LBB16:
	.loc 1 135 0
	movi	a14, 0x7f
.LBE16:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 233 0
	j	.L24
.LVL59:
.L40:
.LBB31:
	.loc 1 234 0
	l32i.n	a6, a4, 0
.LVL60:
	.loc 1 235 0
	l32r	a8, .LC16
	.loc 1 234 0
	l16ui	a15, a4, 0
.LVL61:
	.loc 1 235 0
	and	a6, a6, a8
.LVL62:
	l32r	a9, .LC8
	or	a6, a6, a15
	bnone	a6, a9, .L25
.LVL63:
	.loc 1 235 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC24
	movi	a11, 0xeb
	j	.L46
.L25:
	extui	a6, a6, 16, 11
	.loc 1 236 0 is_stmt 1
	addi.n	a4, a4, 4
.LVL64:
.LBB28:
.LBB24:
.LBB20:
	.loc 1 147 0
	slli	a13, a6, 2
.LBE20:
.LBE24:
.LBE28:
	.loc 1 237 0
	j	.L26
.LVL65:
.L38:
.LBB29:
	.loc 1 238 0
	l32i.n	a9, a4, 0
	l16ui	a3, a4, 0
	bany	a9, a12, .L27
	.loc 1 239 0
	bne	a3, a15, .L24
	.loc 1 240 0 discriminator 2
	s32i.n	a15, sp, 32
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC10
	l32i.n	a15, sp, 32
	l32r	a12, .LC33
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	.loc 1 242 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL68:
	.loc 1 243 0 discriminator 2
	l32r	a2, .LC3
.LVL69:
	retw.n
.LVL70:
.L27:
	.loc 1 247 0
	beq	a3, a15, .L30
	.loc 1 248 0 discriminator 2
	call8	esp_log_timestamp
.LVL71:
	l32r	a11, .LC10
	l16ui	a15, a4, 0
	l32r	a12, .LC35
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL72:
	.loc 1 250 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL73:
	.loc 1 251 0 discriminator 2
	l32r	a2, .LC4
.LVL74:
	retw.n
.LVL75:
.L30:
.LBB25:
.LBB21:
	.loc 1 125 0
	l32i.n	a3, sp, 24
	extui	a9, a9, 16, 11
.LVL76:
	sub	a11, a9, a2
	addx4	a11, a11, a3
.LVL77:
	.loc 1 128 0
	l32i.n	a3, a11, 0
	l32r	a8, .LC36
	and	a7, a3, a12
	beq	a7, a8, .L31
	l32r	a13, .LC38
	l32r	a12, .LC39
	movi	a11, 0x81
.LVL78:
	j	.L46
.LVL79:
.L31:
	.loc 1 130 0
	extui	a7, a3, 25, 3
	beqz.n	a7, .L33
	bnei	a7, 1, .L44
.LBB17:
	.loc 1 132 0
	sub	a7, a6, a9
.LVL80:
	.loc 1 133 0
	abs	a8, a7
.LVL81:
	.loc 1 135 0
	bge	a14, a8, .L35
	.loc 1 136 0
	s32i.n	a9, sp, 32
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC10
	l32i.n	a9, sp, 32
	l32r	a12, .LC41
	mov.n	a13, a10
	mov.n	a15, a9
	mov.n	a14, a11
	s32i.n	a6, sp, 0
	movi.n	a10, 2
	call8	esp_log_write
.LVL83:
.LBE17:
.LBE21:
.LBE25:
	.loc 1 256 0
	mov.n	a10, a5
	call8	free
.LVL84:
.LBB26:
.LBB22:
.LBB18:
	.loc 1 138 0
	l32r	a2, .LC5
.LVL85:
.LBE18:
.LBE22:
.LBE26:
	.loc 1 257 0
	retw.n
.LVL86:
.L35:
.LBB27:
.LBB23:
.LBB19:
	.loc 1 140 0
	l32r	a9, .LC42
	extui	a8, a8, 0, 7
.LVL87:
	slli	a8, a8, 17
	and	a3, a3, a9
	or	a3, a3, a8
	.loc 1 141 0
	l32r	a8, .LC43
	extui	a7, a7, 31, 1
.LVL88:
	slli	a7, a7, 24
	and	a3, a3, a8
	or	a3, a3, a7
	j	.L45
.LVL89:
.L33:
.LBE19:
	.loc 1 145 0
	l32r	a9, .LC44
	bnone	a3, a9, .L37
	l32r	a13, .LC46
	l32r	a12, .LC39
	movi	a11, 0x92
.LVL90:
	j	.L46
.LVL91:
.L37:
	.loc 1 147 0
	l32r	a8, .LC47
	and	a3, a3, a8
	or	a3, a3, a13
.L45:
	s32i.n	a3, a11, 0
.LVL92:
	j	.L36
.LVL93:
.L44:
	.loc 1 151 0
	l32r	a13, .LC49
	l32r	a12, .LC39
	movi	a11, 0x97
.LVL94:
	j	.L46
.LVL95:
.L26:
.LBE23:
.LBE27:
.LBE29:
	.loc 1 237 0
	bltu	a4, a10, .L38
.LVL96:
.L24:
.LBE31:
	.loc 1 233 0
	bltu	a4, a10, .L40
	.loc 1 262 0
	mov.n	a10, a5
.LVL97:
	call8	free
.LVL98:
	.loc 1 263 0
	l32i.n	a9, sp, 28
	l32i.n	a2, sp, 16
.LVL99:
	s32i.n	a2, a9, 0
	.loc 1 264 0
	movi.n	a2, 0
	retw.n
.LVL100:
.L41:
	.loc 1 189 0
	movi	a2, 0x101
.LVL101:
	retw.n
.LVL102:
.L36:
.LBB32:
.LBB30:
	.loc 1 259 0
	addi.n	a4, a4, 4
.LVL103:
	j	.L26
.LBE30:
.LBE32:
.LFE3:
	.size	ulp_process_macros_and_load, .-ulp_process_macros_and_load
	.section	.rodata.__func__$3452,"a",@progbits
	.type	__func__$3452, @object
	.size	__func__$3452, 16
__func__$3452:
	.string	"do_single_reloc"
	.section	.rodata.__func__$3486,"a",@progbits
	.type	__func__$3486, @object
	.size	__func__$3486, 28
__func__$3486:
	.string	"ulp_process_macros_and_load"
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/include/esp32/ulp.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd08
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.4byte	0xac
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x1f
	.4byte	0xfe
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x81
	.4byte	0x134
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x82
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x83
	.4byte	0xb7
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x84
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x87
	.4byte	0x1a6
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x88
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x89
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x8a
	.4byte	0xb7
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x8b
	.4byte	0xb7
	.byte	0x4
	.byte	0xb
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8c
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8d
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x8e
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x91
	.4byte	0x209
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x92
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x93
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x94
	.4byte	0xb7
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x95
	.4byte	0xb7
	.byte	0x4
	.byte	0xb
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x96
	.4byte	0xb7
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x97
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x9a
	.4byte	0x230
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9b
	.4byte	0xb7
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x9c
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x9f
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa0
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0xa1
	.4byte	0xb7
	.byte	0x4
	.byte	0xb
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xa2
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"reg"
	.byte	0x6
	.byte	0xa3
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa4
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xa5
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa6
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xa9
	.4byte	0x305
	.uleb128 0xc
	.string	"imm"
	.byte	0x6
	.byte	0xaa
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"cmp"
	.byte	0x6
	.byte	0xab
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0xac
	.4byte	0xb7
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0xad
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xae
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xaf
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xb2
	.4byte	0x377
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xb3
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0xb4
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb5
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xb6
	.4byte	0xb7
	.byte	0x4
	.byte	0xf
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"sel"
	.byte	0x6
	.byte	0xb7
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xb8
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xb9
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xbc
	.4byte	0x3e9
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xbd
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0xbe
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"imm"
	.byte	0x6
	.byte	0xbf
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xc0
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"sel"
	.byte	0x6
	.byte	0xc1
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xc2
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xc3
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xc6
	.4byte	0x44c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0xc7
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xc8
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xc9
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"low"
	.byte	0x6
	.byte	0xca
	.4byte	0xb7
	.byte	0x4
	.byte	0x5
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xcb
	.4byte	0xb7
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xcc
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xcf
	.4byte	0x4af
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0xd0
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xd1
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xd2
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"low"
	.byte	0x6
	.byte	0xd3
	.4byte	0xb7
	.byte	0x4
	.byte	0x5
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xd4
	.4byte	0xb7
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xd5
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xd8
	.4byte	0x521
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xd9
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"mux"
	.byte	0x6
	.byte	0xda
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xdb
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0xdc
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0xdd
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0xde
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xdf
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xe2
	.4byte	0x566
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0xe3
	.4byte	0xb7
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0xe4
	.4byte	0xb7
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0xe5
	.4byte	0xb7
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xe6
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xe9
	.4byte	0x5e6
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0xea
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xeb
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0xec
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0xed
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0xee
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xef
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"rw"
	.byte	0x6
	.byte	0xf0
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xf1
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xf4
	.4byte	0x62b
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0xf5
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xf6
	.4byte	0xb7
	.byte	0x4
	.byte	0x18
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xf7
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xf8
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xfb
	.4byte	0x670
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xfc
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0xfd
	.4byte	0xb7
	.byte	0x4
	.byte	0x15
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0xfe
	.4byte	0xb7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xff
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.2byte	0x102
	.4byte	0x6ba
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x103
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x104
	.4byte	0xb7
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x105
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x106
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.byte	0x7f
	.4byte	0x770
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x6
	.byte	0x85
	.4byte	0xfe
	.uleb128 0x11
	.string	"st"
	.byte	0x6
	.byte	0x8f
	.4byte	0x134
	.uleb128 0x11
	.string	"ld"
	.byte	0x6
	.byte	0x98
	.4byte	0x1a6
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x6
	.byte	0x9d
	.4byte	0x209
	.uleb128 0x11
	.string	"bx"
	.byte	0x6
	.byte	0xa7
	.4byte	0x230
	.uleb128 0x11
	.string	"b"
	.byte	0x6
	.byte	0xb0
	.4byte	0x2a2
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x6
	.byte	0xba
	.4byte	0x305
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc4
	.4byte	0x377
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x6
	.byte	0xcd
	.4byte	0x3e9
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd6
	.4byte	0x44c
	.uleb128 0x11
	.string	"adc"
	.byte	0x6
	.byte	0xe0
	.4byte	0x4af
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.byte	0xe7
	.4byte	0x521
	.uleb128 0x11
	.string	"i2c"
	.byte	0x6
	.byte	0xf2
	.4byte	0x566
	.uleb128 0x11
	.string	"end"
	.byte	0x6
	.byte	0xf9
	.4byte	0x5e6
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x100
	.4byte	0x62b
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x107
	.4byte	0x670
	.byte	0
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x109
	.4byte	0x6ba
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x20
	.4byte	0x7c1
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x21
	.4byte	0xb7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x22
	.4byte	0xb7
	.byte	0x4
	.byte	0xb
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x23
	.4byte	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.4byte	0xb7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x1
	.byte	0x25
	.4byte	0x77c
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3e
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x820
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3e
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0x3e
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"lhs"
	.byte	0x1
	.byte	0x40
	.4byte	0x820
	.4byte	.LLST1
	.uleb128 0x17
	.string	"rhs"
	.byte	0x1
	.byte	0x41
	.4byte	0x820
	.4byte	.LLST2
	.byte	0
	.uleb128 0x6
	.4byte	0x7c1
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x1
	.byte	0x79
	.4byte	0xc2
	.byte	0x1
	.4byte	0x8a8
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0x79
	.4byte	0x8a8
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x79
	.4byte	0xb7
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7a
	.4byte	0x7c1
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7a
	.4byte	0x7c1
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7c
	.4byte	0x73
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x7d
	.4byte	0x8a8
	.uleb128 0x1b
	.4byte	.LASF68
	.4byte	0x8be
	.4byte	.LASF92
	.uleb128 0x1c
	.uleb128 0x1a
	.4byte	.LASF29
	.byte	0x1
	.byte	0x84
	.4byte	0xac
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x85
	.4byte	0xb7
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x86
	.4byte	0xb7
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x770
	.uleb128 0x1d
	.4byte	0x93
	.4byte	0x8be
	.uleb128 0x1e
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x8ae
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.byte	0x9c
	.4byte	0xc2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc78
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9c
	.4byte	0xc78
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x9c
	.4byte	0xc83
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF71
	.byte	0x1
	.byte	0x9e
	.4byte	0xc78
	.4byte	.LLST6
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.byte	0x9f
	.4byte	0xc78
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa0
	.4byte	0x73
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa9
	.4byte	0x73
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xaa
	.4byte	0xc89
	.byte	0x80
	.uleb128 0x22
	.4byte	.LASF75
	.byte	0x1
	.byte	0xba
	.4byte	0xc8e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc3
	.4byte	0x8a8
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0xc4
	.4byte	0x8a8
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF78
	.byte	0x1
	.byte	0xc5
	.4byte	0xb7
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc6
	.4byte	0xc8e
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF68
	.4byte	0xca4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3486
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.byte	0xe7
	.4byte	0xc8e
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0x9d1
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa3
	.4byte	0x770
	.4byte	.LLST15
	.byte	0
	.uleb128 0x25
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0xa01
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.byte	0xc8
	.4byte	0x770
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0xcc0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xb82
	.uleb128 0x20
	.4byte	.LASF64
	.byte	0x1
	.byte	0xea
	.4byte	0x7c1
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x29
	.string	"rc"
	.byte	0x1
	.byte	0xfd
	.4byte	0xc2
	.uleb128 0x2a
	.4byte	0x825
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xfd
	.4byte	0xada
	.uleb128 0x2b
	.4byte	0x856
	.4byte	.LLST18
	.uleb128 0x2c
	.4byte	0x84b
	.uleb128 0x2b
	.4byte	0x840
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	0x835
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x2d
	.4byte	0x861
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	0x86c
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	0x877
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3452
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x2d
	.4byte	0x885
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	0x890
	.4byte	.LLST24
	.uleb128 0x2d
	.4byte	0x89b
	.4byte	.LLST25
	.uleb128 0x2f
	.4byte	.LVL82
	.4byte	0xccb
	.uleb128 0x26
	.4byte	.LVL83
	.4byte	0xcd6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL66
	.4byte	0xccb
	.uleb128 0x30
	.4byte	.LVL67
	.4byte	0xcd6
	.4byte	0xb11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x30
	.4byte	.LVL68
	.4byte	0xce1
	.4byte	0xb25
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL71
	.4byte	0xccb
	.uleb128 0x30
	.4byte	.LVL72
	.4byte	0xcd6
	.4byte	0xb5c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x30
	.4byte	.LVL73
	.4byte	0xce1
	.4byte	0xb70
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL84
	.4byte	0xce1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL17
	.4byte	0xccb
	.uleb128 0x30
	.4byte	.LVL18
	.4byte	0xcd6
	.4byte	0xbc6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL23
	.4byte	0xccb
	.uleb128 0x30
	.4byte	.LVL24
	.4byte	0xcd6
	.4byte	0xc0b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL27
	.4byte	0xcec
	.4byte	0xc2b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL30
	.4byte	0xcf5
	.4byte	0xc3f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL56
	.4byte	0xd00
	.4byte	0xc67
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	reloc_sort_func
	.byte	0
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0xce1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7e
	.uleb128 0x6
	.4byte	0x770
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7c1
	.uleb128 0x1d
	.4byte	0x93
	.4byte	0xca4
	.uleb128 0x1e
	.4byte	0x85
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0xc94
	.uleb128 0x31
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0xcbb
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x32
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x7
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0x57
	.uleb128 0x32
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0x6b
	.uleb128 0x32
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.byte	0x5a
	.uleb128 0x33
	.4byte	.LASF94
	.4byte	.LASF94
	.uleb128 0x32
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.byte	0x65
	.uleb128 0x32
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x9
	.byte	0x88
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0xc
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x10
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0xc
	.uleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x6
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x10
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0xc
	.uleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
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
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL59
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x8
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x8
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x8
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL59
	.4byte	.LVL69
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL85
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x12
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x11
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x12
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x12
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x11
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x74
	.sleb128 -4
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL75
	.4byte	.LVL82-1
	.2byte	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL86
	.4byte	.LVL96
	.2byte	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL82-1
	.2byte	0x12
	.byte	0x93
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xb
	.uleb128 0
	.byte	0x9d
	.uleb128 0x5
	.uleb128 0
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x12
	.byte	0x93
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xb
	.uleb128 0
	.byte	0x9d
	.uleb128 0x5
	.uleb128 0
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x12
	.byte	0x93
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xb
	.uleb128 0
	.byte	0x9d
	.uleb128 0x5
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL75
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL76
	.4byte	.LVL82-1
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0xc
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x13
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0xc
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82-1
	.4byte	.LVL86
	.2byte	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0xe
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x1c
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x12
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x9
	.byte	0xf9
	.byte	0x25
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"wait_delay"
.LASF87:
	.string	"qsort"
.LASF45:
	.string	"i2c_sel"
.LASF44:
	.string	"high_bits"
.LASF92:
	.string	"do_single_reloc"
.LASF9:
	.string	"size_t"
.LASF86:
	.string	"malloc"
.LASF11:
	.string	"sizetype"
.LASF61:
	.string	"p_rhs"
.LASF91:
	.string	"reloc_sort_func"
.LASF23:
	.string	"cycles"
.LASF72:
	.string	"macro_count"
.LASF55:
	.string	"tsens"
.LASF94:
	.string	"memcpy"
.LASF43:
	.string	"low_bits"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"reserved"
.LASF66:
	.string	"insn_offset"
.LASF49:
	.string	"delay"
.LASF25:
	.string	"opcode"
.LASF62:
	.string	"program"
.LASF74:
	.string	"ulp_mem_end"
.LASF27:
	.string	"sreg"
.LASF75:
	.string	"reloc_info"
.LASF67:
	.string	"insn"
.LASF64:
	.string	"label_info"
.LASF93:
	.string	"ulp_process_macros_and_load"
.LASF32:
	.string	"addr"
.LASF7:
	.string	"long long int"
.LASF69:
	.string	"abs_offset"
.LASF10:
	.string	"long int"
.LASF42:
	.string	"i2c_addr"
.LASF38:
	.string	"high"
.LASF29:
	.string	"offset"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF35:
	.string	"treg"
.LASF1:
	.string	"unsigned char"
.LASF76:
	.string	"output_program"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"int32_t"
.LASF8:
	.string	"long long unsigned int"
.LASF89:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/ulp/ulp_macro.c"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF47:
	.string	"cycle_sel"
.LASF16:
	.string	"esp_err_t"
.LASF56:
	.string	"sleep"
.LASF68:
	.string	"__func__"
.LASF84:
	.string	"esp_log_write"
.LASF63:
	.string	"load_addr"
.LASF59:
	.string	"reloc_info_t"
.LASF13:
	.string	"char"
.LASF60:
	.string	"p_lhs"
.LASF33:
	.string	"type"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF80:
	.string	"reloc_end"
.LASF50:
	.string	"halt"
.LASF73:
	.string	"real_program_size"
.LASF37:
	.string	"data"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF65:
	.string	"branch_info"
.LASF51:
	.string	"alu_reg"
.LASF46:
	.string	"wakeup"
.LASF77:
	.string	"write_ptr"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF12:
	.string	"long unsigned int"
.LASF34:
	.string	"sign"
.LASF26:
	.string	"dreg"
.LASF28:
	.string	"unused1"
.LASF30:
	.string	"unused2"
.LASF53:
	.string	"wr_reg"
.LASF31:
	.string	"sub_opcode"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"__uint32_t"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF57:
	.string	"macro"
.LASF4:
	.string	"__int32_t"
.LASF90:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/ulp"
.LASF79:
	.string	"cur_reloc"
.LASF83:
	.string	"esp_log_timestamp"
.LASF58:
	.string	"ulp_insn_t"
.LASF71:
	.string	"read_ptr"
.LASF88:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"periph_sel"
.LASF54:
	.string	"rd_reg"
.LASF82:
	.string	"__assert_func"
.LASF39:
	.string	"sar_sel"
.LASF52:
	.string	"alu_imm"
.LASF70:
	.string	"psize"
.LASF78:
	.string	"cur_insn_addr"
.LASF85:
	.string	"free"
.LASF48:
	.string	"label"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF24:
	.string	"unused"
.LASF81:
	.string	"r_insn"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
