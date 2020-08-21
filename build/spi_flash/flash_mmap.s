	.file	"flash_mmap.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072758784
	.align	4
	.type	spi_flash_protected_read_mmu_entry, @function
spi_flash_protected_read_mmu_entry:
.LFB33:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
	.loc 1 297 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 299 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL1:
	.loc 1 300 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL2:
.LBB71:
.LBB72:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 77 0
	memw
	l32i.n	a2, a2, 0
.LVL3:
.LBE72:
.LBE71:
	.loc 1 301 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL4:
	.loc 1 303 0
	retw.n
.LFE33:
	.size	spi_flash_protected_read_mmu_entry, .-spi_flash_protected_read_mmu_entry
	.literal_position
	.literal .LC3, 1072758784
	.literal .LC4, s_mmap_page_refcnt
	.align	4
	.type	spi_flash_mmap_init, @function
spi_flash_mmap_init:
.LFB27:
	.loc 1 78 0
	entry	sp, 32
.LCFI1:
	.loc 1 79 0
	l32r	a14, .LC4
	movi.n	a12, 0
	l8ui	a2, a14, 0
	l32r	a10, .LC3
	bne	a2, a12, .L2
	movi	a13, 0x100
.LBB82:
.LBB83:
	.loc 1 92 0
	movi.n	a15, 1
	.loc 1 93 0
	mov.n	a4, a15
	mov.n	a2, a13
.L13:
.LVL5:
	addmi	a3, a10, 0x2000
.LBB84:
.LBB85:
	.loc 2 110 0
	memw
	l32i.n	a5, a10, 0
.LVL6:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	memw
	l32i.n	a11, a3, 0
.LBE87:
.LBE86:
	.loc 1 87 0
	beq	a5, a11, .L4
.LVL7:
	.loc 1 90 0
	memw
	s32i.n	a13, a10, 0
	.loc 1 89 0
	movi	a11, 0x100
.LVL8:
.L4:
	.loc 1 92 0
	and	a5, a11, a13
	bnez.n	a5, .L5
	mov.n	a8, a5
	addi	a9, a12, -77
	moveqz	a8, a15, a12
	moveqz	a5, a15, a9
	or	a8, a8, a5
	extui	a8, a8, 0, 8
	bnez.n	a8, .L10
	movnez	a8, a15, a11
	beqz.n	a8, .L5
.L10:
	.loc 1 93 0
	add.n	a3, a14, a12
.LVL9:
	s8i	a4, a3, 0
	j	.L7
.LVL10:
.L5:
	.loc 1 95 0
	memw
	s32i.n	a13, a10, 0
	.loc 1 96 0
	memw
	s32i.n	a13, a3, 0
.LVL11:
.L7:
.LBE83:
	.loc 1 83 0
	addi.n	a12, a12, 1
.LVL12:
	addi.n	a10, a10, 4
.LVL13:
	addi.n	a2, a2, -1
	bnez.n	a2, .L13
.LVL14:
.L2:
	retw.n
.LBE82:
.LFE27:
	.size	spi_flash_mmap_init, .-spi_flash_mmap_init
	.align	4
	.type	spi_flash_protected_mmap_init, @function
spi_flash_protected_mmap_init:
.LFB32:
	.loc 1 290 0
	entry	sp, 32
.LCFI2:
	.loc 1 291 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL15:
	.loc 1 292 0
	call8	spi_flash_mmap_init
.LVL16:
	.loc 1 293 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL17:
	retw.n
.LFE32:
	.size	spi_flash_protected_mmap_init, .-spi_flash_protected_mmap_init
	.literal_position
	.literal .LC5, -65536
	.literal .LC6, 65535
	.literal .LC7, written_pages
	.literal .LC8, 65536
	.align	4
	.type	update_written_pages, @function
update_written_pages:
.LFB38:
	.loc 1 370 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 374 0
	l32r	a10, .LC6
	.loc 1 372 0
	l32r	a8, .LC5
	.loc 1 374 0
	add.n	a3, a3, a10
.LVL19:
	.loc 1 372 0
	and	a9, a2, a8
.LVL20:
	.loc 1 374 0
	add.n	a2, a3, a2
.LVL21:
	sub	a2, a2, a9
	and	a2, a2, a8
.LVL22:
.LBB98:
	.loc 1 375 0
	add.n	a2, a9, a2
.LVL23:
.LBB99:
	.loc 1 377 0
	movi	a11, 0xff
	.loc 1 382 0
	movi.n	a12, 1
	l32r	a3, .LC7
.LVL24:
.LBE99:
	.loc 1 375 0
	l32r	a13, .LC8
	j	.L18
.LVL25:
.L22:
.LBB100:
	.loc 1 376 0
	extui	a10, a9, 16, 16
.LVL26:
	.loc 1 377 0
	bltu	a11, a10, .L23
	.loc 1 381 0
	srai	a8, a10, 5
.LVL27:
	slli	a8, a8, 2
.LVL28:
	.loc 1 382 0
	ssl	a10
	sll	a10, a12
.LVL29:
	.loc 1 385 0
	add.n	a8, a3, a8
	.loc 1 384 0
	beqz.n	a4, .L20
	.loc 1 385 0
	l32i.n	a14, a8, 0
	or	a10, a14, a10
.LVL30:
	s32i.n	a10, a8, 0
	j	.L21
.LVL31:
.L20:
	.loc 1 386 0
	l32i.n	a8, a8, 0
	bnone	a10, a8, .L21
.LVL32:
.LBE100:
.LBE98:
.LBB102:
.LBB103:
.LBB104:
.LBB105:
.LBB106:
.LBB107:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/cache.h"
	.loc 3 142 0
	mov.n	a10, a4
.LVL33:
	call8	Cache_Flush_rom
.LVL34:
.LBE107:
.LBE106:
	.loc 1 399 0
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a3
	call8	memset
.LVL35:
	movi.n	a2, 1
	retw.n
.LVL36:
.L21:
.LBE105:
.LBE104:
.LBE103:
.LBE102:
.LBB108:
	.loc 1 375 0 discriminator 2
	add.n	a9, a9, a13
.LVL37:
.L18:
	.loc 1 375 0 is_stmt 0 discriminator 1
	bltu	a9, a2, .L22
.L23:
.LBB101:
	.loc 1 378 0 is_stmt 1
	movi.n	a2, 0
.LBE101:
.LBE108:
	.loc 1 404 0
	retw.n
.LFE38:
	.size	update_written_pages, .-update_written_pages
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC22:
	.string	"s_mmap_page_refcnt[i] == 0 || (entry_pro == pages[pageno] && entry_app == pages[pageno])"
.LC25:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
	.section	.iram1
	.literal_position
	.literal .LC11, 1061158912
	.literal .LC12, 1074593792
	.literal .LC13, -1073283072
	.literal .LC14, 1253375
	.literal .LC15, -1342177280
	.literal .LC16, 8191
	.literal .LC17, g_rom_flashchip
	.literal .LC18, 2052
	.literal .LC19, 65536
	.literal .LC20, 1072758784
	.literal .LC21, s_mmap_page_refcnt
	.literal .LC23, .LC22
	.literal .LC24, __func__$5756
	.literal .LC26, .LC25
	.literal .LC27, s_mmap_entries_head
	.literal .LC28, s_mmap_last_handle
	.align	4
	.global	spi_flash_mmap_pages
	.type	spi_flash_mmap_pages, @function
spi_flash_mmap_pages:
.LFB30:
	.loc 1 145 0
.LVL38:
	entry	sp, 64
.LCFI4:
.LVL39:
	.loc 1 145 0
	s32i.n	a5, sp, 4
	s32i.n	a6, sp, 12
	mov.n	a7, a2
	.loc 1 149 0
	movi	a2, 0x102
.LVL40:
	.loc 1 148 0
	beqz.n	a3, .L28
.LVL41:
	.loc 1 151 0
	l32r	a5, .LC13
.LVL42:
	l32r	a8, .LC14
	add.n	a5, a7, a5
.LBB139:
.LBB140:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 4 167 0
	mov.n	a6, a7
.LVL43:
.LBE140:
.LBE139:
	.loc 1 151 0
	bgeu	a8, a5, .L63
	l32r	a5, .LC15
	l32r	a8, .LC16
	add.n	a5, a7, a5
	bltu	a8, a5, .L28
.L63:
.LBB141:
	.loc 1 155 0
	l32r	a2, .LC17
	mov.n	a8, a7
	l32i.n	a9, a2, 4
.LVL44:
	mov.n	a5, a3
.LVL45:
.L32:
	l32i.n	a2, a8, 0
	bltz	a2, .L58
	.loc 1 155 0 is_stmt 0 discriminator 1
	slli	a2, a2, 16
	addi.n	a8, a8, 4
	bgeu	a2, a9, .L58
	.loc 1 154 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, -1
	bnez.n	a5, .L32
.LVL46:
.LBE141:
.LBB142:
.LBB143:
	.loc 1 159 0
	l32r	a11, .LC18
	movi.n	a10, 0x14
	call8	heap_caps_malloc
.LVL47:
	mov.n	a5, a10
.LVL48:
	.loc 1 160 0
	bnez.n	a10, .L33
.LVL49:
.L37:
	.loc 1 161 0
	movi	a2, 0x101
	retw.n
.LVL50:
.L33:
	.loc 1 164 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL51:
	.loc 1 166 0
	movi.n	a2, 0
	.loc 1 164 0
	mov.n	a9, a7
	.loc 1 166 0
	s32i.n	a2, sp, 0
.LVL52:
.L35:
.LBB144:
.LBB145:
.LBB146:
	.loc 1 365 0
	l32i.n	a10, a9, 0
	l32r	a11, .LC19
	movi.n	a12, 0
	slli	a10, a10, 16
.LVL53:
	s32i.n	a9, sp, 20
	call8	update_written_pages
.LVL54:
.LBE146:
.LBE145:
	.loc 1 169 0
	l32i.n	a8, sp, 0
	movi.n	a11, 1
	movnez	a8, a11, a10
	l32i.n	a9, sp, 20
	s32i.n	a8, sp, 0
.LVL55:
	.loc 1 167 0
	add.n	a2, a2, a11
.LVL56:
	addi.n	a9, a9, 4
	bne	a2, a3, .L35
.LBE144:
	.loc 1 172 0
	call8	spi_flash_mmap_init
.LVL57:
.LBB147:
.LBB148:
	.loc 1 104 0
	beqz.n	a4, .L59
	.loc 1 113 0
	l32r	a9, .LC12
	.loc 1 111 0
	movi.n	a4, 0x4d
.LVL58:
	.loc 1 113 0
	s32i.n	a9, sp, 8
	.loc 1 112 0
	movi	a9, 0x73
	j	.L36
.LVL59:
.L59:
	.loc 1 108 0
	l32r	a12, .LC11
	.loc 1 107 0
	movi.n	a9, 0x40
	.loc 1 108 0
	s32i.n	a12, sp, 8
.LVL60:
.L36:
.LBE148:
.LBE147:
	.loc 1 178 0
	bltu	a9, a3, .L37
	.loc 1 187 0
	add.n	a9, a9, a4
.LVL61:
	sub	a9, a9, a3
	addi.n	a9, a9, 1
.LVL62:
	subx4	a11, a4, a7
	.loc 1 188 0
	mov.n	a8, a4
	j	.L38
.LVL63:
.L42:
.LBB149:
.LBB150:
	.loc 1 194 0
	l32r	a12, .LC21
	add.n	a14, a13, a10
.LVL64:
.LBB151:
.LBB152:
	.loc 2 110 0
	memw
	l32i.n	a15, a14, 0
.LVL65:
.LBE152:
.LBE151:
	.loc 1 194 0
	add.n	a14, a2, a12
.LVL66:
	.loc 1 195 0
	l8ui	a14, a14, 0
.LVL67:
	beqz.n	a14, .L39
	l32i.n	a14, a10, 0
	beq	a15, a14, .L39
.LVL68:
.L43:
.LBE150:
	.loc 1 201 0
	sub	a2, a2, a8
.LVL69:
	addi.n	a11, a11, 4
	bne	a3, a2, .L85
	j	.L40
.LVL70:
.L39:
	.loc 1 192 0
	addi.n	a2, a2, 1
.LVL71:
	addi.n	a10, a10, 4
.LVL72:
	j	.L46
.LVL73:
.L60:
	l32r	a12, .LC20
	add.n	a14, a8, a3
.LBE149:
	.loc 1 188 0
	mov.n	a10, a7
	mov.n	a2, a8
.LBB153:
	.loc 1 192 0
	s32i.n	a14, sp, 16
	add.n	a13, a11, a12
.L46:
.LVL74:
	l32i.n	a14, sp, 16
	bltu	a2, a14, .L42
	j	.L43
.LVL75:
.L40:
.LBE153:
	.loc 1 206 0
	bne	a9, a8, .L86
	j	.L44
.L85:
	.loc 1 188 0
	addi.n	a8, a8, 1
.LVL76:
.L38:
	blt	a8, a9, .L60
	j	.L40
.L86:
	l32r	a2, .LC21
	l32r	a10, .LC20
.LBB154:
.LBB155:
	.loc 1 214 0
	add.n	a9, a3, a8
.LVL77:
	add.n	a7, a8, a2
	addx4	a10, a8, a10
.LBE155:
.LBE154:
	.loc 1 206 0
	movi.n	a13, 0
.LBB163:
.LBB161:
	.loc 1 214 0
	s32i.n	a9, sp, 16
	movi.n	a12, 1
	j	.L47
.LVL78:
.L44:
.LBE161:
.LBE163:
	.loc 1 207 0
	l32i.n	a14, sp, 12
	movi.n	a2, 0
	.loc 1 208 0
	l32i.n	a3, sp, 4
.LVL79:
	.loc 1 207 0
	s32i.n	a2, a14, 0
	.loc 1 208 0
	s32i.n	a2, a3, 0
.LVL80:
	.loc 1 209 0
	movi	a2, 0x101
	j	.L48
.LVL81:
.L53:
	addmi	a15, a10, 0x2000
.LBB164:
.LBB162:
.LBB156:
	.loc 1 218 0
	l8ui	a2, a7, 0
.LVL82:
.LBB157:
.LBB158:
	.loc 2 110 0
	memw
	l32i.n	a9, a10, 0
.LVL83:
.LBE158:
.LBE157:
.LBB159:
.LBB160:
	memw
	l32i.n	a11, a15, 0
.LBE160:
.LBE159:
	.loc 1 218 0
	beqz.n	a2, .L49
	l32i.n	a2, a6, 0
	movi.n	a14, 0
	sub	a9, a9, a2
	movnez	a14, a12, a9
	extui	a9, a14, 0, 8
	bnez.n	a9, .L64
	sub	a11, a11, a2
	movnez	a9, a12, a11
	beqz.n	a9, .L50
.L64:
	l32r	a13, .LC23
	l32r	a12, .LC24
	l32r	a10, .LC26
.LVL84:
	movi	a11, 0xdc
	call8	__assert_func
.LVL85:
.L49:
	.loc 1 222 0
	l32i.n	a14, a6, 0
	sub	a11, a11, a14
	movnez	a2, a12, a11
	mov.n	a11, a2
	bnez.n	a2, .L65
	sub	a9, a9, a14
	movnez	a11, a12, a9
	beqz.n	a11, .L50
.L65:
	.loc 1 223 0
	memw
	s32i.n	a14, a10, 0
	.loc 1 224 0
	l32i.n	a2, a6, 0
	.loc 1 225 0
	movi.n	a13, 1
	.loc 1 224 0
	memw
	s32i.n	a2, a15, 0
.LVL86:
.L50:
	.loc 1 228 0
	l8ui	a2, a7, 0
	addi.n	a6, a6, 4
	addi.n	a2, a2, 1
	s8i	a2, a7, 0
.LVL87:
	addi.n	a10, a10, 4
.LVL88:
	addi.n	a7, a7, 1
.LVL89:
.L47:
.LBE156:
	.loc 1 214 0
	l32r	a9, .LC21
	l32i.n	a14, sp, 16
	sub	a2, a7, a9
.LVL90:
	bne	a14, a2, .L53
.LBE162:
	.loc 1 231 0
	l32r	a2, .LC27
.LVL91:
	l32i.n	a6, a2, 0
	s32i.n	a6, a5, 12
	beqz.n	a6, .L54
	.loc 1 231 0
	addi.n	a7, a5, 12
.LVL92:
	s32i.n	a7, a6, 16
.L54:
	.loc 1 233 0
	s32i.n	a3, a5, 8
	.loc 1 234 0
	l32r	a3, .LC28
.LVL93:
	.loc 1 231 0
	s32i.n	a5, a2, 0
	s32i.n	a2, a5, 16
	.loc 1 234 0
	l32i.n	a2, a3, 0
	.loc 1 232 0
	s32i.n	a8, a5, 4
	.loc 1 234 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	.loc 1 236 0
	sub	a4, a8, a4
.LVL94:
	.loc 1 235 0
	l32i.n	a3, sp, 12
	.loc 1 236 0
	l32i.n	a8, sp, 8
.LVL95:
	.loc 1 234 0
	s32i.n	a2, a5, 0
	.loc 1 236 0
	slli	a4, a4, 16
	l32i.n	a9, sp, 4
	.loc 1 235 0
	s32i.n	a2, a3, 0
.LVL96:
	.loc 1 236 0
	add.n	a4, a4, a8
.LBE164:
	.loc 1 246 0
	l32i.n	a14, sp, 0
.LBB165:
	.loc 1 236 0
	s32i.n	a4, a9, 0
.LVL97:
	.loc 1 237 0
	movi.n	a2, 0
.LBE165:
	.loc 1 246 0
	bgeu	a14, a13, .L48
.LVL98:
.LBB166:
.LBB167:
	.loc 3 142 0
	mov.n	a10, a2
	call8	Cache_Flush_rom
.LVL99:
.LBE167:
.LBE166:
.LBB168:
.LBB169:
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL100:
.L48:
.LBE169:
.LBE168:
	.loc 1 254 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL101:
	.loc 1 255 0
	l32i.n	a4, sp, 4
	l32i.n	a3, a4, 0
	bnez.n	a3, .L28
	.loc 1 256 0
	mov.n	a10, a5
	call8	free
.LVL102:
	retw.n
.LVL103:
.L58:
.LBE143:
.LBE142:
	.loc 1 149 0
	movi	a2, 0x102
.LVL104:
.L28:
	.loc 1 259 0
	retw.n
.LFE30:
	.size	spi_flash_mmap_pages, .-spi_flash_mmap_pages
	.literal_position
	.literal .LC29, g_rom_flashchip
	.literal .LC30, 65535
	.literal .LC31, 2048
	.align	4
	.global	spi_flash_mmap
	.type	spi_flash_mmap, @function
spi_flash_mmap:
.LFB29:
	.loc 1 119 0
.LVL105:
	entry	sp, 48
.LCFI5:
	.loc 1 121 0
	extui	a7, a2, 0, 16
	.loc 1 119 0
	mov.n	a12, a4
	.loc 1 122 0
	movi	a10, 0x102
	.loc 1 121 0
	bnez.n	a7, .L88
	.loc 1 124 0
	l32r	a8, .LC29
	add.n	a4, a2, a3
.LVL106:
	l32i.n	a8, a8, 4
	bltu	a8, a4, .L88
.LVL107:
	.loc 1 129 0
	l32r	a4, .LC30
	.loc 1 131 0
	l32r	a11, .LC31
	.loc 1 129 0
	add.n	a3, a3, a4
.LVL108:
	extui	a3, a3, 16, 16
.LVL109:
	.loc 1 131 0
	slli	a10, a3, 2
	s32i.n	a12, sp, 0
	call8	heap_caps_malloc
.LVL110:
	mov.n	a4, a10
.LVL111:
	.loc 1 132 0
	l32i.n	a12, sp, 0
	.loc 1 133 0
	movi	a10, 0x101
	.loc 1 132 0
	beqz.n	a4, .L88
	.loc 1 128 0
	extui	a2, a2, 16, 16
.LVL112:
	mov.n	a9, a4
	mov.n	a8, a7
	j	.L89
.LVL113:
.L90:
.LBB170:
	.loc 1 136 0 discriminator 3
	add.n	a7, a8, a2
	s32i.n	a7, a9, 0
	.loc 1 135 0 discriminator 3
	addi.n	a8, a8, 1
.LVL114:
	addi.n	a9, a9, 4
.LVL115:
.L89:
	.loc 1 135 0 is_stmt 0 discriminator 1
	blt	a8, a3, .L90
.LBE170:
	.loc 1 138 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	spi_flash_mmap_pages
.LVL116:
	mov.n	a2, a10
.LVL117:
	.loc 1 139 0
	mov.n	a10, a4
	call8	free
.LVL118:
	.loc 1 140 0
	mov.n	a10, a2
.LVL119:
.L88:
	.loc 1 141 0
	mov.n	a2, a10
	retw.n
.LFE29:
	.size	spi_flash_mmap, .-spi_flash_mmap
	.section	.rodata.str1.1
.LC35:
	.string	"s_mmap_page_refcnt[i] > 0"
.LC39:
	.string	"0 && \"invalid handle, or handle already unmapped\""
	.section	.iram1
	.literal_position
	.literal .LC32, s_mmap_entries_head
	.literal .LC33, s_mmap_page_refcnt
	.literal .LC34, 1072758784
	.literal .LC36, .LC35
	.literal .LC37, __func__$5765
	.literal .LC38, .LC25
	.literal .LC40, .LC39
	.align	4
	.global	spi_flash_munmap
	.type	spi_flash_munmap, @function
spi_flash_munmap:
.LFB31:
	.loc 1 262 0
.LVL120:
	entry	sp, 32
.LCFI6:
	.loc 1 263 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL121:
	.loc 1 266 0
	l32r	a3, .LC32
	l32i.n	a3, a3, 0
.LVL122:
	j	.L96
.L104:
	.loc 1 267 0
	l32i.n	a8, a3, 0
	bne	a8, a2, .L97
.LVL123:
	l32i.n	a8, a3, 4
	l32r	a9, .LC33
	l32r	a2, .LC34
.LVL124:
	add.n	a10, a8, a9
	mov.n	a11, a9
	addx4	a8, a8, a2
.LBB171:
	.loc 1 274 0
	movi	a12, 0x100
	.loc 1 271 0
	j	.L98
.LVL125:
.L101:
	.loc 1 272 0
	l8ui	a9, a10, 0
	bnez.n	a9, .L99
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32r	a13, .LC36
	l32r	a12, .LC37
	movi	a11, 0x110
	j	.L109
.L99:
	.loc 1 273 0 is_stmt 1
	addi.n	a9, a9, -1
	extui	a9, a9, 0, 8
	s8i	a9, a10, 0
	bnez.n	a9, .L100
	.loc 1 274 0
	memw
	s32i.n	a12, a8, 0
	addmi	a2, a8, 0x2000
	.loc 1 275 0
	memw
	s32i.n	a12, a2, 0
.L100:
.LVL126:
	addi.n	a10, a10, 1
.LVL127:
	addi.n	a8, a8, 4
.LVL128:
.L98:
	.loc 1 271 0 discriminator 1
	l32i.n	a2, a3, 4
	l32i.n	a9, a3, 8
	add.n	a9, a2, a9
	sub	a2, a10, a11
	blt	a2, a9, .L101
.LBE171:
	.loc 1 278 0
	l32i.n	a8, a3, 12
	beqz.n	a8, .L102
	.loc 1 278 0 discriminator 1
	l32i.n	a2, a3, 16
	s32i.n	a2, a8, 16
.L102:
	.loc 1 278 0 is_stmt 0 discriminator 3
	l32i.n	a2, a3, 16
	s32i.n	a8, a2, 0
	.loc 1 279 0 is_stmt 1 discriminator 3
	j	.L103
.LVL129:
.L97:
	.loc 1 266 0 discriminator 2
	l32i.n	a3, a3, 12
.LVL130:
.L96:
	.loc 1 266 0 discriminator 1
	bnez.n	a3, .L104
.LVL131:
.L103:
	.loc 1 282 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL132:
	.loc 1 283 0
	bnez.n	a3, .L105
	.loc 1 284 0
	l32r	a13, .LC40
	l32r	a12, .LC37
	movi	a11, 0x11c
.L109:
	l32r	a10, .LC38
	call8	__assert_func
.LVL133:
.L105:
	.loc 1 286 0
	mov.n	a10, a3
	call8	free
.LVL134:
	retw.n
.LFE31:
	.size	spi_flash_munmap, .-spi_flash_munmap
	.section	.rodata.str1.1
.LC42:
	.string	"handle=%d page=%d count=%d\n"
.LC45:
	.string	"page %d: refcnt=%d paddr=%d\n"
	.section	.text.spi_flash_mmap_dump,"ax",@progbits
	.literal_position
	.literal .LC41, s_mmap_entries_head
	.literal .LC43, .LC42
	.literal .LC44, s_mmap_page_refcnt
	.literal .LC46, .LC45
	.align	4
	.global	spi_flash_mmap_dump
	.type	spi_flash_mmap_dump, @function
spi_flash_mmap_dump:
.LFB34:
	.loc 1 306 0
	entry	sp, 32
.LCFI7:
	.loc 1 307 0
	call8	spi_flash_protected_mmap_init
.LVL135:
	.loc 1 310 0
	l32r	a2, .LC41
	.loc 1 311 0
	l32r	a3, .LC43
	.loc 1 310 0
	l32i.n	a2, a2, 0
.LVL136:
	j	.L111
.L112:
	.loc 1 311 0 discriminator 3
	l32i.n	a13, a2, 8
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	call8	printf
.LVL137:
	.loc 1 310 0 discriminator 3
	l32i.n	a2, a2, 12
.LVL138:
.L111:
	.loc 1 310 0 discriminator 1
	bnez.n	a2, .L112
	l32r	a3, .LC44
.LVL139:
.L114:
.LBB172:
	.loc 1 314 0
	l8ui	a8, a3, 0
	beqz.n	a8, .L113
.LBB173:
	.loc 1 315 0
	mov.n	a10, a2
	call8	spi_flash_protected_read_mmu_entry
.LVL140:
	.loc 1 316 0
	mov.n	a13, a10
	l8ui	a12, a3, 0
	l32r	a10, .LC46
.LVL141:
	mov.n	a11, a2
	call8	printf
.LVL142:
.L113:
.LBE173:
	.loc 1 313 0 discriminator 2
	addi.n	a2, a2, 1
.LVL143:
	addi.n	a3, a3, 1
	bnei	a2, 256, .L114
.LBE172:
	.loc 1 319 0
	retw.n
.LFE34:
	.size	spi_flash_mmap_dump, .-spi_flash_mmap_dump
	.section	.iram1
	.literal_position
	.literal .LC47, 1072758784
	.literal .LC48, s_mmap_page_refcnt
	.align	4
	.global	spi_flash_mmap_get_free_pages
	.type	spi_flash_mmap_get_free_pages, @function
spi_flash_mmap_get_free_pages:
.LFB35:
	.loc 1 322 0
.LVL144:
	entry	sp, 32
.LCFI8:
	.loc 1 323 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL145:
	.loc 1 324 0
	call8	spi_flash_mmap_init
.LVL146:
.LBB174:
.LBB175:
	.loc 1 112 0
	movi	a9, 0x73
	movi.n	a8, 0x40
	mov.n	a10, a9
	moveqz	a10, a8, a2
	movi.n	a9, 0
	movi.n	a8, 0x4d
	l32r	a11, .LC47
	moveqz	a8, a9, a2
.LVL147:
.LBE175:
.LBE174:
	.loc 1 325 0
	mov.n	a2, a9
.LVL148:
	addx4	a11, a8, a11
.LBB176:
	.loc 1 331 0
	add.n	a9, a10, a8
	.loc 1 332 0
	l32r	a12, .LC48
	.loc 1 333 0
	movi.n	a13, 1
	mov.n	a14, a2
	.loc 1 331 0
	j	.L121
.LVL149:
.L123:
	.loc 1 332 0
	add.n	a10, a8, a12
	l8ui	a10, a10, 0
	bnez.n	a10, .L122
.LVL150:
.LBB177:
.LBB178:
	.loc 2 110 0 discriminator 1
	memw
	l32i.n	a10, a11, 0
.LBE178:
.LBE177:
	.loc 1 333 0 discriminator 1
	mov.n	a3, a14
	addmi	a10, a10, -0x100
	moveqz	a3, a13, a10
	add.n	a2, a2, a3
.LVL151:
.L122:
	.loc 1 331 0 discriminator 2
	addi.n	a8, a8, 1
.LVL152:
	addi.n	a11, a11, 4
.LVL153:
.L121:
	.loc 1 331 0 is_stmt 0 discriminator 1
	blt	a8, a9, .L123
.LBE176:
	.loc 1 337 0 is_stmt 1
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL154:
	.loc 1 339 0
	retw.n
.LFE35:
	.size	spi_flash_mmap_get_free_pages, .-spi_flash_mmap_get_free_pages
	.align	4
	.global	spi_flash_mark_modified_region
	.type	spi_flash_mark_modified_region, @function
spi_flash_mark_modified_region:
.LFB36:
	.loc 1 359 0
.LVL155:
	entry	sp, 32
.LCFI9:
	.loc 1 360 0
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	update_written_pages
.LVL156:
	retw.n
.LFE36:
	.size	spi_flash_mark_modified_region, .-spi_flash_mark_modified_region
	.section	.text.spi_flash_cache2phys,"ax",@progbits
	.literal_position
	.literal .LC49, -1073741824
	.literal .LC50, 851967
	.literal .LC51, 1074593791
	.literal .LC52, -1061158912
	.literal .LC53, 65535
	.align	4
	.global	spi_flash_cache2phys
	.type	spi_flash_cache2phys, @function
spi_flash_cache2phys:
.LFB39:
	.loc 1 407 0
.LVL157:
	entry	sp, 32
.LCFI10:
	.loc 1 410 0
	l32r	a10, .LC49
	l32r	a8, .LC50
	add.n	a10, a2, a10
	bltu	a8, a10, .L127
.L131:
	.loc 1 412 0
	movi.n	a2, -1
.LVL158:
	retw.n
.LVL159:
.L127:
	.loc 1 414 0
	l32r	a8, .LC51
	.loc 1 419 0
	srai	a10, a10, 16
	addi	a10, a10, 64
	.loc 1 414 0
	blt	a8, a2, .L130
	.loc 1 416 0
	l32r	a10, .LC52
	l32r	a8, .LC53
	add.n	a10, a2, a10
	add.n	a8, a10, a8
	movltz	a10, a8, a10
	srai	a10, a10, 16
.LVL160:
.L130:
	.loc 1 422 0
	movi	a8, 0xff
	bltu	a8, a10, .L131
	.loc 1 426 0
	call8	spi_flash_protected_read_mmu_entry
.LVL161:
	.loc 1 427 0
	beqi	a10, 256, .L131
.LVL162:
	.loc 1 432 0
	slli	a10, a10, 16
.LVL163:
	extui	a2, a2, 0, 16
.LVL164:
	or	a2, a10, a2
	.loc 1 433 0
	retw.n
.LFE39:
	.size	spi_flash_cache2phys, .-spi_flash_cache2phys
	.section	.iram1
	.literal_position
	.literal .LC54, 1061158912
	.literal .LC55, 1073741824
	.literal .LC56, 1072758784
	.align	4
	.global	spi_flash_phys2cache
	.type	spi_flash_phys2cache, @function
spi_flash_phys2cache:
.LFB40:
	.loc 1 436 0
.LVL165:
	entry	sp, 32
.LCFI11:
	.loc 1 437 0
	extui	a7, a2, 16, 16
.LVL166:
	.loc 1 441 0
	beqz.n	a3, .L141
	.loc 1 449 0
	l32r	a5, .LC55
	.loc 1 450 0
	movi.n	a3, 0x40
.LVL167:
	.loc 1 448 0
	movi	a6, 0x100
	.loc 1 447 0
	movi.n	a4, 0x4d
	j	.L136
.LVL168:
.L141:
	.loc 1 444 0
	l32r	a5, .LC54
	.loc 1 443 0
	movi.n	a6, 0x40
	.loc 1 442 0
	mov.n	a4, a3
.LVL169:
.L136:
	.loc 1 452 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL170:
	l32r	a8, .LC56
	addx4	a8, a4, a8
.LBB179:
	.loc 1 454 0
	j	.L137
.LVL171:
.L140:
.LBB180:
.LBB181:
	.loc 2 110 0
	memw
	l32i.n	a9, a8, 0
	addi.n	a8, a8, 4
.LVL172:
.LBE181:
.LBE180:
	.loc 1 455 0
	bne	a7, a9, .L138
.LVL173:
.LBB182:
	.loc 1 457 0
	sub	a4, a4, a3
.LVL174:
	slli	a4, a4, 16
.LVL175:
	add.n	a4, a4, a5
.LVL176:
	.loc 1 459 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL177:
	.loc 1 460 0
	extui	a2, a2, 0, 16
.LVL178:
	or	a2, a2, a4
	retw.n
.LVL179:
.L138:
.LBE182:
	.loc 1 454 0 discriminator 2
	addi.n	a4, a4, 1
.LVL180:
.L137:
	.loc 1 454 0 is_stmt 0 discriminator 1
	blt	a4, a6, .L140
.LBE179:
	.loc 1 464 0 is_stmt 1
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL181:
	.loc 1 465 0
	movi.n	a2, 0
.LVL182:
	.loc 1 466 0
	retw.n
.LFE40:
	.size	spi_flash_phys2cache, .-spi_flash_phys2cache
	.section	.rodata.__func__$5765,"a",@progbits
	.type	__func__$5765, @object
	.size	__func__$5765, 17
__func__$5765:
	.string	"spi_flash_munmap"
	.section	.rodata.__func__$5756,"a",@progbits
	.type	__func__$5756, @object
	.size	__func__$5756, 21
__func__$5756:
	.string	"spi_flash_mmap_pages"
	.section	.bss.written_pages,"aw",@nobits
	.align	4
	.type	written_pages, @object
	.size	written_pages, 32
written_pages:
	.zero	32
	.section	.bss.s_mmap_last_handle,"aw",@nobits
	.align	4
	.type	s_mmap_last_handle, @object
	.size	s_mmap_last_handle, 4
s_mmap_last_handle:
	.zero	4
	.section	.bss.s_mmap_page_refcnt,"aw",@nobits
	.type	s_mmap_page_refcnt, @object
	.size	s_mmap_page_refcnt, 256
s_mmap_page_refcnt:
	.zero	256
	.section	.bss.s_mmap_entries_head,"aw",@nobits
	.align	4
	.type	s_mmap_entries_head, @object
	.size	s_mmap_entries_head, 4
s_mmap_entries_head:
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI3-.LFB38
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI7-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.text
.Letext0:
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/cache_utils.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1071
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x5
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x6
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x6
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x6
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x6
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x7
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x7
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x8
	.byte	0x18
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x18
	.byte	0x9
	.byte	0x89
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x9
	.byte	0x8a
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x9
	.byte	0x8b
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x9
	.byte	0x8c
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x9
	.byte	0x8d
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.byte	0x8e
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x9
	.byte	0x8f
	.4byte	0xcd
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x90
	.4byte	0xf5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0xa1
	.4byte	0x16a
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xa
	.byte	0xa4
	.4byte	0x151
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa
	.byte	0xa9
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0x43
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x43
	.4byte	0x1de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x43
	.4byte	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x14
	.byte	0x1
	.byte	0x3f
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x41
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0x180
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1
	.byte	0x47
	.4byte	0x20e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.4byte	0x1de
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0x3
	.4byte	0x22a
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x25a
	.uleb128 0xf
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x54
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x55
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0x3
	.4byte	0x276
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x3
	.byte	0x8a
	.byte	0x3
	.4byte	0x296
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x3
	.byte	0x8a
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x3
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x171
	.4byte	0xee
	.byte	0x3
	.4byte	0x30c
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x171
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x171
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x171
	.4byte	0xee
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x174
	.4byte	0xcd
	.uleb128 0xf
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x177
	.4byte	0xcd
	.uleb128 0xf
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x178
	.4byte	0x3e
	.uleb128 0x18
	.string	"idx"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x3e
	.uleb128 0x18
	.string	"bit"
	.byte	0x1
	.2byte	0x17e
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x345
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x66
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0x66
	.4byte	0x345
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x66
	.4byte	0x345
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x66
	.4byte	0x34b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.byte	0x8f
	.4byte	0xe3
	.byte	0x1
	.4byte	0x48b
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x8f
	.4byte	0x48b
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8f
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x90
	.4byte	0x496
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x90
	.4byte	0x49c
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.4byte	0xe3
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9f
	.4byte	0x4a2
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0xae
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0xaf
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb0
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb8
	.4byte	0x3e
	.uleb128 0x10
	.string	"end"
	.byte	0x1
	.byte	0xbb
	.4byte	0x3e
	.uleb128 0x1a
	.4byte	.LASF70
	.4byte	0x4b8
	.4byte	.LASF108
	.uleb128 0x1b
	.4byte	0x417
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x3e
	.byte	0
	.uleb128 0x1b
	.4byte	0x426
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.byte	0
	.uleb128 0x1b
	.4byte	0x45a
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0xbd
	.4byte	0x3e
	.uleb128 0x10
	.string	"pos"
	.byte	0x1
	.byte	0xbe
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc1
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc2
	.4byte	0xb7
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd4
	.4byte	0xcd
	.uleb128 0xf
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xd6
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd8
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd9
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x491
	.uleb128 0x1c
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x175
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x1d
	.4byte	0xa9
	.4byte	0x4b8
	.uleb128 0x1e
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x1c
	.4byte	0x4a8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x16b
	.4byte	0xee
	.byte	0x1
	.4byte	0x4e7
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x128
	.4byte	0xcd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54e
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x128
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12a
	.4byte	0xcd
	.uleb128 0x21
	.4byte	0x25a
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.2byte	0x12c
	.4byte	0x53b
	.uleb128 0x22
	.4byte	0x26a
	.4byte	.LLST1
	.byte	0
	.uleb128 0x23
	.4byte	.LVL1
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL4
	.4byte	0x1029
	.byte	0
	.uleb128 0x24
	.4byte	0x22a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c3
	.uleb128 0x25
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.uleb128 0x26
	.4byte	0x237
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.uleb128 0x26
	.4byte	0x241
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	0x24c
	.uleb128 0x28
	.4byte	0x20e
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.byte	0x54
	.4byte	0x5a7
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST4
	.byte	0
	.uleb128 0x29
	.4byte	0x20e
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x121
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f5
	.uleb128 0x23
	.4byte	.LVL15
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x22a
	.uleb128 0x23
	.4byte	.LVL17
	.4byte	0x1029
	.byte	0
	.uleb128 0x24
	.4byte	0x296
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70f
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	0x2b3
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	0x2bf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0x2cb
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x65e
	.uleb128 0x26
	.4byte	0x2d8
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x26
	.4byte	0x2e5
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	0x2f1
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	0x2fd
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.uleb128 0x22
	.4byte	0x2a7
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	0x2b3
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	0x2bf
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.uleb128 0x27
	.4byte	0x2cb
	.uleb128 0x25
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.uleb128 0x27
	.4byte	0x2d8
	.uleb128 0x25
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.uleb128 0x27
	.4byte	0x2e5
	.uleb128 0x27
	.4byte	0x2f1
	.uleb128 0x27
	.4byte	0x2fd
	.uleb128 0x21
	.4byte	0x276
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x18b
	.4byte	0x6ee
	.uleb128 0x22
	.4byte	0x282
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.uleb128 0x2e
	.4byte	.LVL34
	.4byte	0x1034
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL35
	.4byte	0x103f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x4
	.byte	0xa5
	.4byte	0xee
	.byte	0x3
	.4byte	0x732
	.uleb128 0xd
	.string	"p"
	.byte	0x4
	.byte	0xa5
	.4byte	0xb0
	.uleb128 0x10
	.string	"r"
	.byte	0x4
	.byte	0xa6
	.4byte	0xee
	.byte	0
	.uleb128 0x24
	.4byte	0x351
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaad
	.uleb128 0x22
	.4byte	0x361
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	0x36c
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	0x377
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	0x382
	.4byte	.LLST20
	.uleb128 0x22
	.4byte	0x38d
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	0x398
	.uleb128 0x27
	.4byte	0x3a3
	.uleb128 0x30
	.4byte	0x3ae
	.byte	0
	.uleb128 0x27
	.4byte	0x3b9
	.uleb128 0x27
	.4byte	0x3c4
	.uleb128 0x27
	.4byte	0x3cf
	.uleb128 0x27
	.4byte	0x3da
	.uleb128 0x27
	.4byte	0x3e5
	.uleb128 0x27
	.4byte	0x3f0
	.uleb128 0x31
	.4byte	0x3fb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5756
	.uleb128 0x28
	.4byte	0x70f
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.byte	0x1
	.byte	0x97
	.4byte	0x7db
	.uleb128 0x22
	.4byte	0x71f
	.4byte	.LLST22
	.uleb128 0x25
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.uleb128 0x26
	.4byte	0x728
	.4byte	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.4byte	0x7f2
	.uleb128 0x26
	.4byte	0x40d
	.4byte	.LLST24
	.byte	0
	.uleb128 0x25
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.uleb128 0x22
	.4byte	0x38d
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	0x382
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	0x377
	.4byte	.LLST27
	.uleb128 0x22
	.4byte	0x36c
	.4byte	.LLST28
	.uleb128 0x22
	.4byte	0x361
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x26
	.4byte	0x398
	.4byte	.LLST30
	.uleb128 0x26
	.4byte	0x3a3
	.4byte	.LLST31
	.uleb128 0x26
	.4byte	0x3ae
	.4byte	.LLST32
	.uleb128 0x26
	.4byte	0x3b9
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	0x3c4
	.4byte	.LLST34
	.uleb128 0x26
	.4byte	0x3cf
	.4byte	.LLST35
	.uleb128 0x26
	.4byte	0x3da
	.4byte	.LLST36
	.uleb128 0x26
	.4byte	0x3e5
	.4byte	.LLST37
	.uleb128 0x26
	.4byte	0x3f0
	.4byte	.LLST38
	.uleb128 0x31
	.4byte	0x3fb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5756
	.uleb128 0x32
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.4byte	0x8dc
	.uleb128 0x26
	.4byte	0x41c
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	0x4bd
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.byte	0x1
	.byte	0xa8
	.uleb128 0x22
	.4byte	0x4da
	.4byte	.LLST40
	.uleb128 0x22
	.4byte	0x4ce
	.4byte	.LLST41
	.uleb128 0x2e
	.4byte	.LVL54
	.4byte	0x296
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x30c
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.byte	0xb1
	.4byte	0x914
	.uleb128 0x22
	.4byte	0x339
	.4byte	.LLST42
	.uleb128 0x22
	.4byte	0x32e
	.4byte	.LLST43
	.uleb128 0x22
	.4byte	0x323
	.4byte	.LLST44
	.uleb128 0x22
	.4byte	0x318
	.4byte	.LLST45
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x961
	.uleb128 0x27
	.4byte	0x42b
	.uleb128 0x26
	.4byte	0x436
	.4byte	.LLST46
	.uleb128 0x25
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.uleb128 0x26
	.4byte	0x442
	.4byte	.LLST47
	.uleb128 0x26
	.4byte	0x44d
	.4byte	.LLST48
	.uleb128 0x29
	.4byte	0x20e
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.byte	0x1
	.byte	0xc1
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x9f8
	.uleb128 0x27
	.4byte	0x45b
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x26
	.4byte	0x467
	.4byte	.LLST50
	.uleb128 0x25
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.uleb128 0x27
	.4byte	0x471
	.uleb128 0x27
	.4byte	0x47c
	.uleb128 0x28
	.4byte	0x20e
	.4byte	.LBB157
	.4byte	.LBE157-.LBB157
	.byte	0x1
	.byte	0xd8
	.4byte	0x9ad
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST51
	.byte	0
	.uleb128 0x28
	.4byte	0x20e
	.4byte	.LBB159
	.4byte	.LBE159-.LBB159
	.byte	0x1
	.byte	0xd9
	.4byte	0x9ca
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST52
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL85
	.4byte	0x1048
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdc
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5756
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x276
	.4byte	.LBB166
	.4byte	.LBE166-.LBB166
	.byte	0x1
	.byte	0xfa
	.4byte	0xa2f
	.uleb128 0x22
	.4byte	0x282
	.4byte	.LLST53
	.uleb128 0x25
	.4byte	.LBB167
	.4byte	.LBE167-.LBB167
	.uleb128 0x2e
	.4byte	.LVL99
	.4byte	0x1034
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x276
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.byte	0x1
	.byte	0xfb
	.4byte	0xa65
	.uleb128 0x22
	.4byte	0x282
	.4byte	.LLST54
	.uleb128 0x25
	.4byte	.LBB169
	.4byte	.LBE169-.LBB169
	.uleb128 0x2e
	.4byte	.LVL100
	.4byte	0x1034
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL47
	.4byte	0x1053
	.4byte	0xa7f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x22a
	.uleb128 0x23
	.4byte	.LVL101
	.4byte	0x1029
	.uleb128 0x2e
	.4byte	.LVL102
	.4byte	0x105e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF82
	.byte	0x1
	.byte	0x75
	.4byte	0xe3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb8
	.uleb128 0x35
	.4byte	.LASF78
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	.LASF79
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST56
	.uleb128 0x35
	.4byte	.LASF56
	.byte	0x1
	.byte	0x75
	.4byte	0x16a
	.4byte	.LLST57
	.uleb128 0x36
	.4byte	.LASF62
	.byte	0x1
	.byte	0x76
	.4byte	0x496
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x36
	.4byte	.LASF63
	.byte	0x1
	.byte	0x76
	.4byte	0x49c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.byte	0x78
	.4byte	0xe3
	.4byte	.LLST58
	.uleb128 0x38
	.4byte	.LASF80
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.4byte	.LLST59
	.uleb128 0x38
	.4byte	.LASF61
	.byte	0x1
	.byte	0x81
	.4byte	0x3e
	.4byte	.LLST60
	.uleb128 0x38
	.4byte	.LASF60
	.byte	0x1
	.byte	0x83
	.4byte	0x345
	.4byte	.LLST61
	.uleb128 0x32
	.4byte	.LBB170
	.4byte	.LBE170-.LBB170
	.4byte	0xb64
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST62
	.byte	0
	.uleb128 0x33
	.4byte	.LVL110
	.4byte	0x1053
	.4byte	0xb81
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x33
	.4byte	.LVL116
	.4byte	0x351
	.4byte	0xba7
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL118
	.4byte	0x105e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc50
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x105
	.4byte	0x175
	.4byte	.LLST63
	.uleb128 0x3a
	.string	"it"
	.byte	0x1
	.2byte	0x108
	.4byte	0x4a2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.4byte	.LASF70
	.4byte	0xc60
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5765
	.uleb128 0x32
	.4byte	.LBB171
	.4byte	.LBE171-.LBB171
	.4byte	0xc16
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x3e
	.4byte	.LLST64
	.byte	0
	.uleb128 0x23
	.4byte	.LVL121
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL132
	.4byte	0x1029
	.uleb128 0x33
	.4byte	.LVL133
	.4byte	0x1048
	.4byte	0xc3f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL134
	.4byte	0x105e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xa9
	.4byte	0xc60
	.uleb128 0x1e
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x1c
	.4byte	0xc50
	.uleb128 0x3d
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x131
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd05
	.uleb128 0x3c
	.string	"it"
	.byte	0x1
	.2byte	0x135
	.4byte	0x4a2
	.4byte	.LLST65
	.uleb128 0x32
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.4byte	0xceb
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x139
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LBB173
	.4byte	.LBE173-.LBB173
	.uleb128 0x3e
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x13b
	.4byte	0xcd
	.4byte	.LLST66
	.uleb128 0x33
	.4byte	.LVL140
	.4byte	0x4e7
	.4byte	0xcd0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL142
	.4byte	0x1069
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL135
	.4byte	0x5c3
	.uleb128 0x2e
	.4byte	.LVL137
	.4byte	0x1069
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x141
	.4byte	0xcd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdff
	.uleb128 0x20
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x141
	.4byte	0x16a
	.4byte	.LLST67
	.uleb128 0x3e
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x145
	.4byte	0x3e
	.4byte	.LLST68
	.uleb128 0x3e
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x146
	.4byte	0x3e
	.4byte	.LLST69
	.uleb128 0x3e
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x147
	.4byte	0x3e
	.4byte	.LLST70
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x148
	.4byte	0xcd
	.uleb128 0x21
	.4byte	0x30c
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.byte	0x1
	.2byte	0x149
	.4byte	0xdad
	.uleb128 0x2b
	.4byte	0x339
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3423
	.sleb128 0
	.uleb128 0x2b
	.4byte	0x32e
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3407
	.sleb128 0
	.uleb128 0x2b
	.4byte	0x323
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3391
	.sleb128 0
	.uleb128 0x22
	.4byte	0x318
	.4byte	.LLST71
	.byte	0
	.uleb128 0x32
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.4byte	0xde3
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x3e
	.4byte	.LLST72
	.uleb128 0x40
	.4byte	0x20e
	.4byte	.LBB177
	.4byte	.LBE177-.LBB177
	.byte	0x1
	.2byte	0x14c
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL145
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL146
	.4byte	0x22a
	.uleb128 0x23
	.4byte	.LVL154
	.4byte	0x1029
	.byte	0
	.uleb128 0x39
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x166
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4d
	.uleb128 0x41
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x166
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x166
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LVL156
	.4byte	0x296
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x196
	.4byte	0xcd
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebb
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x196
	.4byte	0xb0
	.4byte	.LLST74
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.2byte	0x198
	.4byte	0xd8
	.uleb128 0x3e
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x199
	.4byte	0x25
	.4byte	.LLST75
	.uleb128 0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xcd
	.4byte	.LLST76
	.uleb128 0x3e
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1af
	.4byte	0xcd
	.4byte	.LLST77
	.uleb128 0x23
	.4byte	.LVL161
	.4byte	0x4e7
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xb0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfad
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xcd
	.4byte	.LLST78
	.uleb128 0x20
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x16a
	.4byte	.LLST79
	.uleb128 0x42
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.4byte	.LLST80
	.uleb128 0x3a
	.string	"end"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x42
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x42
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.4byte	.LBB179
	.4byte	.LBE179-.LBB179
	.4byte	0xf9a
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x3e
	.4byte	.LLST81
	.uleb128 0x21
	.4byte	0x20e
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xf76
	.uleb128 0x22
	.4byte	0x21e
	.4byte	.LLST82
	.byte	0
	.uleb128 0x25
	.4byte	.LBB182
	.4byte	.LBE182-.LBB182
	.uleb128 0x3e
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xd8
	.4byte	.LLST83
	.uleb128 0x23
	.4byte	.LVL177
	.4byte	0x1029
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL170
	.4byte	0x101e
	.uleb128 0x23
	.4byte	.LVL181
	.4byte	0x1029
	.byte	0
	.uleb128 0x43
	.4byte	.LASF93
	.byte	0x1
	.byte	0x47
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_entries_head
	.uleb128 0x1d
	.4byte	0xb7
	.4byte	0xfce
	.uleb128 0x1e
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x43
	.4byte	.LASF94
	.byte	0x1
	.byte	0x49
	.4byte	0xfbe
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.uleb128 0x43
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4a
	.4byte	0xcd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_last_handle
	.uleb128 0x1d
	.4byte	0xcd
	.4byte	0x1000
	.uleb128 0x1e
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x42
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x162
	.4byte	0xff0
	.uleb128 0x5
	.byte	0x3
	.4byte	written_pages
	.uleb128 0x44
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x21a
	.4byte	0x146
	.uleb128 0x45
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xb
	.byte	0x26
	.uleb128 0x45
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x29
	.uleb128 0x45
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x3
	.byte	0x8c
	.uleb128 0x46
	.4byte	.LASF113
	.4byte	.LASF113
	.uleb128 0x45
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xc
	.byte	0x29
	.uleb128 0x45
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xd
	.byte	0x37
	.uleb128 0x45
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xe
	.byte	0x5a
	.uleb128 0x45
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xf
	.byte	0xb2
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
	.uleb128 0x8
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4-1
	.4byte	.LFE33
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x7a
	.sleb128 8192
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x5
	.byte	0x7a
	.sleb128 8192
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x7a
	.sleb128 8188
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x73
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE38
	.2byte	0x15
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x23
	.uleb128 0xffff
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LFE38
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL34-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL34-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL43
	.4byte	.LVL63
	.2byte	0x22
	.byte	0x77
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x77
	.sleb128 -1342177280
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80001fff
	.byte	0x2c
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL81
	.2byte	0x22
	.byte	0x76
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x76
	.sleb128 -1342177280
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80001fff
	.byte	0x2c
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xc
	.4byte	0x3ff90000
	.byte	0x1c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x44
	.byte	0x4a
	.byte	0x24
	.byte	0x1c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80001fff
	.byte	0x2c
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x22
	.byte	0x76
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x76
	.sleb128 -1342177280
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80001fff
	.byte	0x2c
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL46
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL46
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL46
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL46
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL48
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL60
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL60
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL62
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL52
	.4byte	.LVL103
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL57
	.4byte	.LVL103
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2151
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL57
	.4byte	.LVL103
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2142
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL57
	.4byte	.LVL103
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2133
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x4
	.byte	0x7f
	.sleb128 -8192
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL83
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x5
	.byte	0x73
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL109
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL113
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149
	.4byte	.LVL154-1
	.2byte	0xf
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0x4d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL154-1
	.4byte	.LVL154
	.2byte	0xe
	.byte	0x30
	.byte	0x8
	.byte	0x4d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL154
	.2byte	0xf
	.byte	0x8
	.byte	0x40
	.byte	0x8
	.byte	0x73
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL147
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL160
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL165
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL172
	.4byte	.LVL177-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	0
	.4byte	0
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	0
	.4byte	0
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	0
	.4byte	0
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF103:
	.string	"printf"
.LASF37:
	.string	"count"
.LASF76:
	.string	"esp_ptr_internal"
.LASF97:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF3:
	.string	"size_t"
.LASF26:
	.string	"page_size"
.LASF61:
	.string	"page_count"
.LASF109:
	.string	"spi_flash_protected_read_mmu_entry"
.LASF63:
	.string	"out_handle"
.LASF4:
	.string	"__uint8_t"
.LASF60:
	.string	"pages"
.LASF101:
	.string	"heap_caps_malloc"
.LASF89:
	.string	"phys_offs"
.LASF10:
	.string	"long long unsigned int"
.LASF32:
	.string	"spi_flash_mmap_handle_t"
.LASF53:
	.string	"addr"
.LASF58:
	.string	"out_size"
.LASF45:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF83:
	.string	"spi_flash_mmap_get_free_pages"
.LASF102:
	.string	"free"
.LASF25:
	.string	"sector_size"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"mark"
.LASF31:
	.string	"spi_flash_mmap_memory_t"
.LASF40:
	.string	"mmap_entry_"
.LASF12:
	.string	"long int"
.LASF62:
	.string	"out_ptr"
.LASF100:
	.string	"__assert_func"
.LASF93:
	.string	"s_mmap_entries_head"
.LASF106:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spi_flash"
.LASF6:
	.string	"short int"
.LASF67:
	.string	"region_begin"
.LASF85:
	.string	"spi_flash_mark_modified_region"
.LASF74:
	.string	"spi_flash_ensure_unmodified_region"
.LASF91:
	.string	"page_delta"
.LASF96:
	.string	"written_pages"
.LASF28:
	.string	"esp_rom_spiflash_chip_t"
.LASF82:
	.string	"spi_flash_mmap"
.LASF8:
	.string	"__uint32_t"
.LASF54:
	.string	"Cache_Flush"
.LASF11:
	.string	"__intptr_t"
.LASF87:
	.string	"cached"
.LASF66:
	.string	"new_entry"
.LASF99:
	.string	"Cache_Flush_rom"
.LASF75:
	.string	"value"
.LASF56:
	.string	"memory"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"block_size"
.LASF64:
	.string	"did_flush"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"page"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF95:
	.string	"s_mmap_last_handle"
.LASF79:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF111:
	.string	"spi_flash_mmap_dump"
.LASF19:
	.string	"intptr_t"
.LASF7:
	.string	"__int32_t"
.LASF86:
	.string	"spi_flash_cache2phys"
.LASF110:
	.string	"spi_flash_protected_mmap_init"
.LASF81:
	.string	"paddr"
.LASF112:
	.string	"g_rom_flashchip"
.LASF52:
	.string	"page_start_addr"
.LASF92:
	.string	"base"
.LASF27:
	.string	"status_mask"
.LASF34:
	.string	"le_prev"
.LASF39:
	.string	"mmap_entry_t"
.LASF43:
	.string	"entry_pro"
.LASF13:
	.string	"sizetype"
.LASF90:
	.string	"spi_flash_phys2cache"
.LASF88:
	.string	"cache_page"
.LASF44:
	.string	"entry_app"
.LASF29:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF30:
	.string	"SPI_FLASH_MMAP_INST"
.LASF33:
	.string	"le_next"
.LASF47:
	.string	"cpu_no"
.LASF105:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
.LASF94:
	.string	"s_mmap_page_refcnt"
.LASF42:
	.string	"lh_first"
.LASF107:
	.string	"spi_flash_mmap_init"
.LASF55:
	.string	"get_mmu_region"
.LASF21:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF49:
	.string	"start_addr"
.LASF57:
	.string	"out_begin"
.LASF41:
	.string	"mmap_entries_head"
.LASF65:
	.string	"need_flush"
.LASF70:
	.string	"__func__"
.LASF68:
	.string	"region_size"
.LASF59:
	.string	"region_addr"
.LASF18:
	.string	"uint32_t"
.LASF50:
	.string	"length"
.LASF15:
	.string	"char"
.LASF98:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF22:
	.string	"device_id"
.LASF78:
	.string	"src_addr"
.LASF77:
	.string	"index"
.LASF38:
	.string	"entries"
.LASF84:
	.string	"spi_flash_munmap"
.LASF108:
	.string	"spi_flash_mmap_pages"
.LASF23:
	.string	"chip_size"
.LASF72:
	.string	"table_val"
.LASF113:
	.string	"memset"
.LASF20:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF46:
	.string	"DPORT_REG_READ"
.LASF73:
	.string	"refcnt"
.LASF35:
	.string	"handle"
.LASF71:
	.string	"pageno"
.LASF69:
	.string	"start"
.LASF48:
	.string	"update_written_pages"
.LASF80:
	.string	"phys_page"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
