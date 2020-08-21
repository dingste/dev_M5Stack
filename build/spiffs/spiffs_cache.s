	.file	"spiffs_cache.c"
	.text
.Ltext0:
	.section	.text.spiffs_cache_page_get,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_get, @function
spiffs_cache_page_get:
.LFB17:
	.file 1 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_cache.c"
	.loc 1 14 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 15 0
	l32i	a10, a2, 88
.LVL1:
	.loc 1 16 0
	l32i.n	a12, a10, 8
	l32i.n	a9, a10, 12
	and	a9, a12, a9
	mov.n	a8, a9
	beqz.n	a9, .L2
	.loc 1 18 0
	l8ui	a13, a10, 0
	movi.n	a9, 0
	j	.L3
.LVL2:
.L5:
.LBB3:
	.loc 1 20 0
	bbc	a12, a9, .L4
	.loc 1 19 0 discriminator 1
	l32i.n	a8, a2, 28
	l32i.n	a11, a10, 16
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a11, a8
	.loc 1 20 0 discriminator 1
	l8ui	a11, a8, 0
	sext	a11, a11, 7
	bltz	a11, .L4
	.loc 1 21 0
	l16ui	a11, a8, 8
	bne	a11, a3, .L4
	.loc 1 24 0
	l32i.n	a2, a10, 4
.LVL3:
	s32i.n	a2, a8, 4
	.loc 1 25 0
	j	.L2
.LVL4:
.L4:
.LBE3:
	.loc 1 18 0 discriminator 2
	addi.n	a9, a9, 1
.LVL5:
.L3:
	.loc 1 18 0 is_stmt 0 discriminator 1
	blt	a9, a13, .L5
	.loc 1 16 0 is_stmt 1
	movi.n	a8, 0
.LVL6:
.L2:
	.loc 1 30 0
	mov.n	a2, a8
	retw.n
.LFE17:
	.size	spiffs_cache_page_get, .-spiffs_cache_page_get
	.section	.text.spiffs_cache_page_free,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_free, @function
spiffs_cache_page_free:
.LFB18:
	.loc 1 33 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 35 0
	l32i	a6, a2, 88
.LVL9:
	.loc 1 37 0
	movi.n	a5, 1
	l32i.n	a7, a6, 8
	ssl	a3
	sll	a5, a5
	.loc 1 34 0
	movi.n	a10, 0
	.loc 1 37 0
	bnone	a5, a7, .L11
	.loc 1 36 0
	l32i.n	a11, a2, 28
	l32i.n	a12, a6, 16
	addi	a7, a11, 20
	mull	a3, a7, a3
.LVL10:
	add.n	a7, a12, a3
	.loc 1 38 0
	beq	a4, a10, .L12
	.loc 1 39 0 discriminator 1
	l8ui	a9, a7, 0
	.loc 1 38 0 discriminator 1
	sext	a13, a9, 7
	blt	a13, a10, .L12
	.loc 1 39 0
	bbc	a9, a10, .L12
.LVL11:
.LBB4:
	.loc 1 42 0
	l16ui	a9, a7, 8
	l32i.n	a10, a2, 16
	mull	a9, a9, a11
	addi	a3, a3, 20
.LVL12:
	l32i.n	a8, a2, 4
	add.n	a12, a12, a3
	add.n	a10, a9, a10
	callx8	a8
.LVL13:
.L12:
.LBE4:
	.loc 1 45 0
	movi.n	a3, 0
	s8i	a3, a7, 0
	.loc 1 46 0
	movi.n	a3, -1
	xor	a5, a3, a5
	l32i.n	a3, a6, 8
	and	a5, a3, a5
	s32i.n	a5, a6, 8
.LVL14:
.L11:
	.loc 1 56 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE18:
	.size	spiffs_cache_page_free, .-spiffs_cache_page_free
	.section	.text.spiffs_cache_page_allocate,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_allocate, @function
spiffs_cache_page_allocate:
.LFB20:
	.loc 1 89 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 90 0
	l32i	a9, a2, 88
.LVL17:
	.loc 1 93 0
	movi.n	a8, 0
	.loc 1 91 0
	l32i.n	a11, a9, 8
	beqi	a11, -1, .L21
	.loc 1 96 0
	l8ui	a12, a9, 0
	.loc 1 97 0
	movi.n	a13, 1
	j	.L22
.LVL18:
.L24:
	ssl	a8
	sll	a10, a13
	bany	a11, a10, .L23
.LBB5:
	.loc 1 98 0
	l32i.n	a2, a2, 28
.LVL19:
	.loc 1 99 0
	or	a10, a11, a10
	.loc 1 98 0
	addi	a2, a2, 20
	mull	a8, a2, a8
.LVL20:
	l32i.n	a2, a9, 16
	.loc 1 99 0
	s32i.n	a10, a9, 8
	.loc 1 98 0
	add.n	a8, a2, a8
.LVL21:
	.loc 1 100 0
	l32i.n	a2, a9, 4
	s32i.n	a2, a8, 4
	.loc 1 102 0
	j	.L21
.LVL22:
.L23:
.LBE5:
	.loc 1 96 0 discriminator 2
	addi.n	a8, a8, 1
.LVL23:
.L22:
	.loc 1 96 0 is_stmt 0 discriminator 1
	blt	a8, a12, .L24
	.loc 1 93 0 is_stmt 1
	movi.n	a8, 0
.LVL24:
.L21:
	.loc 1 107 0
	mov.n	a2, a8
	retw.n
.LFE20:
	.size	spiffs_cache_page_allocate, .-spiffs_cache_page_allocate
	.section	.text.spiffs_cache_page_remove_oldest$constprop$0,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_remove_oldest$constprop$0, @function
spiffs_cache_page_remove_oldest$constprop$0:
.LFB28:
	.loc 1 59 0
.LVL25:
	entry	sp, 32
.LCFI3:
.LVL26:
	.loc 1 61 0
	l32i	a13, a2, 88
.LVL27:
	.loc 1 65 0
	movi.n	a10, 0
	.loc 1 63 0
	l32i.n	a9, a13, 12
	l32i.n	a8, a13, 8
	and	a8, a9, a8
	bne	a9, a8, .L27
	.loc 1 72 0
	l8ui	a14, a13, 0
	mov.n	a8, a10
	movi.n	a11, -1
	mov.n	a12, a10
.LBB6:
	.loc 1 74 0
	movi	a15, -0x80
	j	.L28
.LVL28:
.L30:
	.loc 1 73 0
	l32i.n	a9, a2, 28
	l32i.n	a10, a13, 16
	addi	a9, a9, 20
	mull	a9, a9, a12
	add.n	a9, a10, a9
.LVL29:
	.loc 1 74 0
	l32i.n	a3, a9, 4
	l32i.n	a10, a13, 4
	sub	a10, a10, a3
	bgeu	a8, a10, .L29
	l8ui	a9, a9, 0
.LVL30:
	and	a9, a9, a15
	moveqz	a8, a10, a9
.LVL31:
	moveqz	a11, a12, a9
.LVL32:
.L29:
.LBE6:
	.loc 1 72 0
	addi.n	a12, a12, 1
.LVL33:
.L28:
	blt	a12, a14, .L30
	.loc 1 65 0
	movi.n	a10, 0
	.loc 1 81 0
	beqi	a11, -1, .L27
	.loc 1 82 0
	movi.n	a12, 1
.LVL34:
	mov.n	a10, a2
	call8	spiffs_cache_page_free
.LVL35:
.L27:
	.loc 1 86 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE28:
	.size	spiffs_cache_page_remove_oldest$constprop$0, .-spiffs_cache_page_remove_oldest$constprop$0
	.section	.text.spiffs_cache_drop_page,"ax",@progbits
	.align	4
	.global	spiffs_cache_drop_page
	.type	spiffs_cache_drop_page, @function
spiffs_cache_drop_page:
.LFB21:
	.loc 1 110 0
.LVL37:
	entry	sp, 32
.LCFI4:
	.loc 1 111 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL38:
	.loc 1 112 0
	beqz.n	a10, .L34
	.loc 1 113 0
	l8ui	a11, a10, 1
	movi.n	a12, 0
	mov.n	a10, a2
.LVL39:
	call8	spiffs_cache_page_free
.LVL40:
.L34:
	retw.n
.LFE21:
	.size	spiffs_cache_drop_page, .-spiffs_cache_drop_page
	.section	.text.spiffs_phys_rd,"ax",@progbits
	.align	4
	.global	spiffs_phys_rd
	.type	spiffs_phys_rd, @function
spiffs_phys_rd:
.LFB22:
	.loc 1 126 0
.LVL41:
	entry	sp, 48
.LCFI5:
.LVL42:
	.loc 1 130 0
	l32i.n	a11, a2, 16
	l32i.n	a8, a2, 28
	sub	a11, a5, a11
	quou	a11, a11, a8
	.loc 1 129 0
	l32i	a4, a2, 88
.LVL43:
	.loc 1 130 0
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL44:
	.loc 1 131 0
	l32i.n	a8, a4, 4
	.loc 1 126 0
	.loc 1 131 0
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 4
	.loc 1 126 0
	extui	a3, a3, 0, 8
	.loc 1 132 0
	beqz.n	a10, .L40
.LBB7:
	.loc 1 138 0
	l32i.n	a11, a2, 28
.LVL45:
	.loc 1 137 0
	s32i.n	a8, a10, 4
.LVL46:
	.loc 1 139 0
	l8ui	a8, a10, 1
	addi	a3, a11, 20
.LVL47:
	l32i.n	a2, a2, 16
.LVL48:
	mull	a3, a8, a3
	sub	a5, a5, a2
.LVL49:
	remu	a5, a5, a11
	addi	a3, a3, 20
	l32i.n	a11, a4, 16
	add.n	a5, a3, a5
	mov.n	a12, a6
	add.n	a11, a11, a5
	mov.n	a10, a7
.LVL50:
	call8	memcpy
.LVL51:
.LBE7:
	.loc 1 128 0
	movi.n	a10, 0
	j	.L41
.LVL52:
.L40:
	.loc 1 141 0
	extui	a3, a3, 0, 2
	bnei	a3, 1, .L42
	.loc 1 143 0
	l32i.n	a2, a2, 0
.LVL53:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
.LVL54:
	callx8	a2
.LVL55:
	j	.L41
.LVL56:
.L42:
	.loc 1 150 0
	mov.n	a10, a2
.LVL57:
	call8	spiffs_cache_page_remove_oldest$constprop$0
.LVL58:
	mov.n	a3, a10
.LVL59:
	.loc 1 152 0
	mov.n	a10, a2
	call8	spiffs_cache_page_allocate
.LVL60:
	mov.n	a8, a10
.LVL61:
	.loc 1 153 0
	beqz.n	a10, .L43
.LBB8:
	.loc 1 154 0
	movi.n	a9, 2
	s8i	a9, a10, 0
	.loc 1 155 0
	l32i.n	a9, a2, 16
	l32i.n	a10, a2, 28
	sub	a9, a5, a9
	quou	a9, a9, a10
	s16i	a9, a8, 8
	.loc 1 157 0
	l32i.n	a11, a2, 28
	l8ui	a12, a8, 1
	l32i.n	a10, a2, 16
	addi	a9, a11, 20
	mull	a9, a12, a9
	sub	a10, a5, a10
	l32i.n	a12, a4, 16
	l32i.n	a13, a2, 0
	addi	a9, a9, 20
	remu	a10, a10, a11
	add.n	a12, a12, a9
	sub	a10, a5, a10
	s32i.n	a8, sp, 0
	callx8	a13
.LVL62:
	.loc 1 166 0
	l32i.n	a8, sp, 0
	.loc 1 165 0
	l32i.n	a11, a2, 28
	.loc 1 166 0
	l8ui	a9, a8, 1
	l32i.n	a2, a2, 16
.LVL63:
	addi	a8, a11, 20
	mull	a8, a9, a8
	sub	a5, a5, a2
.LVL64:
	addi	a8, a8, 20
	remu	a5, a5, a11
	l32i.n	a11, a4, 16
	add.n	a5, a8, a5
	.loc 1 161 0
	movnez	a3, a10, a10
.LVL65:
	.loc 1 166 0
	mov.n	a12, a6
	add.n	a11, a11, a5
	mov.n	a10, a7
.LVL66:
	call8	memcpy
.LVL67:
.LBE8:
	mov.n	a10, a3
	j	.L41
.LVL68:
.L43:
.LBB9:
	.loc 1 169 0
	l32i.n	a2, a2, 0
.LVL69:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL70:
	.loc 1 170 0
	moveqz	a10, a3, a10
.LVL71:
.L41:
.LBE9:
	.loc 1 177 0
	mov.n	a2, a10
	retw.n
.LFE22:
	.size	spiffs_phys_rd, .-spiffs_phys_rd
	.section	.text.spiffs_phys_wr,"ax",@progbits
	.align	4
	.global	spiffs_phys_wr
	.type	spiffs_phys_wr, @function
spiffs_phys_wr:
.LFB23:
	.loc 1 186 0
.LVL72:
	entry	sp, 48
.LCFI6:
.LVL73:
	.loc 1 190 0
	l32i.n	a11, a2, 16
	l32i.n	a4, a2, 28
.LVL74:
	sub	a11, a5, a11
	quou	a11, a11, a4
	.loc 1 186 0
	extui	a9, a3, 0, 8
	.loc 1 190 0
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	.loc 1 189 0
	l32i	a3, a2, 88
.LVL75:
	.loc 1 190 0
	s32i.n	a9, sp, 0
.LVL76:
	call8	spiffs_cache_page_get
.LVL77:
	.loc 1 186 0
	.loc 1 190 0
	mov.n	a4, a10
.LVL78:
	.loc 1 192 0
	l32i.n	a9, sp, 0
	beqz.n	a10, .L49
	movi.n	a12, 0x1c
	and	a12, a9, a12
	.loc 1 192 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x18
	beq	a12, a8, .L49
	l8ui	a11, a10, 1
.LBB10:
	.loc 1 196 0 is_stmt 1
	bnez.n	a12, .L50
	.loc 1 196 0 is_stmt 0 discriminator 1
	extui	a9, a9, 0, 2
	beqz.n	a9, .L50
	.loc 1 199 0 is_stmt 1
	mov.n	a10, a2
	call8	spiffs_cache_page_free
.LVL79:
	j	.L49
.L50:
	.loc 1 203 0
	l32i.n	a8, a2, 28
.LVL80:
	.loc 1 204 0
	l32i.n	a10, a3, 16
	addi	a9, a8, 20
	mull	a11, a11, a9
	l32i.n	a9, a2, 16
	addi	a11, a11, 20
	sub	a9, a5, a9
	remu	a8, a9, a8
.LVL81:
	add.n	a8, a11, a8
	add.n	a10, a10, a8
	mov.n	a12, a6
	mov.n	a11, a7
	call8	memcpy
.LVL82:
	.loc 1 206 0
	l32i.n	a8, a3, 4
	.loc 1 213 0
	movi.n	a10, 0
	.loc 1 206 0
	addi.n	a8, a8, 1
	s32i.n	a8, a3, 4
	.loc 1 209 0
	l8ui	a3, a4, 0
.LVL83:
	.loc 1 207 0
	s32i.n	a8, a4, 4
	.loc 1 209 0
	bbci	a3, 1, .L51
.L49:
.LBE10:
	.loc 1 217 0
	l32i.n	a2, a2, 4
.LVL84:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL85:
.L51:
	.loc 1 219 0
	mov.n	a2, a10
	retw.n
.LFE23:
	.size	spiffs_phys_wr, .-spiffs_phys_wr
	.section	.text.spiffs_cache_page_get_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_get_by_fd
	.type	spiffs_cache_page_get_by_fd, @function
spiffs_cache_page_get_by_fd:
.LFB24:
	.loc 1 223 0
.LVL86:
	entry	sp, 32
.LCFI7:
	.loc 1 224 0
	l32i	a10, a2, 88
.LVL87:
	.loc 1 223 0
	mov.n	a13, a2
	.loc 1 226 0
	l32i.n	a12, a10, 8
	l32i.n	a8, a10, 12
	and	a8, a12, a8
	.loc 1 228 0
	mov.n	a2, a8
.LVL88:
	.loc 1 226 0
	beqz.n	a8, .L61
	.loc 1 232 0
	l8ui	a14, a10, 0
	movi.n	a9, 0
	j	.L62
.LVL89:
.L64:
.LBB11:
	.loc 1 234 0
	bbc	a12, a9, .L63
	.loc 1 233 0 discriminator 1
	l32i.n	a8, a13, 28
	l32i.n	a2, a10, 16
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a2, a8
	.loc 1 234 0 discriminator 1
	l8ui	a11, a8, 0
	sext	a11, a11, 7
	bgez	a11, .L63
	.loc 1 235 0
	l16ui	a11, a8, 8
	l16ui	a2, a3, 6
	beq	a11, a2, .L66
.L63:
.LBE11:
	.loc 1 232 0 discriminator 2
	addi.n	a9, a9, 1
.LVL90:
.L62:
	.loc 1 232 0 is_stmt 0 discriminator 1
	blt	a9, a14, .L64
	.loc 1 228 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.L66:
.LBB12:
	.loc 1 233 0
	mov.n	a2, a8
.LVL91:
.L61:
.LBE12:
	.loc 1 242 0
	retw.n
.LFE24:
	.size	spiffs_cache_page_get_by_fd, .-spiffs_cache_page_get_by_fd
	.section	.text.spiffs_cache_page_allocate_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_allocate_by_fd
	.type	spiffs_cache_page_allocate_by_fd, @function
spiffs_cache_page_allocate_by_fd:
.LFB25:
	.loc 1 246 0
.LVL92:
	entry	sp, 32
.LCFI8:
	.loc 1 249 0
	mov.n	a10, a2
	call8	spiffs_cache_page_remove_oldest$constprop$0
.LVL93:
	.loc 1 250 0
	mov.n	a10, a2
	call8	spiffs_cache_page_allocate
.LVL94:
	.loc 1 251 0
	beqz.n	a10, .L71
	.loc 1 256 0
	movi	a2, -0x80
.LVL95:
	s8i	a2, a10, 0
	.loc 1 257 0
	l16ui	a2, a3, 6
	s16i	a2, a10, 8
	.loc 1 258 0
	s32i.n	a10, a3, 32
.L71:
	.loc 1 260 0
	mov.n	a2, a10
	retw.n
.LFE25:
	.size	spiffs_cache_page_allocate_by_fd, .-spiffs_cache_page_allocate_by_fd
	.section	.text.spiffs_cache_fd_release,"ax",@progbits
	.literal_position
	.align	4
	.global	spiffs_cache_fd_release
	.type	spiffs_cache_fd_release, @function
spiffs_cache_fd_release:
.LFB26:
	.loc 1 263 0
.LVL96:
	entry	sp, 32
.LCFI9:
	.loc 1 263 0
	mov.n	a10, a2
	.loc 1 264 0
	beqz.n	a3, .L75
.LVL97:
	l32i.n	a8, a2, 60
	.loc 1 267 0
	movi.n	a9, 0
	l32i	a11, a2, 64
	addi.n	a8, a8, 4
.LBB13:
	.loc 1 270 0
	mov.n	a12, a9
.LBE13:
	.loc 1 267 0
	j	.L77
.LVL98:
.L79:
.LBB14:
	.loc 1 269 0
	l16si	a13, a8, 0
	beqz.n	a13, .L78
	.loc 1 269 0 is_stmt 0 discriminator 1
	l32i.n	a13, a8, 28
	bne	a3, a13, .L78
	.loc 1 270 0 is_stmt 1
	s32i.n	a12, a8, 28
.L78:
.LBE14:
	.loc 1 267 0 discriminator 2
	addi.n	a9, a9, 1
.LVL99:
	addi	a8, a8, 48
.LVL100:
.L77:
	.loc 1 267 0 is_stmt 0 discriminator 1
	bne	a9, a11, .L79
	.loc 1 273 0 is_stmt 1
	l8ui	a11, a3, 1
	movi.n	a12, 0
	call8	spiffs_cache_page_free
.LVL101:
	.loc 1 275 0
	movi.n	a8, 0
	s16i	a8, a3, 8
.L75:
	retw.n
.LFE26:
	.size	spiffs_cache_fd_release, .-spiffs_cache_fd_release
	.section	.text.spiffs_cache_init,"ax",@progbits
	.align	4
	.global	spiffs_cache_init
	.type	spiffs_cache_init, @function
spiffs_cache_init:
.LFB27:
	.loc 1 281 0
.LVL102:
	entry	sp, 64
.LCFI10:
	.loc 1 282 0
	l32i	a5, a2, 88
	beqz.n	a5, .L86
.LVL103:
	.loc 1 287 0
	l32i	a3, a2, 92
	addi	a4, a3, -20
	l32i.n	a3, a2, 28
	addi	a3, a3, 20
	quou	a3, a4, a3
.LVL104:
	.loc 1 288 0
	blti	a3, 1, .L86
	movi.n	a4, 0
	.loc 1 292 0
	movi.n	a6, 1
	mov.n	a8, a3
	loop	a8, .L88_LEND
.LVL105:
.L88:
	.loc 1 291 0 discriminator 3
	slli	a4, a4, 1
.LVL106:
	.loc 1 292 0 discriminator 3
	or	a4, a4, a6
.LVL107:
	.loc 1 290 0 discriminator 3
	.L88_LEND:
	.loc 1 296 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL108:
	.loc 1 298 0
	addi	a6, a5, 20
	s32i.n	a6, sp, 16
	.loc 1 302 0
	movi.n	a12, 0x14
	.loc 1 300 0
	movi.n	a6, -1
	.loc 1 302 0
	mov.n	a11, sp
	mov.n	a10, a5
	.loc 1 297 0
	s8i	a3, sp, 0
	.loc 1 301 0
	s32i.n	a4, sp, 12
	.loc 1 300 0
	s32i.n	a6, sp, 8
	.loc 1 302 0
	call8	memcpy
.LVL109:
	.loc 1 304 0
	l32i	a4, a2, 88
.LVL110:
	.loc 1 306 0
	l32i.n	a9, a2, 28
	l8ui	a12, a4, 0
	addi	a9, a9, 20
	mull	a12, a9, a12
	l32i.n	a10, a4, 16
	movi.n	a11, 0
	call8	memset
.LVL111:
	.loc 1 308 0
	l32i.n	a8, a4, 12
	l32i.n	a5, a4, 8
	xor	a8, a6, a8
	and	a8, a5, a8
	s32i.n	a8, a4, 8
.LVL112:
	.loc 1 309 0
	movi.n	a9, 0
	extui	a3, a3, 0, 8
.LVL113:
	j	.L89
.LVL114:
.L90:
	.loc 1 310 0 discriminator 3
	l32i.n	a8, a2, 28
	l32i.n	a5, a4, 16
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a5, a8
	s8i	a9, a8, 1
	.loc 1 309 0 discriminator 3
	addi.n	a9, a9, 1
.LVL115:
.L89:
	.loc 1 309 0 is_stmt 0 discriminator 1
	blt	a9, a3, .L90
.LVL116:
.L86:
	retw.n
.LFE27:
	.size	spiffs_cache_init, .-spiffs_cache_init
	.comm	spiffs_mutex,4,4
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI9-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI10-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/freertos/include/freertos/queue.h"
	.file 3 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_config.h"
	.file 4 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs.h"
	.file 5 "/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_nucleus.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xda5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xc
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x58
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1b
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1d
	.4byte	0x3a
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1e
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x20
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x162
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x165
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x169
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x16d
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x45
	.4byte	0xa3
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x47
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x4
	.byte	0x5b
	.4byte	0x115
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0x134
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x134
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0x115
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5f
	.4byte	0x150
	.uleb128 0x7
	.byte	0x4
	.4byte	0x156
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0x16a
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x63
	.4byte	0x189
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x4
	.byte	0x67
	.4byte	0x16a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x6a
	.4byte	0x1cb
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x4
	.byte	0x72
	.4byte	0x194
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x4
	.byte	0x79
	.4byte	0x1e1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0xc
	.4byte	0x201
	.uleb128 0x9
	.4byte	0x189
	.uleb128 0x9
	.4byte	0x1cb
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x7e
	.4byte	0x220
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x4
	.byte	0x85
	.4byte	0x201
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x88
	.4byte	0x236
	.uleb128 0x7
	.byte	0x4
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x220
	.uleb128 0x9
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0xd0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25c
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x74
	.byte	0x4
	.byte	0xe4
	.4byte	0x389
	.uleb128 0xe
	.string	"cfg"
	.byte	0x4
	.byte	0xe6
	.4byte	0x3f2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe8
	.4byte	0x98
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x4
	.byte	0xeb
	.4byte	0xc4
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.byte	0xed
	.4byte	0x48
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x4
	.byte	0xef
	.4byte	0xc4
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x4
	.byte	0xf1
	.4byte	0x48
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x4
	.byte	0xf4
	.4byte	0x134
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x4
	.byte	0xf6
	.4byte	0x134
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x4
	.byte	0xf8
	.4byte	0x134
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x4
	.byte	0xfa
	.4byte	0x98
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x4
	.byte	0xfd
	.4byte	0x8d
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x100
	.4byte	0x98
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x102
	.4byte	0x98
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x104
	.4byte	0x98
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x106
	.4byte	0xb9
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x108
	.4byte	0xdc
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x110
	.4byte	0x5d
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x112
	.4byte	0x98
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x11a
	.4byte	0x1d6
	.byte	0x60
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x11c
	.4byte	0x22b
	.byte	0x64
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x11e
	.4byte	0xb9
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x120
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x122
	.4byte	0x98
	.byte	0x70
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x4
	.byte	0xc5
	.4byte	0x3f2
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x4
	.byte	0xc7
	.4byte	0x10a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x4
	.byte	0xc9
	.4byte	0x13a
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x4
	.byte	0xcb
	.4byte	0x145
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x4
	.byte	0xce
	.4byte	0x98
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x4
	.byte	0xd1
	.4byte	0x98
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x4
	.byte	0xd3
	.4byte	0x98
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x4
	.byte	0xd8
	.4byte	0x98
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x4
	.byte	0xdb
	.4byte	0x98
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x4
	.byte	0xe2
	.4byte	0x389
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x123
	.4byte	0x25c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x12
	.byte	0xc
	.byte	0x4
	.2byte	0x144
	.4byte	0x44d
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x146
	.4byte	0x44d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x148
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x14a
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x14c
	.4byte	0xe8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x14d
	.4byte	0x40f
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.2byte	0x181
	.4byte	0x476
	.uleb128 0x13
	.string	"pix"
	.byte	0x5
	.2byte	0x183
	.4byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x5
	.2byte	0x187
	.4byte	0x4a7
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x189
	.4byte	0xdc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x18b
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x18d
	.4byte	0xae
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x5
	.2byte	0x17f
	.4byte	0x4bb
	.uleb128 0x15
	.4byte	0x45f
	.uleb128 0x15
	.4byte	0x476
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.byte	0x5
	.2byte	0x178
	.4byte	0x4f1
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x17a
	.4byte	0xb9
	.byte	0
	.uleb128 0x13
	.string	"ix"
	.byte	0x5
	.2byte	0x17c
	.4byte	0xb9
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x17e
	.4byte	0x98
	.byte	0x4
	.uleb128 0x16
	.4byte	0x4a7
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x191
	.4byte	0x4bb
	.uleb128 0x12
	.byte	0x14
	.byte	0x5
	.2byte	0x194
	.4byte	0x548
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x195
	.4byte	0xb9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x196
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x197
	.4byte	0x98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x198
	.4byte	0x98
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x199
	.4byte	0x134
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x19a
	.4byte	0x4fd
	.uleb128 0x12
	.byte	0x30
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x613
	.uleb128 0x13
	.string	"fs"
	.byte	0x5
	.2byte	0x1a2
	.4byte	0x409
	.byte	0
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x1a4
	.4byte	0xf4
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x1a6
	.4byte	0xdc
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x1a8
	.4byte	0x98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x1aa
	.4byte	0xd0
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x1ac
	.4byte	0xd0
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x1ae
	.4byte	0xe8
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x1b0
	.4byte	0x98
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x1b2
	.4byte	0x98
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x1b4
	.4byte	0xff
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x1b6
	.4byte	0x613
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x98
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x1bc
	.4byte	0xae
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x1c0
	.4byte	0x619
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4f1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x453
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x1c2
	.4byte	0x554
	.uleb128 0x17
	.4byte	.LASF127
	.byte	0x1
	.byte	0x3b
	.4byte	0x8d
	.byte	0x1
	.4byte	0x69d
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x3b
	.4byte	0x409
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0x3b
	.4byte	0xb9
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3b
	.4byte	0xb9
	.uleb128 0x1a
	.string	"res"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8d
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3d
	.4byte	0x69d
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x48
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.byte	0x46
	.4byte	0x48
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1
	.byte	0x47
	.4byte	0x98
	.uleb128 0x1c
	.uleb128 0x1a
	.string	"cp"
	.byte	0x1
	.byte	0x49
	.4byte	0x613
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x548
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x1
	.byte	0xe
	.4byte	0x613
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0xe
	.4byte	0x409
	.4byte	.LLST0
	.uleb128 0x1f
	.string	"pix"
	.byte	0x1
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1a
	.string	"cp"
	.byte	0x1
	.byte	0x13
	.4byte	0x613
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF106
	.byte	0x1
	.byte	0x21
	.4byte	0x8d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78c
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.4byte	0x409
	.4byte	.LLST2
	.uleb128 0x1e
	.string	"ix"
	.byte	0x1
	.byte	0x21
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF107
	.byte	0x1
	.byte	0x21
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"res"
	.byte	0x1
	.byte	0x22
	.4byte	0x8d
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0x23
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.string	"cp"
	.byte	0x1
	.byte	0x24
	.4byte	0x613
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x21
	.string	"mem"
	.byte	0x1
	.byte	0x29
	.4byte	0x134
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x59
	.4byte	0x613
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e6
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0x59
	.4byte	0x409
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5a
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x21
	.string	"cp"
	.byte	0x1
	.byte	0x62
	.4byte	0x613
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x62b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x869
	.uleb128 0x26
	.4byte	0x63b
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	0x65b
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	0x666
	.4byte	.LLST12
	.uleb128 0x27
	.4byte	0x671
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	0x67a
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	0x685
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	0x650
	.byte	0
	.uleb128 0x29
	.4byte	0x645
	.sleb128 -128
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x853
	.uleb128 0x27
	.4byte	0x691
	.4byte	.LLST16
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL35
	.4byte	0x706
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d9
	.uleb128 0x1f
	.string	"fs"
	.byte	0x1
	.byte	0x6e
	.4byte	0x409
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"pix"
	.byte	0x1
	.byte	0x6e
	.4byte	0xd0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"cp"
	.byte	0x1
	.byte	0x6f
	.4byte	0x613
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LVL38
	.4byte	0x6a3
	.4byte	0x8c3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL40
	.4byte	0x706
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF111
	.byte	0x1
	.byte	0x78
	.4byte	0x8d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0x79
	.4byte	0x409
	.4byte	.LLST18
	.uleb128 0x1e
	.string	"op"
	.byte	0x1
	.byte	0x7a
	.4byte	0xb9
	.4byte	.LLST19
	.uleb128 0x1e
	.string	"fh"
	.byte	0x1
	.byte	0x7b
	.4byte	0xf4
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	.LASF109
	.byte	0x1
	.byte	0x7c
	.4byte	0x98
	.4byte	.LLST21
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x7d
	.4byte	0x98
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"dst"
	.byte	0x1
	.byte	0x7e
	.4byte	0x134
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x21
	.string	"res"
	.byte	0x1
	.byte	0x80
	.4byte	0x8d
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0x81
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"cp"
	.byte	0x1
	.byte	0x82
	.4byte	0x613
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x9a2
	.uleb128 0x21
	.string	"mem"
	.byte	0x1
	.byte	0x8a
	.4byte	0x134
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LVL51
	.4byte	0xd96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x9e0
	.uleb128 0x31
	.4byte	.LASF110
	.byte	0x1
	.byte	0x9d
	.4byte	0x8d
	.4byte	.LLST25
	.uleb128 0x1a
	.string	"mem"
	.byte	0x1
	.byte	0xa5
	.4byte	0x134
	.uleb128 0x2b
	.4byte	.LVL67
	.4byte	0xd96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xa18
	.uleb128 0x31
	.4byte	.LASF110
	.byte	0x1
	.byte	0xa9
	.4byte	0x8d
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	.LVL70
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL44
	.4byte	0x6a3
	.4byte	0xa2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL55
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xa4b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL58
	.4byte	0x7e6
	.4byte	0xa5f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL60
	.4byte	0x78c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb4
	.4byte	0x8d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7b
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0xb5
	.4byte	0x409
	.4byte	.LLST27
	.uleb128 0x1e
	.string	"op"
	.byte	0x1
	.byte	0xb6
	.4byte	0xb9
	.4byte	.LLST28
	.uleb128 0x1e
	.string	"fh"
	.byte	0x1
	.byte	0xb7
	.4byte	0xf4
	.4byte	.LLST29
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb8
	.4byte	0x98
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xb9
	.4byte	0x98
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.byte	0xba
	.4byte	0x134
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x21
	.string	"pix"
	.byte	0x1
	.byte	0xbc
	.4byte	0xd0
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	.LASF60
	.byte	0x1
	.byte	0xbd
	.4byte	0x69d
	.4byte	.LLST31
	.uleb128 0x35
	.string	"cp"
	.byte	0x1
	.byte	0xbe
	.4byte	0x613
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xb4b
	.uleb128 0x21
	.string	"mem"
	.byte	0x1
	.byte	0xcb
	.4byte	0x134
	.4byte	.LLST32
	.uleb128 0x2e
	.4byte	.LVL79
	.4byte	0x706
	.4byte	0xb34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL82
	.4byte	0xd96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL77
	.4byte	0x6a3
	.4byte	0xb5f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL85
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF113
	.byte	0x1
	.byte	0xdf
	.4byte	0x613
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd9
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0xdf
	.4byte	0x409
	.4byte	.LLST33
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0xdf
	.4byte	0xbd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe0
	.4byte	0x69d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.4byte	0x48
	.4byte	.LLST34
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.string	"cp"
	.byte	0x1
	.byte	0xe9
	.4byte	0x613
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x34
	.4byte	.LASF114
	.byte	0x1
	.byte	0xf6
	.4byte	0x613
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc43
	.uleb128 0x1e
	.string	"fs"
	.byte	0x1
	.byte	0xf6
	.4byte	0x409
	.4byte	.LLST35
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0xf6
	.4byte	0xbd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.string	"cp"
	.byte	0x1
	.byte	0xfa
	.4byte	0x613
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2e
	.4byte	.LVL93
	.4byte	0x7e6
	.4byte	0xc32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL94
	.4byte	0x78c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x107
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbb
	.uleb128 0x38
	.string	"fs"
	.byte	0x1
	.2byte	0x107
	.4byte	0x409
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.string	"cp"
	.byte	0x1
	.2byte	0x107
	.4byte	0x613
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.2byte	0x109
	.4byte	0x98
	.4byte	.LLST36
	.uleb128 0x39
	.string	"fds"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbd9
	.4byte	.LLST37
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xcab
	.uleb128 0x3b
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x10c
	.4byte	0xbd9
	.4byte	.LLST38
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL101
	.4byte	0x706
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd85
	.uleb128 0x38
	.string	"fs"
	.byte	0x1
	.2byte	0x119
	.4byte	0x409
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.string	"sz"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x98
	.4byte	.LLST39
	.uleb128 0x3b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x11c
	.4byte	0x98
	.4byte	.LLST40
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x48
	.4byte	.LLST41
	.uleb128 0x3b
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x11e
	.4byte	0x48
	.4byte	.LLST42
	.uleb128 0x3c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x127
	.4byte	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.string	"c"
	.byte	0x1
	.2byte	0x130
	.4byte	0x69d
	.4byte	.LLST43
	.uleb128 0x2e
	.4byte	.LVL108
	.4byte	0xd9f
	.4byte	0xd56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL109
	.4byte	0xd96
	.4byte	0xd75
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL111
	.4byte	0xd9f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF128
	.byte	0x3
	.byte	0x22
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x3e
	.4byte	.LASF121
	.4byte	.LASF121
	.uleb128 0x3e
	.4byte	.LASF122
	.4byte	.LASF122
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xd
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13-1
	.2byte	0xe
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x9
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x7
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0xd
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x7d
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
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
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x11
	.byte	0x7b
	.sleb128 20
	.byte	0x7a
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x11
	.byte	0x78
	.sleb128 20
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x14
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x72
	.sleb128 60
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103
	.4byte	.LVL108-1
	.2byte	0x3
	.byte	0x72
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL104
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL110
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB28
	.4byte	.LFE28
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"user_data"
.LASF72:
	.string	"phys_erase_block"
.LASF76:
	.string	"spiffs"
.LASF34:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF93:
	.string	"objix_hdr_pix"
.LASF120:
	.string	"cache_entries"
.LASF38:
	.string	"spiffs_check_report"
.LASF30:
	.string	"spiffs_check_type"
.LASF6:
	.string	"long long unsigned int"
.LASF64:
	.string	"mounted"
.LASF109:
	.string	"addr"
.LASF13:
	.string	"s32_t"
.LASF12:
	.string	"QueueHandle_t"
.LASF26:
	.string	"spiffs_erase"
.LASF25:
	.string	"spiffs_write"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF37:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF102:
	.string	"flag_mask"
.LASF79:
	.string	"start_spix"
.LASF125:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/spiffs"
.LASF7:
	.string	"long int"
.LASF110:
	.string	"res2"
.LASF121:
	.string	"memcpy"
.LASF27:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF44:
	.string	"spiffs_file_callback"
.LASF61:
	.string	"cache_size"
.LASF128:
	.string	"spiffs_mutex"
.LASF114:
	.string	"spiffs_cache_page_allocate_by_fd"
.LASF99:
	.string	"score"
.LASF101:
	.string	"spiffs_fd"
.LASF59:
	.string	"max_erase_count"
.LASF48:
	.string	"cursor_block_ix"
.LASF15:
	.string	"s16_t"
.LASF39:
	.string	"spiffs_check_callback"
.LASF42:
	.string	"SPIFFS_CB_DELETED"
.LASF68:
	.string	"hal_write_f"
.LASF53:
	.string	"fd_count"
.LASF41:
	.string	"SPIFFS_CB_UPDATED"
.LASF57:
	.string	"stats_p_deleted"
.LASF9:
	.string	"long unsigned int"
.LASF20:
	.string	"spiffs_obj_id"
.LASF19:
	.string	"spiffs_page_ix"
.LASF14:
	.string	"u32_t"
.LASF123:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF83:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF92:
	.string	"file_nbr"
.LASF116:
	.string	"spiffs_cache_fd_release"
.LASF52:
	.string	"fd_space"
.LASF50:
	.string	"lu_work"
.LASF108:
	.string	"spiffs_cache_page_allocate"
.LASF112:
	.string	"spiffs_phys_wr"
.LASF47:
	.string	"free_cursor_obj_lu_entry"
.LASF29:
	.string	"SPIFFS_CHECK_PAGE"
.LASF118:
	.string	"spiffs_cache_init"
.LASF32:
	.string	"SPIFFS_CHECK_ERROR"
.LASF94:
	.string	"cursor_objix_pix"
.LASF119:
	.string	"cache_mask"
.LASF75:
	.string	"spiffs_config"
.LASF107:
	.string	"write_back"
.LASF89:
	.string	"cpage_use_mask"
.LASF63:
	.string	"file_cb_f"
.LASF115:
	.string	"spiffs_cache_drop_page"
.LASF104:
	.string	"oldest_val"
.LASF17:
	.string	"u8_t"
.LASF8:
	.string	"sizetype"
.LASF54:
	.string	"err_code"
.LASF18:
	.string	"spiffs_block_ix"
.LASF97:
	.string	"cache_page"
.LASF69:
	.string	"hal_erase_f"
.LASF56:
	.string	"stats_p_allocated"
.LASF98:
	.string	"name_hash"
.LASF126:
	.string	"spiffs_t"
.LASF124:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/components/spiffs/spiffs_cache.c"
.LASF45:
	.string	"block_count"
.LASF36:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF74:
	.string	"log_page_size"
.LASF28:
	.string	"SPIFFS_CHECK_INDEX"
.LASF62:
	.string	"check_cb_f"
.LASF40:
	.string	"SPIFFS_CB_CREATED"
.LASF105:
	.string	"spiffs_cache_page_get"
.LASF88:
	.string	"cpage_use_map"
.LASF2:
	.string	"unsigned char"
.LASF100:
	.string	"ix_map"
.LASF3:
	.string	"short int"
.LASF87:
	.string	"cpage_count"
.LASF73:
	.string	"log_block_size"
.LASF58:
	.string	"cleaning"
.LASF70:
	.string	"phys_size"
.LASF71:
	.string	"phys_addr"
.LASF86:
	.string	"spiffs_cache_page"
.LASF35:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF43:
	.string	"spiffs_fileop_type"
.LASF111:
	.string	"spiffs_phys_rd"
.LASF77:
	.string	"map_buf"
.LASF11:
	.string	"_Bool"
.LASF10:
	.string	"char"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"free_cursor_block_ix"
.LASF103:
	.string	"cand_ix"
.LASF49:
	.string	"cursor_obj_lu_entry"
.LASF81:
	.string	"spiffs_ix_map"
.LASF95:
	.string	"cursor_objix_spix"
.LASF78:
	.string	"offset"
.LASF55:
	.string	"free_blocks"
.LASF67:
	.string	"hal_read_f"
.LASF51:
	.string	"work"
.LASF113:
	.string	"spiffs_cache_page_get_by_fd"
.LASF127:
	.string	"spiffs_cache_page_remove_oldest"
.LASF96:
	.string	"fdoffset"
.LASF16:
	.string	"u16_t"
.LASF122:
	.string	"memset"
.LASF23:
	.string	"spiffs_flags"
.LASF66:
	.string	"config_magic"
.LASF21:
	.string	"spiffs_span_ix"
.LASF106:
	.string	"spiffs_cache_page_free"
.LASF84:
	.string	"flags"
.LASF24:
	.string	"spiffs_read"
.LASF85:
	.string	"last_access"
.LASF33:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF91:
	.string	"spiffs_cache"
.LASF60:
	.string	"cache"
.LASF22:
	.string	"spiffs_file"
.LASF80:
	.string	"end_spix"
.LASF117:
	.string	"cur_fd"
.LASF82:
	.string	"obj_id"
.LASF31:
	.string	"SPIFFS_CHECK_PROGRESS"
.LASF90:
	.string	"cpages"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
