	.file	"partition.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"it"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/partition.c"
	.section	.text.esp_partition_next,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3521
	.literal .LC4, .LC3
	.literal .LC5, s_partition_list_lock
	.align	4
	.global	esp_partition_next
	.type	esp_partition_next, @function
esp_partition_next:
.LFB3:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/partition.c"
	.loc 1 86 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 87 0
	bnez.n	a2, .L2
	.loc 1 87 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi.n	a11, 0x57
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 89 0 is_stmt 1
	l32i.n	a3, a2, 12
	bnez.n	a3, .L3
.L10:
.LVL2:
.LBB28:
.LBB29:
	.loc 1 199 0
	mov.n	a10, a2
	call8	free
.LVL3:
.LBE29:
.LBE28:
	.loc 1 91 0
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 93 0
	l32r	a3, .LC5
.LBB30:
.LBB31:
.LBB32:
	.loc 1 99 0
	movi	a5, 0xff
.LBE32:
.LBE31:
.LBE30:
	.loc 1 93 0
	mov.n	a10, a3
	call8	_lock_acquire
.LVL6:
	mov.n	a4, a3
	j	.L5
.L9:
.LVL7:
.LBB35:
.LBB34:
.LBB33:
	.loc 1 96 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a3, 0
	bne	a9, a8, .L6
	.loc 1 99 0
	l32i.n	a8, a2, 4
	beq	a8, a5, .L7
	l32i.n	a9, a3, 4
	bne	a8, a9, .L6
.L7:
	.loc 1 102 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L8
	.loc 1 102 0
	addi	a11, a3, 16
	call8	strcmp
.LVL8:
	beqz.n	a10, .L8
.L6:
.LBE33:
	.loc 1 94 0
	l32i.n	a3, a3, 36
.LVL9:
	s32i.n	a3, a2, 12
.L5:
	.loc 1 94 0
	l32i.n	a3, a2, 12
	bnez.n	a3, .L9
.L8:
	.loc 1 108 0
	mov.n	a10, a4
	call8	_lock_release
.LVL10:
	.loc 1 109 0
	l32i.n	a3, a2, 12
	beqz.n	a3, .L10
	.loc 1 113 0
	s32i.n	a3, a2, 16
	.loc 1 114 0
	l32i.n	a3, a3, 36
	s32i.n	a3, a2, 12
.LBE34:
.LBE35:
	.loc 1 116 0
	retw.n
.LFE3:
	.size	esp_partition_next, .-esp_partition_next
	.section	.text.esp_partition_find,"ax",@progbits
	.literal_position
	.literal .LC10, s_partition_list
	.literal .LC11, s_partition_list_lock
	.literal .LC12, 4096
	.literal .LC13, 32768
	.literal .LC14, 36864
	.literal .LC15, 20650
	.literal .LC16, 1073061888
	.literal .LC17, -67174400
	.literal .LC18, 65536
	.align	4
	.global	esp_partition_find
	.type	esp_partition_find, @function
esp_partition_find:
.LFB2:
	.loc 1 63 0
.LVL11:
	entry	sp, 64
.LCFI1:
	.loc 1 64 0
	l32r	a6, .LC10
	.loc 1 63 0
	s32i.n	a2, sp, 20
	.loc 1 64 0
	l32i.n	a5, a6, 0
	beqz.n	a5, .L21
.LVL12:
.L35:
.LBB44:
.LBB45:
	.loc 1 133 0
	movi.n	a10, 0x14
	call8	malloc
.LVL13:
	.loc 1 135 0
	l32i.n	a2, sp, 20
	.loc 1 136 0
	s32i.n	a3, a10, 4
	.loc 1 135 0
	s32i.n	a2, a10, 0
	.loc 1 138 0
	l32i.n	a2, a6, 0
	.loc 1 137 0
	s32i.n	a4, a10, 8
	.loc 1 138 0
	s32i.n	a2, a10, 12
	.loc 1 139 0
	movi.n	a2, 0
	s32i.n	a2, a10, 16
.LBE45:
.LBE44:
	.loc 1 80 0
	call8	esp_partition_next
.LVL14:
	mov.n	a2, a10
	.loc 1 82 0
	retw.n
.LVL15:
.L21:
.LBB46:
	.loc 1 66 0
	l32r	a7, .LC11
	mov.n	a10, a7
	call8	_lock_acquire
.LVL16:
	.loc 1 68 0
	l32i.n	a8, a6, 0
	bnez.n	a8, .L23
.LBB47:
.LBB48:
	.loc 1 150 0
	l32r	a11, .LC12
	mov.n	a12, a5
	mov.n	a10, a5
	mov.n	a14, sp
	addi.n	a13, sp, 4
	call8	spi_flash_mmap
.LVL17:
	mov.n	a5, a10
.LVL18:
	.loc 1 152 0
	bnez.n	a10, .L23
	.loc 1 157 0
	l32i.n	a9, sp, 4
	.loc 1 158 0
	l32r	a10, .LC14
	.loc 1 156 0
	l32r	a8, .LC13
	.loc 1 158 0
	add.n	a10, a9, a10
	.loc 1 156 0
	add.n	a7, a9, a8
.LVL19:
	.loc 1 158 0
	s32i.n	a10, sp, 16
.LVL20:
	.loc 1 160 0
	mov.n	a2, a5
.LVL21:
	j	.L25
.LVL22:
.L34:
.LBB49:
	.loc 1 162 0
	l16ui	a9, a7, 0
	l32r	a8, .LC15
	bne	a9, a8, .L26
	.loc 1 166 0
	movi.n	a10, 0x28
	call8	malloc
.LVL23:
	mov.n	a9, a10
.LVL24:
	.loc 1 167 0
	l32i.n	a10, a7, 4
.LBB50:
.LBB51:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 41 0
	movi.n	a11, 0
.LBE51:
.LBE50:
	.loc 1 167 0
	s32i.n	a10, a9, 8
	.loc 1 168 0
	l32i.n	a10, a7, 8
.LBB54:
.LBB52:
	.loc 2 44 0
	movi.n	a12, 1
.LBE52:
.LBE54:
	.loc 1 168 0
	s32i.n	a10, a9, 12
	.loc 1 169 0
	l8ui	a10, a7, 2
	s32i.n	a10, a9, 0
	.loc 1 170 0
	l8ui	a10, a7, 3
	s32i.n	a10, a9, 4
	.loc 1 171 0
	l32i.n	a10, a7, 28
	extui	a10, a10, 0, 1
	s8i	a10, a9, 33
.LBB55:
.LBB53:
	.loc 2 39 0
	l32r	a10, .LC16
	memw
	l32i.n	a10, a10, 0
	extui	a10, a10, 20, 8
.LVL25:
	j	.L27
.LVL26:
.L29:
	.loc 2 43 0
	bbci	a10, 0, .L28
	.loc 2 44 0
	xor	a11, a11, a12
.LVL27:
	extui	a11, a11, 0, 8
.LVL28:
.L28:
	.loc 2 46 0
	srli	a10, a10, 1
.LVL29:
.L27:
	.loc 2 42 0
	bnez.n	a10, .L29
.LBE53:
.LBE55:
	.loc 1 172 0
	beqz.n	a11, .L30
	l8ui	a10, a7, 2
.LVL30:
	beqz.n	a10, .L31
	.loc 1 175 0
	l32i.n	a11, a7, 0
.LVL31:
	l32r	a10, .LC17
	and	a10, a11, a10
	l32r	a11, .LC18
	bne	a10, a11, .L30
.L31:
	.loc 1 178 0
	movi.n	a10, 1
	s8i	a10, a9, 33
.L30:
	.loc 1 182 0
	movi.n	a12, 0x10
	add.n	a10, a9, a12
	addi.n	a11, a7, 12
	s32i.n	a9, sp, 24
	call8	strncpy
.LVL32:
	.loc 1 183 0
	l32i.n	a9, sp, 24
	movi.n	a10, 0
	s8i	a10, a9, 32
	.loc 1 185 0
	bnez.n	a2, .L32
	.loc 1 186 0
	l32i.n	a10, a6, 0
	s32i.n	a9, a6, 0
	s32i.n	a10, a9, 36
	j	.L33
.L32:
	.loc 1 188 0
	l32i.n	a10, a2, 36
	s32i.n	a10, a9, 36
	s32i.n	a9, a2, 36
.L33:
.LVL33:
.LBE49:
	.loc 1 161 0
	addi	a7, a7, 32
.LVL34:
	mov.n	a2, a9
.LVL35:
.L25:
	l32i.n	a8, sp, 16
	bne	a8, a7, .L34
.L26:
	.loc 1 192 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL36:
.L23:
.LBE48:
.LBE47:
	.loc 1 71 0
	l32r	a10, .LC11
	call8	_lock_release
.LVL37:
	.loc 1 72 0
	beqz.n	a5, .L35
	.loc 1 73 0
	movi.n	a2, 0
.LBE46:
	.loc 1 83 0
	retw.n
.LFE2:
	.size	esp_partition_find, .-esp_partition_find
	.section	.text.esp_partition_iterator_release,"ax",@progbits
	.align	4
	.global	esp_partition_iterator_release
	.type	esp_partition_iterator_release, @function
esp_partition_iterator_release:
.LFB7:
	.loc 1 197 0
.LVL38:
	entry	sp, 32
.LCFI2:
	.loc 1 199 0
	mov.n	a10, a2
	call8	free
.LVL39:
	retw.n
.LFE7:
	.size	esp_partition_iterator_release, .-esp_partition_iterator_release
	.section	.rodata.str1.1
.LC19:
	.string	"iterator != NULL"
	.section	.text.esp_partition_get,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, __func__$3558
	.literal .LC22, .LC3
	.align	4
	.global	esp_partition_get
	.type	esp_partition_get, @function
esp_partition_get:
.LFB8:
	.loc 1 203 0
.LVL40:
	entry	sp, 32
.LCFI3:
	.loc 1 204 0
	bnez.n	a2, .L51
.LVL41:
.LBB58:
.LBB59:
	l32r	a13, .LC20
	l32r	a12, .LC21
	l32r	a10, .LC22
	movi	a11, 0xcc
	call8	__assert_func
.LVL42:
.L51:
.LBE59:
.LBE58:
	.loc 1 206 0
	l32i.n	a2, a2, 16
.LVL43:
	retw.n
.LFE8:
	.size	esp_partition_get, .-esp_partition_get
	.section	.text.esp_partition_find_first,"ax",@progbits
	.align	4
	.global	esp_partition_find_first
	.type	esp_partition_find_first, @function
esp_partition_find_first:
.LFB4:
	.loc 1 120 0
.LVL44:
	entry	sp, 32
.LCFI4:
	.loc 1 121 0
	mov.n	a11, a3
	mov.n	a10, a2
	mov.n	a12, a4
	call8	esp_partition_find
.LVL45:
	mov.n	a3, a10
.LVL46:
	.loc 1 123 0
	mov.n	a2, a10
.LVL47:
	.loc 1 122 0
	beqz.n	a10, .L53
	.loc 1 125 0
	call8	esp_partition_get
.LVL48:
	mov.n	a2, a10
.LVL49:
.LBB60:
.LBB61:
	.loc 1 199 0
	mov.n	a10, a3
	call8	free
.LVL50:
.L53:
.LBE61:
.LBE60:
	.loc 1 128 0
	retw.n
.LFE4:
	.size	esp_partition_find_first, .-esp_partition_find_first
	.section	.rodata.str1.1
.LC23:
	.string	"partition != NULL"
	.section	.text.esp_partition_verify,"ax",@progbits
	.literal_position
	.literal .LC24, .LC23
	.literal .LC25, __func__$3562
	.literal .LC26, .LC3
	.align	4
	.global	esp_partition_verify
	.type	esp_partition_verify, @function
esp_partition_verify:
.LFB9:
	.loc 1 209 0
.LVL51:
	entry	sp, 32
.LCFI5:
	.loc 1 210 0
	bnez.n	a2, .L56
	.loc 1 210 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	l32r	a10, .LC26
	movi	a11, 0xd2
	call8	__assert_func
.LVL52:
.L56:
	.loc 1 211 0 is_stmt 1
	l8ui	a3, a2, 16
	addi	a12, a2, 16
	movi.n	a4, 0
	.loc 1 212 0
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
	.loc 1 211 0
	moveqz	a12, a4, a3
.LVL53:
	.loc 1 212 0
	call8	esp_partition_find
.LVL54:
	j	.L63
.LVL55:
.L61:
.LBB62:
	.loc 1 216 0
	mov.n	a10, a3
	call8	esp_partition_get
.LVL56:
	.loc 1 218 0
	l32i.n	a9, a10, 8
	l32i.n	a8, a2, 8
	.loc 1 216 0
	mov.n	a4, a10
.LVL57:
	.loc 1 218 0
	bne	a9, a8, .L59
	.loc 1 219 0
	l32i.n	a9, a2, 12
	l32i.n	a8, a10, 12
	bne	a9, a8, .L59
	.loc 1 220 0
	l8ui	a9, a2, 33
	l8ui	a8, a10, 33
	bne	a9, a8, .L59
.LVL58:
.LBB63:
.LBB64:
	.loc 1 199 0
	mov.n	a10, a3
	call8	free
.LVL59:
.LBE64:
.LBE63:
	.loc 1 216 0
	mov.n	a2, a4
.LVL60:
	.loc 1 222 0
	retw.n
.LVL61:
.L59:
	.loc 1 224 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL62:
.L63:
	mov.n	a3, a10
.LVL63:
.LBE62:
	.loc 1 215 0
	bnez.n	a10, .L61
	.loc 1 227 0
	mov.n	a2, a10
.LVL64:
	.loc 1 228 0
	retw.n
.LFE9:
	.size	esp_partition_verify, .-esp_partition_verify
	.section	.text.esp_partition_write,"ax",@progbits
	.literal_position
	.literal .LC27, .LC23
	.literal .LC28, __func__$3585
	.literal .LC29, .LC3
	.align	4
	.global	esp_partition_write
	.type	esp_partition_write, @function
esp_partition_write:
.LFB11:
	.loc 1 262 0
.LVL65:
	entry	sp, 32
.LCFI6:
	.loc 1 262 0
	mov.n	a11, a4
	mov.n	a12, a5
	.loc 1 263 0
	bnez.n	a2, .L65
	.loc 1 263 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	l32r	a10, .LC29
	movi	a11, 0x107
	call8	__assert_func
.LVL66:
.L65:
	.loc 1 264 0 is_stmt 1
	l32i.n	a9, a2, 12
	.loc 1 265 0
	movi	a10, 0x102
	.loc 1 264 0
	bltu	a9, a3, .L66
	.loc 1 267 0
	add.n	a8, a3, a5
	.loc 1 268 0
	movi	a10, 0x104
	.loc 1 267 0
	bltu	a9, a8, .L66
	.loc 1 270 0
	l32i.n	a8, a2, 8
	.loc 1 271 0
	l8ui	a2, a2, 33
.LVL67:
	.loc 1 270 0
	add.n	a10, a3, a8
.LVL68:
	.loc 1 271 0
	beqz.n	a2, .L67
	.loc 1 272 0
	call8	spi_flash_write_encrypted
.LVL69:
	j	.L66
.LVL70:
.L67:
	.loc 1 274 0
	call8	spi_flash_write
.LVL71:
.L66:
	.loc 1 276 0
	mov.n	a2, a10
	retw.n
.LFE11:
	.size	esp_partition_write, .-esp_partition_write
	.section	.text.esp_partition_erase_range,"ax",@progbits
	.literal_position
	.literal .LC30, .LC23
	.literal .LC31, __func__$3591
	.literal .LC32, .LC3
	.align	4
	.global	esp_partition_erase_range
	.type	esp_partition_erase_range, @function
esp_partition_erase_range:
.LFB12:
	.loc 1 280 0
.LVL72:
	entry	sp, 32
.LCFI7:
	.loc 1 280 0
	mov.n	a11, a4
	.loc 1 281 0
	bnez.n	a2, .L71
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	l32r	a10, .LC32
	movi	a11, 0x119
	call8	__assert_func
.LVL73:
.L71:
	.loc 1 282 0 is_stmt 1
	l32i.n	a9, a2, 12
	.loc 1 283 0
	movi	a10, 0x102
	.loc 1 282 0
	bltu	a9, a3, .L72
	.loc 1 285 0
	add.n	a8, a3, a4
	.loc 1 286 0
	movi	a10, 0x104
	.loc 1 285 0
	bltu	a9, a8, .L72
	.loc 1 288 0
	extui	a8, a4, 0, 12
	bnez.n	a8, .L72
	.loc 1 291 0
	extui	a8, a3, 0, 12
	.loc 1 283 0
	movi	a10, 0x102
	.loc 1 291 0
	bnez.n	a8, .L72
	.loc 1 294 0
	l32i.n	a10, a2, 8
	add.n	a10, a3, a10
	call8	spi_flash_erase_range
.LVL74:
.L72:
	.loc 1 296 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LFE12:
	.size	esp_partition_erase_range, .-esp_partition_erase_range
	.section	.text.esp_partition_mmap,"ax",@progbits
	.literal_position
	.literal .LC33, .LC23
	.literal .LC34, __func__$3600
	.literal .LC35, .LC3
	.literal .LC36, -65536
	.align	4
	.global	esp_partition_mmap
	.type	esp_partition_mmap, @function
esp_partition_mmap:
.LFB13:
	.loc 1 309 0
.LVL76:
	entry	sp, 32
.LCFI8:
	.loc 1 309 0
	mov.n	a14, a7
	mov.n	a12, a5
	.loc 1 310 0
	bnez.n	a2, .L78
.LVL77:
.LBB67:
.LBB68:
	l32r	a13, .LC33
	l32r	a12, .LC34
	l32r	a10, .LC35
	movi	a11, 0x136
	call8	__assert_func
.LVL78:
.L78:
.LBE68:
.LBE67:
	.loc 1 311 0
	l32i.n	a9, a2, 12
	.loc 1 312 0
	movi	a10, 0x102
	.loc 1 311 0
	bltu	a9, a3, .L79
	.loc 1 314 0
	add.n	a8, a3, a4
	.loc 1 315 0
	movi	a10, 0x104
	.loc 1 314 0
	bltu	a9, a8, .L79
	.loc 1 317 0
	l32i.n	a2, a2, 8
.LVL79:
	.loc 1 321 0
	l32r	a10, .LC36
	.loc 1 317 0
	add.n	a3, a3, a2
.LVL80:
	.loc 1 319 0
	extui	a2, a3, 0, 16
.LVL81:
	.loc 1 321 0
	mov.n	a13, a6
	add.n	a11, a4, a2
	and	a10, a3, a10
.LVL82:
	call8	spi_flash_mmap
.LVL83:
	.loc 1 323 0
	bnez.n	a10, .L79
	.loc 1 324 0
	l32i.n	a3, a6, 0
.LVL84:
	add.n	a2, a3, a2
.LVL85:
	s32i.n	a2, a6, 0
.LVL86:
.L79:
	.loc 1 327 0
	mov.n	a2, a10
	retw.n
.LFE13:
	.size	esp_partition_mmap, .-esp_partition_mmap
	.section	.text.esp_partition_read,"ax",@progbits
	.literal_position
	.literal .LC37, .LC23
	.literal .LC38, __func__$3575
	.literal .LC39, .LC3
	.align	4
	.global	esp_partition_read
	.type	esp_partition_read, @function
esp_partition_read:
.LFB10:
	.loc 1 232 0
.LVL87:
	entry	sp, 48
.LCFI9:
	.loc 1 233 0
	bnez.n	a2, .L84
	.loc 1 233 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC38
	l32r	a10, .LC39
	movi	a11, 0xe9
	call8	__assert_func
.LVL88:
.L84:
	.loc 1 234 0 is_stmt 1
	l32i.n	a9, a2, 12
	.loc 1 235 0
	movi	a10, 0x102
	.loc 1 234 0
	bltu	a9, a3, .L85
	.loc 1 237 0
	add.n	a8, a3, a5
	.loc 1 238 0
	movi	a10, 0x104
	.loc 1 237 0
	bltu	a9, a8, .L85
	.loc 1 241 0
	l8ui	a8, a2, 33
	bnez.n	a8, .L86
	.loc 1 242 0
	l32i.n	a10, a2, 8
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a3, a10
	call8	spi_flash_read
.LVL89:
	j	.L85
.L86:
.LBB69:
	.loc 1 249 0
	mov.n	a10, a2
	mov.n	a15, sp
	addi.n	a14, sp, 4
	movi.n	a13, 0
	mov.n	a12, a5
	mov.n	a11, a3
	call8	esp_partition_mmap
.LVL90:
	mov.n	a2, a10
.LVL91:
	.loc 1 251 0
	bnez.n	a10, .L87
	.loc 1 254 0
	l32i.n	a11, sp, 4
	mov.n	a12, a5
	mov.n	a10, a4
	call8	memcpy
.LVL92:
	.loc 1 255 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL93:
.L87:
	.loc 1 249 0
	mov.n	a10, a2
.LVL94:
.L85:
.LBE69:
	.loc 1 258 0 discriminator 1
	mov.n	a2, a10
	retw.n
.LFE10:
	.size	esp_partition_read, .-esp_partition_read
	.section	.text.esp_partition_get_sha256,"ax",@progbits
	.align	4
	.global	esp_partition_get_sha256
	.type	esp_partition_get_sha256, @function
esp_partition_get_sha256:
.LFB14:
	.loc 1 330 0
.LVL95:
	entry	sp, 32
.LCFI10:
	.loc 1 331 0
	l32i.n	a12, a2, 0
	l32i.n	a11, a2, 12
	l32i.n	a10, a2, 8
	mov.n	a13, a3
	call8	bootloader_common_get_sha256_of_partition
.LVL96:
	.loc 1 332 0
	mov.n	a2, a10
.LVL97:
	retw.n
.LFE14:
	.size	esp_partition_get_sha256, .-esp_partition_get_sha256
	.section	.text.esp_partition_check_identity,"ax",@progbits
	.align	4
	.global	esp_partition_check_identity
	.type	esp_partition_check_identity, @function
esp_partition_check_identity:
.LFB15:
	.loc 1 335 0
.LVL98:
	entry	sp, 96
.LCFI11:
	.loc 1 336 0
	movi.n	a11, 0
	movi.n	a12, 0x40
	mov.n	a10, sp
	call8	memset
.LVL99:
	.loc 1 338 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_partition_get_sha256
.LVL100:
	beqz.n	a10, .L92
.LVL101:
.L94:
	.loc 1 346 0
	movi.n	a2, 0
.LVL102:
	retw.n
.LVL103:
.L92:
	.loc 1 339 0 discriminator 1
	mov.n	a10, a3
	addi	a11, sp, 32
	call8	esp_partition_get_sha256
.LVL104:
	mov.n	a3, a10
.LVL105:
	.loc 1 338 0 discriminator 1
	bnez.n	a10, .L94
	.loc 1 341 0
	movi.n	a12, 0x20
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	memcmp
.LVL106:
	movi.n	a2, 1
.LVL107:
	moveqz	a3, a2, a10
	extui	a2, a3, 0, 8
	.loc 1 347 0
	retw.n
.LFE15:
	.size	esp_partition_check_identity, .-esp_partition_check_identity
	.section	.rodata.__func__$3600,"a",@progbits
	.type	__func__$3600, @object
	.size	__func__$3600, 19
__func__$3600:
	.string	"esp_partition_mmap"
	.section	.rodata.__func__$3591,"a",@progbits
	.type	__func__$3591, @object
	.size	__func__$3591, 26
__func__$3591:
	.string	"esp_partition_erase_range"
	.section	.rodata.__func__$3585,"a",@progbits
	.type	__func__$3585, @object
	.size	__func__$3585, 20
__func__$3585:
	.string	"esp_partition_write"
	.section	.rodata.__func__$3575,"a",@progbits
	.type	__func__$3575, @object
	.size	__func__$3575, 19
__func__$3575:
	.string	"esp_partition_read"
	.section	.rodata.__func__$3562,"a",@progbits
	.type	__func__$3562, @object
	.size	__func__$3562, 21
__func__$3562:
	.string	"esp_partition_verify"
	.section	.rodata.__func__$3558,"a",@progbits
	.type	__func__$3558, @object
	.size	__func__$3558, 18
__func__$3558:
	.string	"esp_partition_get"
	.section	.rodata.__func__$3521,"a",@progbits
	.type	__func__$3521, @object
	.size	__func__$3521, 19
__func__$3521:
	.string	"esp_partition_next"
	.section	.bss.s_partition_list_lock,"aw",@nobits
	.align	4
	.type	s_partition_list_lock, @object
	.size	s_partition_list_lock, 4
s_partition_list_lock:
	.zero	4
	.section	.bss.s_partition_list,"aw",@nobits
	.align	4
	.type	s_partition_list, @object
	.size	s_partition_list, 4
s_partition_list:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI9-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI11-.LFB15
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1140
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x3
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x95
	.4byte	0x49
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x19
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0xb
	.4byte	0x49
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x21
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x132
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x25
	.4byte	0xfb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x26
	.4byte	0xfb
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0x27
	.4byte	0x111
	.uleb128 0x9
	.byte	0x20
	.byte	0x8
	.byte	0x2c
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x2d
	.4byte	0xe5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x2e
	.4byte	0xda
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x2f
	.4byte	0xda
	.byte	0x3
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x30
	.4byte	0x132
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x31
	.4byte	0x18e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.4byte	0xfb
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xda
	.4byte	0x19e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x33
	.4byte	0x13d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0xa1
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa4
	.4byte	0x1a9
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa9
	.4byte	0xfb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x26
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xa
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x2f
	.4byte	0x2b7
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x80
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x81
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x82
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xa
	.byte	0x50
	.4byte	0x1fc
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xa
	.byte	0x5a
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d3
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x14
	.byte	0x1
	.byte	0x2b
	.4byte	0x31c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2d
	.4byte	0x2b7
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2f
	.4byte	0x3da
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.byte	0x30
	.4byte	0x3e0
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x24
	.byte	0xa
	.byte	0x63
	.4byte	0x36d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xa
	.byte	0x64
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xa
	.byte	0x65
	.4byte	0x2b7
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xa
	.byte	0x66
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0xa
	.byte	0x67
	.4byte	0xfb
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.byte	0x68
	.4byte	0x36d
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xa
	.byte	0x69
	.4byte	0x37d
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x37d
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF74
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xa
	.byte	0x6a
	.4byte	0x31c
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.4byte	0x3a4
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x28
	.4byte	0x3c9
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x28
	.byte	0x1
	.byte	0x26
	.4byte	0x3c9
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.byte	0x27
	.4byte	0x384
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.byte	0x28
	.4byte	0x38f
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x1
	.byte	0x29
	.4byte	0x3a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x384
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x1
	.byte	0x31
	.4byte	0x2d3
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.4byte	0x40a
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0x38
	.4byte	0x3c9
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	0x422
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0xc4
	.4byte	0x2c2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1
	.byte	0x55
	.4byte	0x2c2
	.byte	0x1
	.4byte	0x455
	.uleb128 0x14
	.string	"it"
	.byte	0x1
	.byte	0x55
	.4byte	0x2c2
	.uleb128 0x15
	.4byte	.LASF85
	.4byte	0x465
	.4byte	.LASF86
	.uleb128 0x16
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x5f
	.4byte	0x3e0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x465
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x455
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x1
	.byte	0xca
	.4byte	0x493
	.byte	0x1
	.4byte	0x493
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0xca
	.4byte	0x2c2
	.uleb128 0x15
	.4byte	.LASF85
	.4byte	0x4ae
	.4byte	.LASF87
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x499
	.uleb128 0x7
	.4byte	0x384
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x4ae
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x49e
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x132
	.4byte	0x106
	.byte	0x1
	.4byte	0x549
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x132
	.4byte	0x493
	.uleb128 0x19
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x132
	.4byte	0xfb
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x132
	.4byte	0xfb
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x133
	.4byte	0x1c2
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x134
	.4byte	0x549
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x134
	.4byte	0x54f
	.uleb128 0x15
	.4byte	.LASF85
	.4byte	0x555
	.4byte	.LASF88
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x13f
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x140
	.4byte	0x25
	.uleb128 0x1b
	.string	"rc"
	.byte	0x1
	.2byte	0x141
	.4byte	0x106
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x7
	.4byte	0x455
	.uleb128 0x1c
	.4byte	0x422
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x643
	.uleb128 0x1d
	.4byte	0x432
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	0x43c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3521
	.uleb128 0x1f
	.4byte	0x40a
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x5a
	.4byte	0x5ae
	.uleb128 0x1d
	.4byte	0x416
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x108c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.4byte	0x603
	.uleb128 0x23
	.4byte	0x432
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1e
	.4byte	0x43c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3521
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x5f1
	.uleb128 0x25
	.4byte	0x44a
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x1097
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x10a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL1
	.4byte	0x10ad
	.4byte	0x632
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x57
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3521
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x10b8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF140
	.byte	0x1
	.byte	0x91
	.4byte	0x106
	.byte	0x1
	.4byte	0x6a2
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x93
	.4byte	0x6a2
	.uleb128 0x28
	.4byte	.LASF96
	.byte	0x1
	.byte	0x94
	.4byte	0x1cd
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x96
	.4byte	0x106
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ad
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.byte	0x9e
	.4byte	0x6ad
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.byte	0xa0
	.4byte	0x3da
	.uleb128 0x16
	.uleb128 0x28
	.4byte	.LASF98
	.byte	0x1
	.byte	0xa6
	.4byte	0x3da
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a8
	.uleb128 0x7
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0x7
	.4byte	0x19e
	.uleb128 0x29
	.4byte	.LASF101
	.byte	0x2
	.byte	0x26
	.4byte	0x37d
	.byte	0x3
	.4byte	0x6df
	.uleb128 0x28
	.4byte	.LASF99
	.byte	0x2
	.byte	0x27
	.4byte	0xfb
	.uleb128 0x28
	.4byte	.LASF100
	.byte	0x2
	.byte	0x29
	.4byte	0x37d
	.byte	0
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0x82
	.4byte	0x71b
	.byte	0x1
	.4byte	0x71b
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x82
	.4byte	0x1f1
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x83
	.4byte	0x2b7
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x83
	.4byte	0xc8
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x85
	.4byte	0x71b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e6
	.uleb128 0x2a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3d
	.4byte	0x2c2
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x900
	.uleb128 0x2b
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3d
	.4byte	0x1f1
	.4byte	.LLST3
	.uleb128 0x2c
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3e
	.4byte	0x2b7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3e
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x4e
	.4byte	0x2c2
	.uleb128 0x1f
	.4byte	0x6df
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x4e
	.4byte	0x7be
	.uleb128 0x1d
	.4byte	0x705
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	0x6fa
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	0x6ef
	.4byte	.LLST6
	.uleb128 0x2d
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x25
	.4byte	0x710
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x10c3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0x8f6
	.uleb128 0x2f
	.string	"err"
	.byte	0x1
	.byte	0x43
	.4byte	0x106
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	0x643
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x45
	.4byte	0x8ce
	.uleb128 0x2d
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x1e
	.4byte	0x653
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.4byte	0x65e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.4byte	0x669
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	0x674
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	0x67e
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	0x689
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x896
	.uleb128 0x25
	.4byte	0x695
	.4byte	.LLST13
	.uleb128 0x30
	.4byte	0x6b8
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xac
	.4byte	0x86c
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x25
	.4byte	0x6c8
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	0x6d3
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL23
	.4byte	0x10c3
	.4byte	0x880
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0x10ce
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x10d9
	.4byte	0x8c3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x31
	.4byte	.LVL36
	.4byte	0x10e4
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x10b8
	.4byte	0x8e2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0x10a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0x422
	.byte	0
	.uleb128 0x1c
	.4byte	0x40a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92b
	.uleb128 0x23
	.4byte	0x416
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x108c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x46a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a6
	.uleb128 0x1d
	.4byte	0x47a
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3558
	.uleb128 0x2d
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x1d
	.4byte	0x47a
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x1e
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3558
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0x10ad
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3558
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x76
	.4byte	0x493
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa63
	.uleb128 0x2b
	.4byte	.LASF27
	.byte	0x1
	.byte	0x76
	.4byte	0x1f1
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	.LASF28
	.byte	0x1
	.byte	0x77
	.4byte	0x2b7
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	.LASF29
	.byte	0x1
	.byte	0x77
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"it"
	.byte	0x1
	.byte	0x79
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"res"
	.byte	0x1
	.byte	0x7d
	.4byte	0x493
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	0x40a
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0x7e
	.4byte	0xa32
	.uleb128 0x1d
	.4byte	0x416
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x108c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0x721
	.4byte	0xa52
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0x46a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd0
	.4byte	0x493
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6e
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd0
	.4byte	0x493
	.4byte	.LLST22
	.uleb128 0x33
	.4byte	.LASF85
	.4byte	0xb7e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3562
	.uleb128 0x34
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd3
	.4byte	0xc8
	.4byte	.LLST23
	.uleb128 0x2f
	.string	"it"
	.byte	0x1
	.byte	0xd4
	.4byte	0x2c2
	.4byte	.LLST24
	.uleb128 0x2e
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.4byte	0xb23
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0xd8
	.4byte	0x493
	.4byte	.LLST25
	.uleb128 0x1f
	.4byte	0x40a
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xdd
	.4byte	0xafe
	.uleb128 0x1d
	.4byte	0x416
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0x108c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL56
	.4byte	0x46a
	.4byte	0xb12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x422
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL52
	.4byte	0x10ad
	.4byte	0xb52
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3562
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0x721
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xd
	.byte	0x72
	.sleb128 16
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xb7e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xb6e
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x104
	.4byte	0x106
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2b
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x104
	.4byte	0x493
	.4byte	.LLST27
	.uleb128 0x36
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x37
	.string	"src"
	.byte	0x1
	.2byte	0x105
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF85
	.4byte	0xc3b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3585
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0x10ad
	.4byte	0xc18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x107
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3585
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x31
	.4byte	.LVL69
	.4byte	0x10ef
	.uleb128 0x31
	.4byte	.LVL71
	.4byte	0x10fa
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xc3b
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xc2b
	.uleb128 0x35
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x116
	.4byte	0x106
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x116
	.4byte	0x493
	.4byte	.LLST29
	.uleb128 0x38
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF85
	.4byte	0xcdf
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3591
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x10ad
	.4byte	0xcc5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x119
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3591
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0x1105
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xcdf
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0xccf
	.uleb128 0x1c
	.4byte	0x4b3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x1d
	.4byte	0x4c4
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	0x4d0
	.4byte	.LLST31
	.uleb128 0x23
	.4byte	0x4dc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	0x4f4
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	0x500
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	0x50c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3600
	.uleb128 0x25
	.4byte	0x519
	.4byte	.LLST32
	.uleb128 0x25
	.4byte	0x525
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	0x531
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	0x53d
	.4byte	.LLST35
	.uleb128 0x2e
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.4byte	0xded
	.uleb128 0x1d
	.4byte	0x4c4
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	0x4d0
	.4byte	.LLST37
	.uleb128 0x1d
	.4byte	0x4dc
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	0x4e8
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	0x4f4
	.4byte	.LLST40
	.uleb128 0x1d
	.4byte	0x500
	.4byte	.LLST41
	.uleb128 0x2d
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x39
	.4byte	0x519
	.uleb128 0x39
	.4byte	0x525
	.uleb128 0x39
	.4byte	0x531
	.uleb128 0x39
	.4byte	0x53d
	.uleb128 0x1e
	.4byte	0x50c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3600
	.uleb128 0x20
	.4byte	.LVL78
	.4byte	0x10ad
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x136
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3600
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL83
	.4byte	0x10d9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe6
	.4byte	0x106
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf43
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.byte	0xe6
	.4byte	0x493
	.4byte	.LLST42
	.uleb128 0x2c
	.4byte	.LASF111
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"dst"
	.byte	0x1
	.byte	0xe7
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF85
	.4byte	0xf43
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x2e
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0xefd
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf6
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"err"
	.byte	0x1
	.byte	0xf7
	.4byte	0x106
	.4byte	.LLST43
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0x4b3
	.4byte	0xed9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL92
	.4byte	0x1110
	.4byte	0xef3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL93
	.4byte	0x10e4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x10ad
	.4byte	0xf2c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x20
	.4byte	.LVL89
	.4byte	0x1119
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x455
	.uleb128 0x35
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x149
	.4byte	0x106
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf91
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x149
	.4byte	0x493
	.4byte	.LLST44
	.uleb128 0x38
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x149
	.4byte	0xf91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL96
	.4byte	0x1124
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x35
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x14e
	.4byte	0x37d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1054
	.uleb128 0x36
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x14e
	.4byte	0x493
	.4byte	.LLST45
	.uleb128 0x36
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x14e
	.4byte	0x493
	.4byte	.LLST46
	.uleb128 0x3c
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x150
	.4byte	0x1054
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.4byte	.LVL99
	.4byte	0x112f
	.4byte	0x1001
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0xf48
	.4byte	0x101c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0xf48
	.4byte	0x1036
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x20
	.4byte	.LVL106
	.4byte	0x1138
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xda
	.4byte	0x106a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1f
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x38
	.4byte	0x3f1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list
	.uleb128 0x3b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3a
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.uleb128 0x3d
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xb
	.byte	0x5a
	.uleb128 0x3d
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xc
	.byte	0x1c
	.uleb128 0x3d
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0x24
	.uleb128 0x3d
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xd
	.byte	0x29
	.uleb128 0x3d
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x5
	.byte	0x20
	.uleb128 0x3d
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xb
	.byte	0x65
	.uleb128 0x3d
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xc
	.byte	0x24
	.uleb128 0x3d
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x9
	.byte	0xc1
	.uleb128 0x3d
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x9
	.byte	0xe9
	.uleb128 0x3d
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x9
	.byte	0x74
	.uleb128 0x3d
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x9
	.byte	0x5d
	.uleb128 0x3d
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x9
	.byte	0x4a
	.uleb128 0x3e
	.4byte	.LASF133
	.4byte	.LASF133
	.uleb128 0x3d
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x9
	.byte	0x8b
	.uleb128 0x3d
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xe
	.byte	0x5d
	.uleb128 0x3e
	.4byte	.LASF134
	.4byte	.LASF134
	.uleb128 0x3d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xc
	.byte	0x16
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3e
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
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
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54-1
	.4byte	.LVL55
	.2byte	0xe
	.byte	0x72
	.sleb128 16
	.byte	0x74
	.sleb128 0
	.byte	0x73
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
.LLST24:
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LVL84
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"enabled"
.LASF117:
	.string	"s_partition_list"
.LASF97:
	.string	"last"
.LASF104:
	.string	"esp_partition_find_first"
.LASF126:
	.string	"spi_flash_mmap"
.LASF13:
	.string	"_lock_t"
.LASF84:
	.string	"iterator"
.LASF123:
	.string	"_lock_acquire"
.LASF109:
	.string	"start_addr"
.LASF30:
	.string	"flags"
.LASF37:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"next"
.LASF86:
	.string	"esp_partition_next"
.LASF9:
	.string	"__int32_t"
.LASF121:
	.string	"_lock_release"
.LASF67:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF36:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF78:
	.string	"partition_list_item_"
.LASF127:
	.string	"spi_flash_munmap"
.LASF88:
	.string	"esp_partition_mmap"
.LASF102:
	.string	"iterator_create"
.LASF129:
	.string	"spi_flash_write"
.LASF21:
	.string	"uint32_t"
.LASF139:
	.string	"esp_partition_iterator_release"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF33:
	.string	"SPI_FLASH_MMAP_INST"
.LASF112:
	.string	"esp_partition_get_sha256"
.LASF124:
	.string	"malloc"
.LASF12:
	.string	"long long unsigned int"
.LASF130:
	.string	"spi_flash_erase_range"
.LASF125:
	.string	"strncpy"
.LASF8:
	.string	"__uint16_t"
.LASF93:
	.string	"phys_addr"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF35:
	.string	"spi_flash_mmap_handle_t"
.LASF136:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF73:
	.string	"encrypted"
.LASF69:
	.string	"esp_partition_iterator_t"
.LASF58:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF75:
	.string	"esp_partition_t"
.LASF2:
	.string	"size_t"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF31:
	.string	"esp_partition_info_t"
.LASF23:
	.string	"offset"
.LASF60:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF32:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF74:
	.string	"_Bool"
.LASF34:
	.string	"spi_flash_mmap_memory_t"
.LASF105:
	.string	"esp_partition_verify"
.LASF119:
	.string	"free"
.LASF87:
	.string	"esp_partition_get"
.LASF103:
	.string	"esp_partition_find"
.LASF137:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/spi_flash/partition.c"
.LASF17:
	.string	"char"
.LASF115:
	.string	"partition_1"
.LASF116:
	.string	"partition_2"
.LASF3:
	.string	"ptrdiff_t"
.LASF101:
	.string	"esp_flash_encryption_enabled"
.LASF61:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF18:
	.string	"uint8_t"
.LASF11:
	.string	"long long int"
.LASF89:
	.string	"partition"
.LASF80:
	.string	"partition_list_item_t"
.LASF134:
	.string	"memset"
.LASF24:
	.string	"size"
.LASF98:
	.string	"item"
.LASF71:
	.string	"info"
.LASF122:
	.string	"__assert_func"
.LASF64:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF83:
	.string	"slh_first"
.LASF118:
	.string	"s_partition_list_lock"
.LASF128:
	.string	"spi_flash_write_encrypted"
.LASF19:
	.string	"uint16_t"
.LASF28:
	.string	"subtype"
.LASF82:
	.string	"partition_list_head_"
.LASF106:
	.string	"esp_partition_write"
.LASF70:
	.string	"next_item"
.LASF7:
	.string	"short int"
.LASF132:
	.string	"bootloader_common_get_sha256_of_partition"
.LASF14:
	.string	"long int"
.LASF91:
	.string	"out_ptr"
.LASF59:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF63:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF135:
	.string	"memcmp"
.LASF131:
	.string	"spi_flash_read"
.LASF108:
	.string	"esp_partition_erase_range"
.LASF5:
	.string	"__uint8_t"
.LASF94:
	.string	"region_offset"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF26:
	.string	"magic"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF15:
	.string	"sizetype"
.LASF140:
	.string	"load_partitions"
.LASF16:
	.string	"long unsigned int"
.LASF92:
	.string	"out_handle"
.LASF72:
	.string	"address"
.LASF20:
	.string	"int32_t"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF138:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spi_flash"
.LASF90:
	.string	"memory"
.LASF27:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF22:
	.string	"esp_err_t"
.LASF110:
	.string	"esp_partition_read"
.LASF29:
	.string	"label"
.LASF68:
	.string	"esp_partition_subtype_t"
.LASF38:
	.string	"esp_partition_type_t"
.LASF62:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF65:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF99:
	.string	"flash_crypt_cnt"
.LASF113:
	.string	"sha_256"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF107:
	.string	"dst_offset"
.LASF96:
	.string	"handle"
.LASF133:
	.string	"memcpy"
.LASF85:
	.string	"__func__"
.LASF95:
	.string	"mmap_addr"
.LASF76:
	.string	"sle_next"
.LASF114:
	.string	"esp_partition_check_identity"
.LASF111:
	.string	"src_offset"
.LASF25:
	.string	"esp_partition_pos_t"
.LASF77:
	.string	"esp_partition_iterator_opaque_"
.LASF66:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF120:
	.string	"strcmp"
.LASF81:
	.string	"esp_partition_iterator_opaque_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
