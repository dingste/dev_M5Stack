	.file	"flash_mmap.c"
	.text
.Ltext0:
	.section	.iram1.30,"ax",@progbits
	.literal_position
	.literal .LC0, 1072758784
	.align	4
	.type	spi_flash_protected_read_mmu_entry, @function
spi_flash_protected_read_mmu_entry:
.LFB42:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
	.loc 1 278 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 280 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL1:
	.loc 1 281 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL2:
.LBB69:
.LBB70:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 77 0
	memw
	l32i.n	a2, a2, 0
.LVL3:
.LBE70:
.LBE69:
	.loc 1 282 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL4:
	.loc 1 284 0
	retw.n
.LFE42:
	.size	spi_flash_protected_read_mmu_entry, .-spi_flash_protected_read_mmu_entry
	.section	.iram1.24,"ax",@progbits
	.literal_position
	.literal .LC3, 1072758784
	.literal .LC4, s_mmap_page_refcnt
	.align	4
	.type	spi_flash_mmap_init, @function
spi_flash_mmap_init:
.LFB36:
	.loc 1 65 0
	entry	sp, 32
.LCFI1:
	.loc 1 66 0
	l32r	a14, .LC4
	movi.n	a12, 0
	l8ui	a2, a14, 0
	l32r	a10, .LC3
	bne	a2, a12, .L2
	movi	a13, 0x100
.LBB80:
.LBB81:
	.loc 1 79 0
	movi.n	a15, 1
	.loc 1 80 0
	mov.n	a4, a15
	mov.n	a2, a13
.L13:
.LVL5:
	addmi	a3, a10, 0x2000
.LBB82:
.LBB83:
	.loc 2 110 0
	memw
	l32i.n	a5, a10, 0
.LVL6:
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	memw
	l32i.n	a11, a3, 0
.LBE85:
.LBE84:
	.loc 1 74 0
	beq	a5, a11, .L4
.LVL7:
	.loc 1 77 0
	memw
	s32i.n	a13, a10, 0
	.loc 1 76 0
	movi	a11, 0x100
.LVL8:
.L4:
	.loc 1 79 0
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
	.loc 1 80 0
	add.n	a3, a14, a12
.LVL9:
	s8i	a4, a3, 0
	j	.L7
.LVL10:
.L5:
	.loc 1 82 0
	memw
	s32i.n	a13, a10, 0
	.loc 1 83 0
	memw
	s32i.n	a13, a3, 0
.LVL11:
.L7:
.LBE81:
	.loc 1 70 0
	addi.n	a12, a12, 1
.LVL12:
	addi.n	a10, a10, 4
.LVL13:
	addi.n	a2, a2, -1
	bnez.n	a2, .L13
.LVL14:
.L2:
	retw.n
.LBE80:
.LFE36:
	.size	spi_flash_mmap_init, .-spi_flash_mmap_init
	.section	.iram1.29,"ax",@progbits
	.align	4
	.type	spi_flash_protected_mmap_init, @function
spi_flash_protected_mmap_init:
.LFB41:
	.loc 1 271 0
	entry	sp, 32
.LCFI2:
	.loc 1 272 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL15:
	.loc 1 273 0
	call8	spi_flash_mmap_init
.LVL16:
	.loc 1 274 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL17:
	retw.n
.LFE41:
	.size	spi_flash_protected_mmap_init, .-spi_flash_protected_mmap_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"s_mmap_page_refcnt[i] == 0 || (entry_pro == pages[pageno] && entry_app == pages[pageno])"
.LC20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
	.section	.iram1.27,"ax",@progbits
	.literal_position
	.literal .LC7, 1061158912
	.literal .LC8, 1074593792
	.literal .LC9, -1073283072
	.literal .LC10, 1253375
	.literal .LC11, -1342177280
	.literal .LC12, 8191
	.literal .LC13, g_rom_flashchip
	.literal .LC14, 2052
	.literal .LC15, 1072758784
	.literal .LC16, s_mmap_page_refcnt
	.literal .LC18, .LC17
	.literal .LC19, __func__$5798
	.literal .LC21, .LC20
	.literal .LC22, s_mmap_entries_head
	.literal .LC23, s_mmap_last_handle
	.align	4
	.global	spi_flash_mmap_pages
	.type	spi_flash_mmap_pages, @function
spi_flash_mmap_pages:
.LFB39:
	.loc 1 132 0
.LVL18:
	entry	sp, 64
.LCFI3:
.LVL19:
	.loc 1 132 0
	s32i.n	a5, sp, 0
	s32i.n	a6, sp, 8
	.loc 1 136 0
	movi	a7, 0x102
	.loc 1 135 0
	beqz.n	a3, .L18
.LVL20:
	.loc 1 138 0
	l32r	a5, .LC9
.LVL21:
	l32r	a8, .LC10
	add.n	a5, a2, a5
.LBB113:
.LBB114:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 3 176 0
	mov.n	a6, a2
.LVL22:
.LBE114:
.LBE113:
	.loc 1 138 0
	bgeu	a8, a5, .L51
	l32r	a5, .LC11
	l32r	a8, .LC12
	add.n	a5, a2, a5
	bltu	a8, a5, .L18
.L51:
.LBB115:
	.loc 1 142 0
	l32r	a5, .LC13
	mov.n	a8, a2
	l32i.n	a9, a5, 4
.LVL23:
	mov.n	a7, a3
	loop	a7, .L22_LEND
.LVL24:
.L22:
	l32i.n	a5, a8, 0
	bltz	a5, .L46
	.loc 1 142 0 is_stmt 0 discriminator 1
	slli	a5, a5, 16
	addi.n	a8, a8, 4
	bgeu	a5, a9, .L46
	.loc 1 141 0 is_stmt 1 discriminator 2
	.L22_LEND:
.LVL25:
.LBE115:
.LBB116:
.LBB117:
	.loc 1 146 0
	l32r	a11, .LC14
	movi.n	a10, 0x14
	call8	heap_caps_malloc
.LVL26:
	mov.n	a5, a10
.LVL27:
	.loc 1 147 0
	bnez.n	a10, .L23
.LVL28:
.L25:
	.loc 1 148 0
	movi	a7, 0x101
	j	.L18
.LVL29:
.L23:
	.loc 1 151 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL30:
	.loc 1 153 0
	call8	spi_flash_mmap_init
.LVL31:
.LBB118:
.LBB119:
	.loc 1 91 0
	beqz.n	a4, .L47
	.loc 1 100 0
	l32r	a4, .LC8
.LVL32:
	.loc 1 99 0
	movi	a7, 0x73
	.loc 1 100 0
	s32i.n	a4, sp, 4
	.loc 1 98 0
	movi.n	a4, 0x4d
	j	.L24
.LVL33:
.L47:
	.loc 1 95 0
	l32r	a8, .LC7
	.loc 1 94 0
	movi.n	a7, 0x40
	.loc 1 95 0
	s32i.n	a8, sp, 4
.LVL34:
.L24:
.LBE119:
.LBE118:
	.loc 1 159 0
	bltu	a7, a3, .L25
	.loc 1 168 0
	add.n	a7, a7, a4
.LVL35:
	sub	a7, a7, a3
	addi.n	a7, a7, 1
.LVL36:
	subx4	a11, a4, a2
	.loc 1 169 0
	mov.n	a8, a4
	j	.L26
.LVL37:
.L30:
.LBB120:
.LBB121:
	.loc 1 175 0
	l32r	a12, .LC16
	add.n	a14, a13, a10
.LVL38:
.LBB122:
.LBB123:
	.loc 2 110 0
	memw
	l32i.n	a15, a14, 0
.LVL39:
.LBE123:
.LBE122:
	.loc 1 175 0
	add.n	a14, a9, a12
.LVL40:
	.loc 1 176 0
	l8ui	a14, a14, 0
.LVL41:
	beqz.n	a14, .L27
	l32i.n	a14, a10, 0
	beq	a15, a14, .L27
.LVL42:
.L31:
.LBE121:
	.loc 1 182 0
	sub	a9, a9, a8
.LVL43:
	addi.n	a11, a11, 4
	bne	a3, a9, .L71
	j	.L28
.LVL44:
.L27:
	.loc 1 173 0
	addi.n	a9, a9, 1
.LVL45:
	addi.n	a10, a10, 4
.LVL46:
	j	.L34
.LVL47:
.L48:
	l32r	a12, .LC15
	add.n	a15, a8, a3
.LBE120:
	.loc 1 169 0
	mov.n	a10, a2
	mov.n	a9, a8
.LBB124:
	.loc 1 173 0
	s32i.n	a15, sp, 12
	add.n	a13, a11, a12
.L34:
.LVL48:
	l32i.n	a15, sp, 12
	bltu	a9, a15, .L30
	j	.L31
.LVL49:
.L28:
.LBE124:
	.loc 1 187 0
	bne	a7, a8, .L72
	j	.L32
.L71:
	.loc 1 169 0
	addi.n	a8, a8, 1
.LVL50:
.L26:
	blt	a8, a7, .L48
	j	.L28
.L72:
	l32r	a2, .LC16
.LVL51:
	l32r	a10, .LC15
.LBB125:
.LBB126:
	.loc 1 195 0
	add.n	a9, a3, a8
	add.n	a11, a8, a2
	addx4	a10, a8, a10
.LBE126:
.LBE125:
	.loc 1 187 0
	movi.n	a14, 0
.LBB134:
.LBB132:
	.loc 1 195 0
	s32i.n	a9, sp, 12
	movi.n	a13, 1
	j	.L35
.LVL52:
.L32:
.LBE132:
.LBE134:
	.loc 1 188 0
	l32i.n	a12, sp, 8
	movi.n	a2, 0
.LVL53:
	.loc 1 189 0
	l32i.n	a15, sp, 0
	.loc 1 188 0
	s32i.n	a2, a12, 0
	.loc 1 189 0
	s32i.n	a2, a15, 0
.LVL54:
	.loc 1 190 0
	movi	a7, 0x101
.LVL55:
	j	.L36
.LVL56:
.L41:
	addmi	a2, a10, 0x2000
.LVL57:
.LBB135:
.LBB133:
.LBB127:
	.loc 1 199 0
	l8ui	a7, a11, 0
.LBB128:
.LBB129:
	.loc 2 110 0
	memw
	l32i.n	a9, a10, 0
.LVL58:
.LBE129:
.LBE128:
.LBB130:
.LBB131:
	memw
	l32i.n	a12, a2, 0
.LBE131:
.LBE130:
	.loc 1 199 0
	beqz.n	a7, .L37
	l32i.n	a2, a6, 0
.LVL59:
	movi.n	a15, 0
	sub	a9, a9, a2
	movnez	a15, a13, a9
	extui	a9, a15, 0, 8
	bnez.n	a9, .L52
	sub	a12, a12, a2
	movnez	a9, a13, a12
	beqz.n	a9, .L38
.L52:
	l32r	a13, .LC18
	l32r	a12, .LC19
	l32r	a10, .LC21
.LVL60:
	movi	a11, 0xc9
.LVL61:
	call8	__assert_func
.LVL62:
.L37:
	.loc 1 203 0
	l32i.n	a15, a6, 0
	sub	a9, a9, a15
	movnez	a7, a13, a9
	bnez.n	a7, .L53
	sub	a12, a12, a15
	mov.n	a9, a7
	movnez	a9, a13, a12
	beqz.n	a9, .L38
.L53:
	.loc 1 204 0
	memw
	s32i.n	a15, a10, 0
	.loc 1 205 0
	l32i.n	a7, a6, 0
	.loc 1 206 0
	movi.n	a14, 1
	.loc 1 205 0
	memw
	s32i.n	a7, a2, 0
.LVL63:
.L38:
	.loc 1 209 0
	l8ui	a2, a11, 0
	addi.n	a6, a6, 4
	addi.n	a2, a2, 1
	s8i	a2, a11, 0
.LVL64:
	addi.n	a10, a10, 4
.LVL65:
	addi.n	a11, a11, 1
.LVL66:
.L35:
.LBE127:
	.loc 1 195 0
	l32r	a9, .LC16
	l32i.n	a12, sp, 12
	sub	a2, a11, a9
.LVL67:
	bne	a12, a2, .L41
.LBE133:
	.loc 1 212 0
	l32r	a2, .LC22
.LVL68:
	l32i.n	a6, a2, 0
	s32i.n	a6, a5, 12
	beqz.n	a6, .L42
	.loc 1 212 0
	addi.n	a7, a5, 12
	s32i.n	a7, a6, 16
.L42:
	.loc 1 214 0
	s32i.n	a3, a5, 8
	.loc 1 215 0
	l32r	a3, .LC23
.LVL69:
	.loc 1 212 0
	s32i.n	a5, a2, 0
	s32i.n	a2, a5, 16
	.loc 1 215 0
	l32i.n	a2, a3, 0
	.loc 1 216 0
	l32i.n	a15, sp, 8
	.loc 1 215 0
	addi.n	a2, a2, 1
	.loc 1 213 0
	s32i.n	a8, a5, 4
	.loc 1 215 0
	s32i.n	a2, a5, 0
	s32i.n	a2, a3, 0
	.loc 1 216 0
	s32i.n	a2, a15, 0
.LVL70:
	.loc 1 217 0
	sub	a8, a8, a4
.LVL71:
	l32i.n	a2, sp, 4
	slli	a8, a8, 16
	l32i.n	a3, sp, 0
	add.n	a8, a8, a2
	s32i.n	a8, a3, 0
.LVL72:
	.loc 1 218 0
	movi.n	a7, 0
.LBE135:
	.loc 1 227 0
	beq	a14, a7, .L36
.LVL73:
.LBB136:
.LBB137:
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/rom/cache.h"
	.loc 4 142 0
	mov.n	a10, a7
	call8	Cache_Flush_rom
.LVL74:
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL75:
.L36:
.LBE139:
.LBE138:
	.loc 1 235 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL76:
	.loc 1 236 0
	l32i.n	a4, sp, 0
.LVL77:
	l32i.n	a2, a4, 0
	bnez.n	a2, .L18
	.loc 1 237 0
	mov.n	a10, a5
	call8	free
.LVL78:
	j	.L18
.LVL79:
.L46:
.LBE117:
.LBE116:
	.loc 1 136 0
	movi	a7, 0x102
.LVL80:
.L18:
	.loc 1 240 0
	mov.n	a2, a7
	retw.n
.LFE39:
	.size	spi_flash_mmap_pages, .-spi_flash_mmap_pages
	.section	.iram1.26,"ax",@progbits
	.literal_position
	.literal .LC24, g_rom_flashchip
	.literal .LC25, 65535
	.literal .LC26, 2048
	.align	4
	.global	spi_flash_mmap
	.type	spi_flash_mmap, @function
spi_flash_mmap:
.LFB38:
	.loc 1 106 0
.LVL81:
	entry	sp, 48
.LCFI4:
	.loc 1 108 0
	extui	a7, a2, 0, 16
	.loc 1 106 0
	mov.n	a12, a4
	.loc 1 109 0
	movi	a10, 0x102
	.loc 1 108 0
	bnez.n	a7, .L74
	.loc 1 111 0
	l32r	a8, .LC24
	add.n	a4, a2, a3
.LVL82:
	l32i.n	a8, a8, 4
	bltu	a8, a4, .L74
.LVL83:
	.loc 1 116 0
	l32r	a4, .LC25
	.loc 1 118 0
	l32r	a11, .LC26
	.loc 1 116 0
	add.n	a3, a3, a4
.LVL84:
	extui	a3, a3, 16, 16
.LVL85:
	.loc 1 118 0
	slli	a10, a3, 2
	s32i.n	a12, sp, 0
	call8	heap_caps_malloc
.LVL86:
	mov.n	a4, a10
.LVL87:
	.loc 1 119 0
	l32i.n	a12, sp, 0
	.loc 1 120 0
	movi	a10, 0x101
	.loc 1 119 0
	beqz.n	a4, .L74
	.loc 1 115 0
	extui	a2, a2, 16, 16
.LVL88:
	mov.n	a9, a4
	mov.n	a8, a7
	j	.L75
.LVL89:
.L76:
.LBB140:
	.loc 1 123 0 discriminator 3
	add.n	a7, a8, a2
	s32i.n	a7, a9, 0
	.loc 1 122 0 discriminator 3
	addi.n	a8, a8, 1
.LVL90:
	addi.n	a9, a9, 4
.LVL91:
.L75:
	.loc 1 122 0 is_stmt 0 discriminator 1
	blt	a8, a3, .L76
.LBE140:
	.loc 1 125 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	spi_flash_mmap_pages
.LVL92:
	mov.n	a2, a10
.LVL93:
	.loc 1 126 0
	mov.n	a10, a4
	call8	free
.LVL94:
	.loc 1 127 0
	mov.n	a10, a2
.LVL95:
.L74:
	.loc 1 128 0
	mov.n	a2, a10
	retw.n
.LFE38:
	.size	spi_flash_mmap, .-spi_flash_mmap
	.section	.rodata.str1.1
.LC30:
	.string	"s_mmap_page_refcnt[i] > 0"
.LC34:
	.string	"0 && \"invalid handle, or handle already unmapped\""
	.section	.iram1.28,"ax",@progbits
	.literal_position
	.literal .LC27, s_mmap_entries_head
	.literal .LC28, s_mmap_page_refcnt
	.literal .LC29, 1072758784
	.literal .LC31, .LC30
	.literal .LC32, __func__$5807
	.literal .LC33, .LC20
	.literal .LC35, .LC34
	.align	4
	.global	spi_flash_munmap
	.type	spi_flash_munmap, @function
spi_flash_munmap:
.LFB40:
	.loc 1 243 0
.LVL96:
	entry	sp, 32
.LCFI5:
	.loc 1 244 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL97:
	.loc 1 247 0
	l32r	a3, .LC27
	l32i.n	a3, a3, 0
.LVL98:
	j	.L82
.L90:
	.loc 1 248 0
	l32i.n	a8, a3, 0
	bne	a8, a2, .L83
.LVL99:
	l32i.n	a8, a3, 4
	l32r	a9, .LC28
	l32r	a2, .LC29
.LVL100:
	add.n	a10, a8, a9
	mov.n	a11, a9
	addx4	a8, a8, a2
.LBB141:
	.loc 1 255 0
	movi	a12, 0x100
	.loc 1 252 0
	j	.L84
.LVL101:
.L87:
	.loc 1 253 0
	l8ui	a9, a10, 0
	bnez.n	a9, .L85
	.loc 1 253 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0xfd
	j	.L95
.L85:
	.loc 1 254 0 is_stmt 1
	addi.n	a9, a9, -1
	extui	a9, a9, 0, 8
	s8i	a9, a10, 0
	bnez.n	a9, .L86
	.loc 1 255 0
	memw
	s32i.n	a12, a8, 0
	addmi	a2, a8, 0x2000
	.loc 1 256 0
	memw
	s32i.n	a12, a2, 0
.L86:
.LVL102:
	addi.n	a10, a10, 1
.LVL103:
	addi.n	a8, a8, 4
.LVL104:
.L84:
	.loc 1 252 0 discriminator 1
	l32i.n	a2, a3, 4
	l32i.n	a9, a3, 8
	add.n	a9, a2, a9
	sub	a2, a10, a11
	blt	a2, a9, .L87
.LBE141:
	.loc 1 259 0
	l32i.n	a8, a3, 12
	beqz.n	a8, .L88
	.loc 1 259 0 discriminator 1
	l32i.n	a2, a3, 16
	s32i.n	a2, a8, 16
.L88:
	.loc 1 259 0 is_stmt 0 discriminator 3
	l32i.n	a2, a3, 16
	s32i.n	a8, a2, 0
	.loc 1 260 0 is_stmt 1 discriminator 3
	j	.L89
.LVL105:
.L83:
	.loc 1 247 0 discriminator 2
	l32i.n	a3, a3, 12
.LVL106:
.L82:
	.loc 1 247 0 discriminator 1
	bnez.n	a3, .L90
.LVL107:
.L89:
	.loc 1 263 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL108:
	.loc 1 264 0
	bnez.n	a3, .L91
	.loc 1 265 0
	l32r	a13, .LC35
	l32r	a12, .LC32
	movi	a11, 0x109
.L95:
	l32r	a10, .LC33
	call8	__assert_func
.LVL109:
.L91:
	.loc 1 267 0
	mov.n	a10, a3
	call8	free
.LVL110:
	retw.n
.LFE40:
	.size	spi_flash_munmap, .-spi_flash_munmap
	.section	.rodata.str1.1
.LC37:
	.string	"handle=%d page=%d count=%d\n"
.LC40:
	.string	"page %d: refcnt=%d paddr=%d\n"
	.section	.text.spi_flash_mmap_dump,"ax",@progbits
	.literal_position
	.literal .LC36, s_mmap_entries_head
	.literal .LC38, .LC37
	.literal .LC39, s_mmap_page_refcnt
	.literal .LC41, .LC40
	.align	4
	.global	spi_flash_mmap_dump
	.type	spi_flash_mmap_dump, @function
spi_flash_mmap_dump:
.LFB43:
	.loc 1 287 0
	entry	sp, 32
.LCFI6:
	.loc 1 288 0
	call8	spi_flash_protected_mmap_init
.LVL111:
	.loc 1 291 0
	l32r	a2, .LC36
	.loc 1 292 0
	l32r	a3, .LC38
	.loc 1 291 0
	l32i.n	a2, a2, 0
.LVL112:
	j	.L97
.L98:
	.loc 1 292 0 discriminator 3
	l32i.n	a13, a2, 8
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	call8	printf
.LVL113:
	.loc 1 291 0 discriminator 3
	l32i.n	a2, a2, 12
.LVL114:
.L97:
	.loc 1 291 0 discriminator 1
	bnez.n	a2, .L98
	l32r	a3, .LC39
.LVL115:
.L100:
.LBB142:
	.loc 1 295 0
	l8ui	a8, a3, 0
	beqz.n	a8, .L99
.LBB143:
	.loc 1 296 0
	mov.n	a10, a2
	call8	spi_flash_protected_read_mmu_entry
.LVL116:
	.loc 1 297 0
	mov.n	a13, a10
	l8ui	a12, a3, 0
	l32r	a10, .LC41
.LVL117:
	mov.n	a11, a2
	call8	printf
.LVL118:
.L99:
.LBE143:
	.loc 1 294 0 discriminator 2
	addi.n	a2, a2, 1
.LVL119:
	addi.n	a3, a3, 1
	bnei	a2, 256, .L100
.LBE142:
	.loc 1 300 0
	retw.n
.LFE43:
	.size	spi_flash_mmap_dump, .-spi_flash_mmap_dump
	.section	.iram1.31,"ax",@progbits
	.literal_position
	.literal .LC42, 1072758784
	.literal .LC43, s_mmap_page_refcnt
	.align	4
	.global	spi_flash_mmap_get_free_pages
	.type	spi_flash_mmap_get_free_pages, @function
spi_flash_mmap_get_free_pages:
.LFB44:
	.loc 1 303 0
.LVL120:
	entry	sp, 32
.LCFI7:
	.loc 1 304 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL121:
	.loc 1 305 0
	call8	spi_flash_mmap_init
.LVL122:
.LBB144:
.LBB145:
	.loc 1 99 0
	movi	a9, 0x73
	movi.n	a8, 0x40
	mov.n	a10, a9
	moveqz	a10, a8, a2
	movi.n	a9, 0
	movi.n	a8, 0x4d
	l32r	a11, .LC42
	moveqz	a8, a9, a2
.LVL123:
.LBE145:
.LBE144:
	.loc 1 306 0
	mov.n	a2, a9
.LVL124:
	addx4	a11, a8, a11
.LBB146:
	.loc 1 312 0
	add.n	a9, a10, a8
	.loc 1 313 0
	l32r	a12, .LC43
	.loc 1 314 0
	movi.n	a13, 1
	mov.n	a14, a2
	.loc 1 312 0
	j	.L107
.LVL125:
.L109:
	.loc 1 313 0
	add.n	a10, a8, a12
	l8ui	a10, a10, 0
	bnez.n	a10, .L108
.LVL126:
.LBB147:
.LBB148:
	.loc 2 110 0 discriminator 1
	memw
	l32i.n	a10, a11, 0
.LBE148:
.LBE147:
	.loc 1 314 0 discriminator 1
	mov.n	a3, a14
	addmi	a10, a10, -0x100
	moveqz	a3, a13, a10
	add.n	a2, a2, a3
.LVL127:
.L108:
	.loc 1 312 0 discriminator 2
	addi.n	a8, a8, 1
.LVL128:
	addi.n	a11, a11, 4
.LVL129:
.L107:
	.loc 1 312 0 is_stmt 0 discriminator 1
	blt	a8, a9, .L109
.LBE146:
	.loc 1 318 0 is_stmt 1
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL130:
	.loc 1 320 0
	retw.n
.LFE44:
	.size	spi_flash_mmap_get_free_pages, .-spi_flash_mmap_get_free_pages
	.section	.text.spi_flash_cache2phys,"ax",@progbits
	.literal_position
	.literal .LC44, -1073741824
	.literal .LC45, 851967
	.literal .LC46, 1074593791
	.literal .LC47, -1061158912
	.literal .LC48, 65535
	.align	4
	.global	spi_flash_cache2phys
	.type	spi_flash_cache2phys, @function
spi_flash_cache2phys:
.LFB45:
	.loc 1 323 0
.LVL131:
	entry	sp, 32
.LCFI8:
	.loc 1 326 0
	l32r	a10, .LC44
	l32r	a8, .LC45
	add.n	a10, a2, a10
	bltu	a8, a10, .L112
.L116:
	.loc 1 328 0
	movi.n	a2, -1
.LVL132:
	retw.n
.LVL133:
.L112:
	.loc 1 330 0
	l32r	a8, .LC46
	.loc 1 335 0
	srai	a10, a10, 16
	addi	a10, a10, 64
	.loc 1 330 0
	blt	a8, a2, .L115
	.loc 1 332 0
	l32r	a10, .LC47
	l32r	a8, .LC48
	add.n	a10, a2, a10
	add.n	a8, a10, a8
	movltz	a10, a8, a10
	srai	a10, a10, 16
.LVL134:
.L115:
	.loc 1 338 0
	movi	a8, 0xff
	bltu	a8, a10, .L116
	.loc 1 342 0
	call8	spi_flash_protected_read_mmu_entry
.LVL135:
	.loc 1 343 0
	beqi	a10, 256, .L116
.LVL136:
	.loc 1 348 0
	slli	a10, a10, 16
.LVL137:
	extui	a2, a2, 0, 16
.LVL138:
	or	a2, a10, a2
	.loc 1 349 0
	retw.n
.LFE45:
	.size	spi_flash_cache2phys, .-spi_flash_cache2phys
	.section	.iram1.32,"ax",@progbits
	.literal_position
	.literal .LC49, 1061158912
	.literal .LC50, 1073741824
	.literal .LC51, 1072758784
	.align	4
	.global	spi_flash_phys2cache
	.type	spi_flash_phys2cache, @function
spi_flash_phys2cache:
.LFB46:
	.loc 1 352 0
.LVL139:
	entry	sp, 32
.LCFI9:
	.loc 1 353 0
	extui	a7, a2, 16, 16
.LVL140:
	.loc 1 357 0
	beqz.n	a3, .L126
	.loc 1 365 0
	l32r	a5, .LC50
	.loc 1 366 0
	movi.n	a3, 0x40
.LVL141:
	.loc 1 364 0
	movi	a6, 0x100
	.loc 1 363 0
	movi.n	a4, 0x4d
	j	.L121
.LVL142:
.L126:
	.loc 1 360 0
	l32r	a5, .LC49
	.loc 1 359 0
	movi.n	a6, 0x40
	.loc 1 358 0
	mov.n	a4, a3
.LVL143:
.L121:
	.loc 1 368 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL144:
	l32r	a8, .LC51
	addx4	a8, a4, a8
.LBB149:
	.loc 1 370 0
	j	.L122
.LVL145:
.L125:
.LBB150:
.LBB151:
	.loc 2 110 0
	memw
	l32i.n	a9, a8, 0
	addi.n	a8, a8, 4
.LVL146:
.LBE151:
.LBE150:
	.loc 1 371 0
	bne	a7, a9, .L123
.LVL147:
.LBB152:
	.loc 1 373 0
	sub	a4, a4, a3
.LVL148:
	slli	a4, a4, 16
.LVL149:
	add.n	a4, a4, a5
.LVL150:
	.loc 1 375 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL151:
	.loc 1 376 0
	extui	a2, a2, 0, 16
.LVL152:
	or	a2, a2, a4
	retw.n
.LVL153:
.L123:
.LBE152:
	.loc 1 370 0 discriminator 2
	addi.n	a4, a4, 1
.LVL154:
.L122:
	.loc 1 370 0 is_stmt 0 discriminator 1
	blt	a4, a6, .L125
.LBE149:
	.loc 1 380 0 is_stmt 1
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL155:
	.loc 1 381 0
	movi.n	a2, 0
.LVL156:
	.loc 1 382 0
	retw.n
.LFE46:
	.size	spi_flash_phys2cache, .-spi_flash_phys2cache
	.section	.iram1.34,"ax",@progbits
	.literal_position
	.literal .LC52, 1072758784
	.literal .LC53, 1072759092
	.literal .LC54, -65536
	.literal .LC55, 65535
	.literal .LC56, 65536
	.align	4
	.global	spi_flash_check_and_flush_cache
	.type	spi_flash_check_and_flush_cache, @function
spi_flash_check_and_flush_cache:
.LFB48:
	.loc 1 411 0
.LVL157:
	entry	sp, 32
.LCFI10:
	.loc 1 415 0
	l32r	a10, .LC55
	.loc 1 413 0
	l32r	a9, .LC54
	.loc 1 415 0
	add.n	a3, a3, a10
.LVL158:
	.loc 1 413 0
	and	a8, a2, a9
.LVL159:
	.loc 1 415 0
	add.n	a2, a3, a2
.LVL160:
	sub	a2, a2, a8
	and	a9, a2, a9
.LVL161:
.LBB163:
	.loc 1 416 0
	add.n	a9, a8, a9
.LVL162:
.LBB164:
	.loc 1 418 0
	movi	a3, 0xff
.LBE164:
	.loc 1 416 0
	l32r	a12, .LC56
	j	.L128
.LVL163:
.L134:
.LBB181:
	.loc 1 417 0
	extui	a10, a8, 16, 16
.LVL164:
	.loc 1 418 0
	bltu	a3, a10, .L135
	l32r	a11, .LC52
.LBB165:
.LBB166:
.LBB167:
.LBB168:
	.loc 1 398 0
	movi.n	a2, 0x40
	loop	a2, .L131_LEND
.L131:
.LVL165:
.LBB169:
.LBB170:
	.loc 2 110 0
	memw
	l32i.n	a13, a11, 0
	addi.n	a11, a11, 4
.LVL166:
.LBE170:
.LBE169:
	.loc 1 399 0
	beq	a10, a13, .L137
	.loc 1 398 0
	.L131_LEND:
	l32r	a11, .LC53
.LVL167:
	movi	a2, 0xb3
	loop	a2, .L132_LEND
.L132:
.LVL168:
.LBB172:
.LBB171:
	.loc 2 110 0
	memw
	l32i.n	a13, a11, 0
	addi.n	a11, a11, 4
.LVL169:
.LBE171:
.LBE172:
	.loc 1 399 0
	beq	a10, a13, .L137
	.loc 1 398 0
	.L132_LEND:
	j	.L140
.LVL170:
.L137:
.LBE168:
.LBE167:
.LBE166:
.LBE165:
.LBB176:
.LBB177:
	.loc 4 142 0
	movi.n	a10, 0
.LVL171:
.LBE177:
.LBE176:
.LBB179:
.LBB175:
.LBB174:
.LBB173:
	.loc 1 401 0
	movi.n	a2, 1
.LVL172:
.LBE173:
.LBE174:
.LBE175:
.LBE179:
.LBB180:
.LBB178:
	.loc 4 142 0
	call8	Cache_Flush_rom
.LVL173:
.LBE178:
.LBE180:
	.loc 1 430 0
	retw.n
.LVL174:
.L140:
.LBE181:
	.loc 1 416 0 discriminator 2
	add.n	a8, a8, a12
.LVL175:
.L128:
	.loc 1 416 0 is_stmt 0 discriminator 1
	bltu	a8, a9, .L134
.L135:
.LBB182:
	.loc 1 419 0 is_stmt 1
	movi.n	a2, 0
.LBE182:
.LBE163:
	.loc 1 434 0
	retw.n
.LFE48:
	.size	spi_flash_check_and_flush_cache, .-spi_flash_check_and_flush_cache
	.section	.rodata.__func__$5807,"a",@progbits
	.type	__func__$5807, @object
	.size	__func__$5807, 17
__func__$5807:
	.string	"spi_flash_munmap"
	.section	.rodata.__func__$5798,"a",@progbits
	.type	__func__$5798, @object
	.size	__func__$5798, 21
__func__$5798:
	.string	"spi_flash_mmap_pages"
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI0-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI1-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x40
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI5-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI6-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI7-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI8-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI9-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI10-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
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
	.4byte	0xf25
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0xc0
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
	.byte	0x8f
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x9
	.byte	0x90
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x9
	.byte	0x91
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x9
	.byte	0x92
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x9
	.byte	0x93
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.byte	0x94
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x9
	.byte	0x95
	.4byte	0xcd
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x96
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
	.byte	0x36
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x36
	.4byte	0x1de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x36
	.4byte	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x14
	.byte	0x1
	.byte	0x32
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x33
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x34
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x35
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x36
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
	.byte	0x37
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1
	.byte	0x3a
	.4byte	0x20e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
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
	.4byte	.LASF102
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0x25a
	.uleb128 0xf
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x46
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x47
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x48
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
	.4byte	.LASF51
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0x2af
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x59
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x59
	.4byte	0x2af
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x59
	.4byte	0x2af
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x59
	.4byte	0x2b5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x4
	.byte	0x8a
	.byte	0x3
	.4byte	0x2db
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x4
	.byte	0x8a
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x4
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0x82
	.4byte	0xe3
	.byte	0x1
	.4byte	0x3fb
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0x82
	.4byte	0x3fb
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x82
	.4byte	0x16a
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x83
	.4byte	0x406
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0x83
	.4byte	0x40c
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x85
	.4byte	0xe3
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x86
	.4byte	0xee
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x92
	.4byte	0x412
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9c
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0x9d
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa5
	.4byte	0x3e
	.uleb128 0x10
	.string	"end"
	.byte	0x1
	.byte	0xa8
	.4byte	0x3e
	.uleb128 0x16
	.4byte	.LASF63
	.4byte	0x428
	.4byte	.LASF103
	.uleb128 0x17
	.4byte	0x396
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x8d
	.4byte	0x3e
	.byte	0
	.uleb128 0x17
	.4byte	0x3ca
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0xaa
	.4byte	0x3e
	.uleb128 0x10
	.string	"pos"
	.byte	0x1
	.byte	0xab
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0xae
	.4byte	0x3e
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0xaf
	.4byte	0xb7
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc1
	.4byte	0xcd
	.uleb128 0xf
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xc3
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc5
	.4byte	0xcd
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0xc6
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x401
	.uleb128 0x18
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
	.uleb128 0x19
	.4byte	0xa9
	.4byte	0x428
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	0x418
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x115
	.4byte	0xcd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x115
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x117
	.4byte	0xcd
	.uleb128 0x1e
	.4byte	0x25a
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x119
	.4byte	0x481
	.uleb128 0x1f
	.4byte	0x26a
	.4byte	.LLST1
	.byte	0
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xee6
	.byte	0
	.uleb128 0x21
	.4byte	0x22a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x509
	.uleb128 0x22
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x23
	.4byte	0x237
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.uleb128 0x23
	.4byte	0x241
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0x24c
	.uleb128 0x25
	.4byte	0x20e
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.byte	0x47
	.4byte	0x4ed
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST4
	.byte	0
	.uleb128 0x26
	.4byte	0x20e
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.byte	0x48
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53b
	.uleb128 0x20
	.4byte	.LVL15
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x22a
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0xee6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x3
	.byte	0xae
	.4byte	0xee
	.byte	0x3
	.4byte	0x55e
	.uleb128 0xd
	.string	"p"
	.byte	0x3
	.byte	0xae
	.4byte	0xb0
	.uleb128 0x10
	.string	"r"
	.byte	0x3
	.byte	0xaf
	.4byte	0xee
	.byte	0
	.uleb128 0x21
	.4byte	0x2db
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87c
	.uleb128 0x1f
	.4byte	0x2eb
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	0x2f6
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	0x301
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	0x30c
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	0x317
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	0x322
	.uleb128 0x28
	.4byte	0x32d
	.byte	0
	.uleb128 0x24
	.4byte	0x338
	.uleb128 0x24
	.4byte	0x343
	.uleb128 0x24
	.4byte	0x34e
	.uleb128 0x24
	.4byte	0x359
	.uleb128 0x24
	.4byte	0x364
	.uleb128 0x24
	.4byte	0x36f
	.uleb128 0x29
	.4byte	0x37a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x25
	.4byte	0x53b
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x1
	.byte	0x8a
	.4byte	0x602
	.uleb128 0x1f
	.4byte	0x54b
	.4byte	.LLST11
	.uleb128 0x22
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.uleb128 0x23
	.4byte	0x554
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.4byte	0x619
	.uleb128 0x23
	.4byte	0x38c
	.4byte	.LLST13
	.byte	0
	.uleb128 0x22
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.uleb128 0x1f
	.4byte	0x317
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	0x30c
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	0x301
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	0x2f6
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	0x2eb
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x23
	.4byte	0x322
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	0x32d
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	0x338
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	0x343
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	0x34e
	.4byte	.LLST23
	.uleb128 0x23
	.4byte	0x359
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	0x364
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	0x36f
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	0x37a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x25
	.4byte	0x276
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0x1
	.byte	0x9e
	.4byte	0x6e3
	.uleb128 0x1f
	.4byte	0x2a3
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	0x298
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	0x28d
	.4byte	.LLST29
	.uleb128 0x1f
	.4byte	0x282
	.4byte	.LLST30
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x730
	.uleb128 0x24
	.4byte	0x39b
	.uleb128 0x23
	.4byte	0x3a6
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.uleb128 0x23
	.4byte	0x3b2
	.4byte	.LLST32
	.uleb128 0x23
	.4byte	0x3bd
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	0x20e
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.byte	0x1
	.byte	0xae
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x7c7
	.uleb128 0x24
	.4byte	0x3cb
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x23
	.4byte	0x3d7
	.4byte	.LLST35
	.uleb128 0x22
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.uleb128 0x24
	.4byte	0x3e1
	.uleb128 0x24
	.4byte	0x3ec
	.uleb128 0x25
	.4byte	0x20e
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.byte	0xc5
	.4byte	0x77c
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST36
	.byte	0
	.uleb128 0x25
	.4byte	0x20e
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.byte	0xc6
	.4byte	0x799
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST37
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0xef1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5798
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x2bb
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.byte	0x1
	.byte	0xe7
	.4byte	0x7fe
	.uleb128 0x1f
	.4byte	0x2c7
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.uleb128 0x2d
	.4byte	.LVL74
	.4byte	0xefc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x2bb
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.byte	0xe8
	.4byte	0x834
	.uleb128 0x1f
	.4byte	0x2c7
	.4byte	.LLST39
	.uleb128 0x22
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.uleb128 0x2d
	.4byte	.LVL75
	.4byte	0xefc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL26
	.4byte	0xf07
	.4byte	0x84e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x20
	.4byte	.LVL30
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x22a
	.uleb128 0x20
	.4byte	.LVL76
	.4byte	0xee6
	.uleb128 0x2d
	.4byte	.LVL78
	.4byte	0xf12
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF74
	.byte	0x1
	.byte	0x68
	.4byte	0xe3
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x987
	.uleb128 0x31
	.4byte	.LASF70
	.byte	0x1
	.byte	0x68
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	.LASF71
	.byte	0x1
	.byte	0x68
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	.LASF47
	.byte	0x1
	.byte	0x68
	.4byte	0x16a
	.4byte	.LLST42
	.uleb128 0x32
	.4byte	.LASF56
	.byte	0x1
	.byte	0x69
	.4byte	0x406
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.4byte	.LASF57
	.byte	0x1
	.byte	0x69
	.4byte	0x40c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.byte	0x6b
	.4byte	0xe3
	.4byte	.LLST43
	.uleb128 0x34
	.4byte	.LASF72
	.byte	0x1
	.byte	0x73
	.4byte	0x3e
	.4byte	.LLST44
	.uleb128 0x34
	.4byte	.LASF55
	.byte	0x1
	.byte	0x74
	.4byte	0x3e
	.4byte	.LLST45
	.uleb128 0x34
	.4byte	.LASF54
	.byte	0x1
	.byte	0x76
	.4byte	0x2af
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.4byte	0x933
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3e
	.4byte	.LLST47
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL86
	.4byte	0xf07
	.4byte	0x950
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL92
	.4byte	0x2db
	.4byte	0x976
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL94
	.4byte	0xf12
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1b
	.uleb128 0x31
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf2
	.4byte	0x175
	.4byte	.LLST48
	.uleb128 0x36
	.string	"it"
	.byte	0x1
	.byte	0xf5
	.4byte	0x412
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	.LASF63
	.4byte	0xa2b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5807
	.uleb128 0x2a
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.4byte	0x9e1
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.4byte	0x3e
	.4byte	.LLST49
	.byte	0
	.uleb128 0x20
	.4byte	.LVL97
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL108
	.4byte	0xee6
	.uleb128 0x2f
	.4byte	.LVL109
	.4byte	0xef1
	.4byte	0xa0a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL110
	.4byte	0xf12
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xa9
	.4byte	0xa2b
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.4byte	0xa1b
	.uleb128 0x38
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad0
	.uleb128 0x39
	.string	"it"
	.byte	0x1
	.2byte	0x122
	.4byte	0x412
	.4byte	.LLST50
	.uleb128 0x2a
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.4byte	0xab6
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x126
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x3b
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x128
	.4byte	0xcd
	.4byte	.LLST51
	.uleb128 0x2f
	.4byte	.LVL116
	.4byte	0x42d
	.4byte	0xa9b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL118
	.4byte	0xf1d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL111
	.4byte	0x509
	.uleb128 0x2d
	.4byte	.LVL113
	.4byte	0xf1d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12e
	.4byte	0xcd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbca
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x12e
	.4byte	0x16a
	.4byte	.LLST52
	.uleb128 0x3b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x132
	.4byte	0x3e
	.4byte	.LLST53
	.uleb128 0x3b
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x133
	.4byte	0x3e
	.4byte	.LLST54
	.uleb128 0x3b
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x134
	.4byte	0x3e
	.4byte	.LLST55
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x135
	.4byte	0xcd
	.uleb128 0x1e
	.4byte	0x276
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x1
	.2byte	0x136
	.4byte	0xb78
	.uleb128 0x3d
	.4byte	0x2a3
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2858
	.sleb128 0
	.uleb128 0x3d
	.4byte	0x298
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2842
	.sleb128 0
	.uleb128 0x3d
	.4byte	0x28d
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2826
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x282
	.4byte	.LLST56
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.4byte	0xbae
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.2byte	0x138
	.4byte	0x3e
	.4byte	.LLST57
	.uleb128 0x3e
	.4byte	0x20e
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.2byte	0x139
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL121
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL122
	.4byte	0x22a
	.uleb128 0x20
	.4byte	.LVL130
	.4byte	0xee6
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x142
	.4byte	0xcd
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x142
	.4byte	0xb0
	.4byte	.LLST59
	.uleb128 0x3f
	.string	"c"
	.byte	0x1
	.2byte	0x144
	.4byte	0xd8
	.uleb128 0x3b
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x145
	.4byte	0x25
	.4byte	.LLST60
	.uleb128 0x3b
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x156
	.4byte	0xcd
	.4byte	.LLST61
	.uleb128 0x3b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x15b
	.4byte	0xcd
	.4byte	.LLST62
	.uleb128 0x20
	.4byte	.LVL135
	.4byte	0x42d
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x15f
	.4byte	0xb0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2a
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x15f
	.4byte	0xcd
	.4byte	.LLST63
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x15f
	.4byte	0x16a
	.4byte	.LLST64
	.uleb128 0x40
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x161
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x162
	.4byte	0x3e
	.4byte	.LLST65
	.uleb128 0x3a
	.string	"end"
	.byte	0x1
	.2byte	0x162
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x40
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x162
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x163
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.4byte	0xd17
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.2byte	0x172
	.4byte	0x3e
	.4byte	.LLST66
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.2byte	0x173
	.4byte	0xcf3
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST67
	.byte	0
	.uleb128 0x22
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.uleb128 0x3b
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x175
	.4byte	0xd8
	.4byte	.LLST68
	.uleb128 0x20
	.4byte	.LVL151
	.4byte	0xee6
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL144
	.4byte	0xedb
	.uleb128 0x20
	.4byte	.LVL155
	.4byte	0xee6
	.byte	0
	.uleb128 0x41
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x180
	.4byte	0xee
	.byte	0x1
	.4byte	0xd78
	.uleb128 0x42
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x180
	.4byte	0xcd
	.uleb128 0x1d
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x182
	.4byte	0xd78
	.uleb128 0x3f
	.string	"end"
	.byte	0x1
	.2byte	0x182
	.4byte	0xd78
	.uleb128 0xf
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x3e
	.uleb128 0xf
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x3e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x3e
	.4byte	0xd88
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x19a
	.4byte	0xee
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8c
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x19a
	.4byte	0x25
	.4byte	.LLST69
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x19a
	.4byte	0x25
	.4byte	.LLST70
	.uleb128 0x3b
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x19d
	.4byte	0xcd
	.4byte	.LLST71
	.uleb128 0x22
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.uleb128 0x3b
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xcd
	.4byte	.LLST72
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x3b
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xcd
	.4byte	.LLST73
	.uleb128 0x43
	.4byte	0xd2a
	.4byte	.LBB165
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xe5a
	.uleb128 0x44
	.4byte	0xd3b
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.4byte	0xd47
	.uleb128 0x24
	.4byte	0xd53
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.4byte	0xd60
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.4byte	0xd6b
	.uleb128 0x45
	.4byte	0x20e
	.4byte	.LBB169
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x18f
	.uleb128 0x1f
	.4byte	0x21e
	.4byte	.LLST74
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x2bb
	.4byte	.LBB176
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x1aa
	.uleb128 0x1f
	.4byte	0x2c7
	.4byte	.LLST75
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x2d
	.4byte	.LVL173
	.4byte	0xefc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3a
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_entries_head
	.uleb128 0x19
	.4byte	0xb7
	.4byte	0xead
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x46
	.4byte	.LASF90
	.byte	0x1
	.byte	0x3c
	.4byte	0xe9d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.uleb128 0x46
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3d
	.4byte	0xcd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_last_handle
	.uleb128 0x47
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x220
	.4byte	0x146
	.uleb128 0x48
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0x26
	.uleb128 0x48
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xb
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xc
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x4
	.byte	0x8c
	.uleb128 0x48
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xd
	.byte	0x37
	.uleb128 0x48
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xe
	.byte	0x5a
	.uleb128 0x48
	.4byte	.LASF98
	.4byte	.LASF98
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE42
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
	.4byte	.LFE42
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
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL70
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL51
	.2byte	0x22
	.byte	0x72
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x72
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
	.4byte	.LVL51
	.4byte	.LVL52
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
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x22
	.byte	0x72
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x72
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
	.4byte	.LVL53
	.4byte	.LVL56
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
	.4byte	.LVL56
	.4byte	.LVL79
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
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x22
	.byte	0x72
	.sleb128 -1073283072
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80131fff
	.byte	0x2c
	.byte	0x72
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
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x75
	.sleb128 8
	.4byte	.LVL70
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL27
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL34
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL36
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL31
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1669
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL31
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1660
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL31
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1651
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
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
.LLST35:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL74-1
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x5
	.byte	0x7a
	.sleb128 8192
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x7a
	.sleb128 8192
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0x7a
	.sleb128 8188
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x5
	.byte	0x73
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL130-1
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
	.4byte	.LVL130-1
	.4byte	.LVL130
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
.LLST55:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL130
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
.LLST56:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL123
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL139
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL153
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL146
	.4byte	.LVL151-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x5
	.byte	0x73
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LFE48
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
.LLST71:
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL163
	.4byte	.LFE48
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
.LLST72:
	.4byte	.LVL161
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL174
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL164
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL171
	.4byte	.LVL173-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	0
	.4byte	0
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	.LBB134
	.4byte	.LBE134
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	0
	.4byte	0
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB133
	.4byte	.LBE133
	.4byte	0
	.4byte	0
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	.LBB181
	.4byte	.LBE181
	.4byte	.LBB182
	.4byte	.LBE182
	.4byte	0
	.4byte	0
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	.LBB179
	.4byte	.LBE179
	.4byte	0
	.4byte	0
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	.LBB172
	.4byte	.LBE172
	.4byte	0
	.4byte	0
	.4byte	.LBB176
	.4byte	.LBE176
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	0
	.4byte	0
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"spi_flash_phys2cache"
.LASF45:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF106:
	.string	"spi_flash_munmap"
.LASF73:
	.string	"paddr"
.LASF24:
	.string	"block_size"
.LASF22:
	.string	"device_id"
.LASF74:
	.string	"spi_flash_mmap"
.LASF26:
	.string	"page_size"
.LASF69:
	.string	"index"
.LASF101:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spi_flash"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF58:
	.string	"need_flush"
.LASF13:
	.string	"sizetype"
.LASF27:
	.string	"status_mask"
.LASF77:
	.string	"cached"
.LASF8:
	.string	"__uint32_t"
.LASF100:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/flash_mmap.c"
.LASF43:
	.string	"entry_pro"
.LASF52:
	.string	"Cache_Flush"
.LASF79:
	.string	"phys_offs"
.LASF85:
	.string	"start_addr"
.LASF102:
	.string	"spi_flash_mmap_init"
.LASF108:
	.string	"g_rom_flashchip"
.LASF16:
	.string	"uint8_t"
.LASF11:
	.string	"__intptr_t"
.LASF72:
	.string	"phys_page"
.LASF78:
	.string	"cache_page"
.LASF107:
	.string	"spi_flash_mmap_dump"
.LASF66:
	.string	"refcnt"
.LASF97:
	.string	"free"
.LASF23:
	.string	"chip_size"
.LASF60:
	.string	"region_begin"
.LASF19:
	.string	"intptr_t"
.LASF86:
	.string	"length"
.LASF47:
	.string	"memory"
.LASF46:
	.string	"DPORT_REG_READ"
.LASF40:
	.string	"mmap_entry_"
.LASF38:
	.string	"entries"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF28:
	.string	"esp_rom_spiflash_chip_t"
.LASF57:
	.string	"out_handle"
.LASF90:
	.string	"s_mmap_page_refcnt"
.LASF36:
	.string	"page"
.LASF12:
	.string	"long int"
.LASF82:
	.string	"base"
.LASF44:
	.string	"entry_app"
.LASF98:
	.string	"printf"
.LASF42:
	.string	"lh_first"
.LASF61:
	.string	"region_size"
.LASF95:
	.string	"Cache_Flush_rom"
.LASF4:
	.string	"__uint8_t"
.LASF25:
	.string	"sector_size"
.LASF31:
	.string	"spi_flash_mmap_memory_t"
.LASF49:
	.string	"out_size"
.LASF5:
	.string	"unsigned char"
.LASF96:
	.string	"heap_caps_malloc"
.LASF63:
	.string	"__func__"
.LASF50:
	.string	"region_addr"
.LASF41:
	.string	"mmap_entries_head"
.LASF91:
	.string	"s_mmap_last_handle"
.LASF55:
	.string	"page_count"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"get_mmu_region"
.LASF94:
	.string	"__assert_func"
.LASF18:
	.string	"uint32_t"
.LASF53:
	.string	"cpu_no"
.LASF0:
	.string	"unsigned int"
.LASF75:
	.string	"spi_flash_mmap_get_free_pages"
.LASF30:
	.string	"SPI_FLASH_MMAP_INST"
.LASF105:
	.string	"spi_flash_protected_mmap_init"
.LASF62:
	.string	"start"
.LASF59:
	.string	"new_entry"
.LASF83:
	.string	"is_page_mapped_in_cache"
.LASF84:
	.string	"spi_flash_check_and_flush_cache"
.LASF89:
	.string	"s_mmap_entries_head"
.LASF15:
	.string	"char"
.LASF21:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF103:
	.string	"spi_flash_mmap_pages"
.LASF104:
	.string	"spi_flash_protected_read_mmu_entry"
.LASF88:
	.string	"addr"
.LASF48:
	.string	"out_begin"
.LASF56:
	.string	"out_ptr"
.LASF64:
	.string	"pageno"
.LASF39:
	.string	"mmap_entry_t"
.LASF1:
	.string	"short unsigned int"
.LASF87:
	.string	"page_start_addr"
.LASF14:
	.string	"long unsigned int"
.LASF65:
	.string	"table_val"
.LASF93:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF35:
	.string	"handle"
.LASF71:
	.string	"size"
.LASF37:
	.string	"count"
.LASF7:
	.string	"__int32_t"
.LASF92:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF81:
	.string	"page_delta"
.LASF70:
	.string	"src_addr"
.LASF76:
	.string	"spi_flash_cache2phys"
.LASF99:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"esp_ptr_internal"
.LASF32:
	.string	"spi_flash_mmap_handle_t"
.LASF67:
	.string	"value"
.LASF54:
	.string	"pages"
.LASF29:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF20:
	.string	"esp_err_t"
.LASF33:
	.string	"le_next"
.LASF34:
	.string	"le_prev"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
