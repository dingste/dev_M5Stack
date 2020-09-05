	.file	"hash_map.c"
	.text
.Ltext0:
	.section	.text.default_key_equality,"ax",@progbits
	.align	4
	.type	default_key_equality, @function
default_key_equality:
.LFB11:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/hash_map.c"
	.loc 1 267 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 268 0
	sub	a3, a2, a3
.LVL1:
	movi.n	a8, 1
	movi.n	a2, 0
.LVL2:
	moveqz	a2, a8, a3
	.loc 1 269 0
	retw.n
.LFE11:
	.size	default_key_equality, .-default_key_equality
	.section	.text.find_bucket_entry_,"ax",@progbits
	.align	4
	.type	find_bucket_entry_, @function
find_bucket_entry_:
.LFB10:
	.loc 1 249 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 251 0
	bnez.n	a2, .L3
.L7:
	.loc 1 252 0
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L3:
.LBB3:
	.loc 1 255 0
	mov.n	a10, a2
	call8	list_begin
.LVL6:
	j	.L9
.LVL7:
.L6:
.LBB4:
	.loc 1 258 0
	mov.n	a10, a5
	call8	list_node
.LVL8:
	.loc 1 259 0
	l32i.n	a8, a10, 8
	.loc 1 258 0
	mov.n	a4, a10
.LVL9:
	.loc 1 259 0
	l32i.n	a8, a8, 24
	l32i.n	a10, a10, 0
	mov.n	a11, a3
	callx8	a8
.LVL10:
	bnez.n	a10, .L8
.LBE4:
	.loc 1 257 0
	mov.n	a10, a5
	call8	list_next
.LVL11:
.L9:
	mov.n	a5, a10
.LVL12:
	.loc 1 256 0
	mov.n	a10, a2
	call8	list_end
.LVL13:
	.loc 1 255 0
	bne	a5, a10, .L6
	j	.L7
.LVL14:
.L8:
.LBB5:
	.loc 1 258 0
	mov.n	a2, a4
.LVL15:
.LBE5:
.LBE3:
	.loc 1 264 0
	retw.n
.LFE10:
	.size	find_bucket_entry_, .-find_bucket_entry_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"data != NULL"
.LC3:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/hash_map.c"
	.section	.text.bucket_free_,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2611
	.literal .LC4, .LC3
	.align	4
	.type	bucket_free_, @function
bucket_free_:
.LFB9:
	.loc 1 233 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 234 0
	bnez.n	a2, .L11
.LVL17:
.LBB8:
.LBB9:
	l32r	a13, .LC1
	l32r	a12, .LC2
	l32r	a10, .LC4
	movi	a11, 0xea
	call8	__assert_func
.LVL18:
.L11:
.LBE9:
.LBE8:
	.loc 1 236 0
	l32i.n	a3, a2, 8
.LVL19:
	.loc 1 238 0
	l32i.n	a8, a3, 16
	beqz.n	a8, .L12
	.loc 1 239 0
	l32i.n	a10, a2, 0
	callx8	a8
.LVL20:
.L12:
	.loc 1 241 0
	l32i.n	a8, a3, 20
	beqz.n	a8, .L13
	.loc 1 242 0
	l32i.n	a10, a2, 4
	callx8	a8
.LVL21:
.L13:
	.loc 1 244 0
	mov.n	a10, a2
	call8	free
.LVL22:
	retw.n
.LFE9:
	.size	bucket_free_, .-bucket_free_
	.section	.rodata.str1.1
.LC6:
	.string	"hash_fn != NULL"
.LC10:
	.string	"num_bucket > 0"
	.section	.text.hash_map_new_internal,"ax",@progbits
	.literal_position
	.literal .LC5, default_key_equality
	.literal .LC7, .LC6
	.literal .LC8, __func__$2536
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.align	4
	.global	hash_map_new_internal
	.type	hash_map_new_internal, @function
hash_map_new_internal:
.LFB0:
	.loc 1 56 0
.LVL23:
	entry	sp, 32
.LCFI3:
	.loc 1 57 0
	bnez.n	a3, .L21
.LVL24:
.LBB12:
.LBB13:
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x39
	j	.L28
.LVL25:
.L21:
.LBE13:
.LBE12:
	.loc 1 58 0
	bnez.n	a2, .L22
	.loc 1 58 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC8
	movi.n	a11, 0x3a
.L28:
	l32r	a10, .LC9
	call8	__assert_func
.LVL26:
.L22:
	.loc 1 59 0 is_stmt 1
	movi.n	a11, 0x1c
	movi.n	a10, 1
	call8	calloc
.LVL27:
	mov.n	a7, a10
.LVL28:
	.loc 1 60 0
	beqz.n	a10, .L23
	.loc 1 64 0
	s32i.n	a3, a10, 12
	.loc 1 67 0
	l32r	a3, .LC5
.LVL29:
	.loc 1 65 0
	s32i.n	a4, a10, 16
	.loc 1 67 0
	moveqz	a6, a3, a6
.LVL30:
	s32i.n	a6, a10, 24
	.loc 1 66 0
	s32i.n	a5, a10, 20
	.loc 1 69 0
	s32i.n	a2, a10, 4
	.loc 1 70 0
	slli	a11, a2, 2
	movi.n	a10, 1
	call8	calloc
.LVL31:
	mov.n	a6, a10
	s32i.n	a10, a7, 0
	mov.n	a10, a7
	.loc 1 71 0
	bnez.n	a6, .L23
	.loc 1 72 0
	call8	free
.LVL32:
	.loc 1 73 0
	mov.n	a10, a6
.L23:
	.loc 1 76 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LFE0:
	.size	hash_map_new_internal, .-hash_map_new_internal
	.section	.text.hash_map_new,"ax",@progbits
	.align	4
	.global	hash_map_new
	.type	hash_map_new, @function
hash_map_new:
.LFB1:
	.loc 1 84 0
.LVL34:
	entry	sp, 32
.LCFI4:
	.loc 1 85 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hash_map_new_internal
.LVL35:
	.loc 1 86 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE1:
	.size	hash_map_new, .-hash_map_new
	.section	.rodata.str1.1
.LC12:
	.string	"hash_map != NULL"
	.section	.text.hash_map_has_key,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC14, __func__$2552
	.literal .LC15, .LC3
	.align	4
	.global	hash_map_has_key
	.type	hash_map_has_key, @function
hash_map_has_key:
.LFB3:
	.loc 1 116 0
.LVL37:
	entry	sp, 32
.LCFI5:
	.loc 1 117 0
	bnez.n	a2, .L31
	.loc 1 117 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	l32r	a10, .LC15
	movi	a11, 0x75
	call8	__assert_func
.LVL38:
.L31:
	.loc 1 119 0 is_stmt 1
	l32i.n	a8, a2, 12
	mov.n	a10, a3
	callx8	a8
.LVL39:
	.loc 1 120 0
	l32i.n	a8, a2, 4
	l32i.n	a2, a2, 0
.LVL40:
	remu	a10, a10, a8
.LVL41:
	addx4	a10, a10, a2
.LVL42:
	.loc 1 122 0
	l32i.n	a10, a10, 0
	mov.n	a11, a3
	call8	find_bucket_entry_
.LVL43:
	.loc 1 123 0
	movi.n	a3, 1
.LVL44:
	movi.n	a2, 0
	movnez	a2, a3, a10
	.loc 1 124 0
	retw.n
.LFE3:
	.size	hash_map_has_key, .-hash_map_has_key
	.section	.rodata.str1.1
.LC21:
	.string	"rc == true"
	.section	.text.hash_map_set,"ax",@progbits
	.literal_position
	.literal .LC16, .LC12
	.literal .LC17, __func__$2561
	.literal .LC18, .LC3
	.literal .LC19, .LC0
	.literal .LC20, bucket_free_
	.literal .LC22, .LC21
	.align	4
	.global	hash_map_set
	.type	hash_map_set, @function
hash_map_set:
.LFB4:
	.loc 1 127 0
.LVL45:
	entry	sp, 32
.LCFI6:
	.loc 1 128 0
	bnez.n	a2, .L33
	.loc 1 128 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x80
	j	.L46
.L33:
	.loc 1 129 0 is_stmt 1
	bnez.n	a4, .L34
	.loc 1 129 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC17
	movi	a11, 0x81
.L46:
	l32r	a10, .LC18
	call8	__assert_func
.LVL46:
.L34:
	.loc 1 131 0 is_stmt 1
	l32i.n	a5, a2, 12
	mov.n	a10, a3
	callx8	a5
.LVL47:
	.loc 1 133 0
	l32i.n	a5, a2, 4
	l32i.n	a6, a2, 0
	remu	a10, a10, a5
.LVL48:
	slli	a5, a10, 2
	add.n	a6, a6, a5
	l32i.n	a8, a6, 0
	beqz.n	a8, .L35
.LVL49:
.L38:
	.loc 1 139 0
	l32i.n	a10, a2, 0
	.loc 1 141 0
	mov.n	a11, a3
	.loc 1 139 0
	add.n	a5, a10, a5
	l32i.n	a5, a5, 0
.LVL50:
	.loc 1 141 0
	mov.n	a10, a5
	call8	find_bucket_entry_
.LVL51:
	.loc 1 143 0
	bnez.n	a10, .L36
	j	.L45
.LVL52:
.L35:
	.loc 1 134 0
	l32r	a10, .LC20
.LVL53:
	call8	list_new_internal
.LVL54:
	s32i.n	a10, a6, 0
	.loc 1 135 0
	l32i.n	a6, a2, 0
	add.n	a6, a6, a5
	l32i.n	a6, a6, 0
	bnez.n	a6, .L38
.L41:
	.loc 1 136 0
	movi.n	a2, 0
.LVL55:
	retw.n
.LVL56:
.L36:
.LBB14:
	.loc 1 145 0
	mov.n	a11, a10
	mov.n	a10, a5
.LVL57:
	call8	list_remove
.LVL58:
	.loc 1 146 0
	bnez.n	a10, .L40
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC17
	movi	a11, 0x92
	j	.L46
.LVL59:
.L45:
.LBE14:
	.loc 1 148 0 is_stmt 1
	l32i.n	a6, a2, 8
	addi.n	a6, a6, 1
	s32i.n	a6, a2, 8
.LVL60:
.L40:
	.loc 1 150 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL61:
	.loc 1 151 0
	beqz.n	a10, .L41
	.loc 1 155 0
	s32i.n	a3, a10, 0
	.loc 1 156 0
	s32i.n	a4, a10, 4
	.loc 1 157 0
	s32i.n	a2, a10, 8
	.loc 1 159 0
	mov.n	a11, a10
	mov.n	a10, a5
.LVL62:
	call8	list_append
.LVL63:
	mov.n	a2, a10
.LVL64:
	.loc 1 160 0
	retw.n
.LFE4:
	.size	hash_map_set, .-hash_map_set
	.section	.text.hash_map_erase,"ax",@progbits
	.literal_position
	.literal .LC23, .LC12
	.literal .LC24, __func__$2570
	.literal .LC25, .LC3
	.align	4
	.global	hash_map_erase
	.type	hash_map_erase, @function
hash_map_erase:
.LFB5:
	.loc 1 163 0
.LVL65:
	entry	sp, 32
.LCFI7:
	.loc 1 163 0
	mov.n	a5, a2
	.loc 1 164 0
	bnez.n	a2, .L48
	.loc 1 164 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	l32r	a10, .LC25
	movi	a11, 0xa4
	call8	__assert_func
.LVL66:
.L48:
	.loc 1 166 0 is_stmt 1
	l32i.n	a2, a2, 12
.LVL67:
	mov.n	a10, a3
	callx8	a2
.LVL68:
	.loc 1 167 0
	l32i.n	a4, a5, 4
	l32i.n	a2, a5, 0
	remu	a10, a10, a4
.LVL69:
	slli	a4, a10, 2
	add.n	a2, a2, a4
	l32i.n	a6, a2, 0
.LVL70:
	.loc 1 169 0
	mov.n	a11, a3
	mov.n	a10, a6
.LVL71:
	call8	find_bucket_entry_
.LVL72:
	.loc 1 171 0
	movi.n	a2, 0
	.loc 1 170 0
	beq	a10, a2, .L49
	.loc 1 174 0
	l32i.n	a2, a5, 8
	.loc 1 175 0
	mov.n	a11, a10
	.loc 1 174 0
	addi.n	a2, a2, -1
	s32i.n	a2, a5, 8
	.loc 1 175 0
	mov.n	a10, a6
.LVL73:
	call8	list_remove
.LVL74:
	.loc 1 176 0
	l32i.n	a8, a5, 0
	.loc 1 175 0
	mov.n	a2, a10
.LVL75:
	.loc 1 176 0
	add.n	a8, a8, a4
	l32i.n	a10, a8, 0
	call8	list_is_empty
.LVL76:
	beqz.n	a10, .L49
	.loc 1 177 0
	l32i.n	a8, a5, 0
	.loc 1 178 0
	movi.n	a3, 0
.LVL77:
	.loc 1 177 0
	add.n	a8, a8, a4
	l32i.n	a10, a8, 0
	call8	list_free
.LVL78:
	.loc 1 178 0
	l32i.n	a10, a5, 0
	add.n	a4, a10, a4
	s32i.n	a3, a4, 0
.LVL79:
.L49:
	.loc 1 182 0
	retw.n
.LFE5:
	.size	hash_map_erase, .-hash_map_erase
	.section	.text.hash_map_get,"ax",@progbits
	.literal_position
	.literal .LC26, .LC12
	.literal .LC27, __func__$2579
	.literal .LC28, .LC3
	.align	4
	.global	hash_map_get
	.type	hash_map_get, @function
hash_map_get:
.LFB6:
	.loc 1 185 0
.LVL80:
	entry	sp, 32
.LCFI8:
	.loc 1 186 0
	bnez.n	a2, .L55
	.loc 1 186 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
	movi	a11, 0xba
	call8	__assert_func
.LVL81:
.L55:
	.loc 1 188 0 is_stmt 1
	l32i.n	a8, a2, 12
	mov.n	a10, a3
	callx8	a8
.LVL82:
	.loc 1 189 0
	l32i.n	a8, a2, 4
	l32i.n	a2, a2, 0
.LVL83:
	remu	a10, a10, a8
.LVL84:
	addx4	a10, a10, a2
.LVL85:
	.loc 1 191 0
	l32i.n	a10, a10, 0
	mov.n	a11, a3
	call8	find_bucket_entry_
.LVL86:
	.loc 1 196 0
	mov.n	a2, a10
	.loc 1 192 0
	beqz.n	a10, .L56
	.loc 1 193 0
	l32i.n	a2, a10, 4
.L56:
	.loc 1 197 0
	retw.n
.LFE6:
	.size	hash_map_get, .-hash_map_get
	.section	.text.hash_map_clear,"ax",@progbits
	.literal_position
	.literal .LC29, .LC12
	.literal .LC30, __func__$2586
	.literal .LC31, .LC3
	.align	4
	.global	hash_map_clear
	.type	hash_map_clear, @function
hash_map_clear:
.LFB7:
	.loc 1 200 0
.LVL87:
	entry	sp, 32
.LCFI9:
	movi.n	a3, 0
.LBB19:
	.loc 1 208 0
	mov.n	a5, a3
.LBE19:
	.loc 1 201 0
	bnez.n	a2, .L60
.L59:
.LVL88:
.LBB20:
.LBB21:
	l32r	a13, .LC29
	l32r	a12, .LC30
	l32r	a10, .LC31
	movi	a11, 0xc9
	call8	__assert_func
.LVL89:
.L62:
.LBE21:
.LBE20:
.LBB22:
	.loc 1 204 0
	l32i.n	a8, a2, 0
	slli	a4, a3, 2
	add.n	a8, a8, a4
	l32i.n	a10, a8, 0
	beqz.n	a10, .L61
	.loc 1 207 0
	call8	list_free
.LVL90:
	.loc 1 208 0
	l32i.n	a8, a2, 0
	add.n	a4, a8, a4
	s32i.n	a5, a4, 0
.L61:
	.loc 1 203 0 discriminator 2
	addi.n	a3, a3, 1
.LVL91:
.L60:
	.loc 1 203 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 4
	bltu	a3, a4, .L62
.LBE22:
	.loc 1 210 0 is_stmt 1
	retw.n
.LFE7:
	.size	hash_map_clear, .-hash_map_clear
	.section	.text.hash_map_free,"ax",@progbits
	.align	4
	.global	hash_map_free
	.type	hash_map_free, @function
hash_map_free:
.LFB2:
	.loc 1 89 0
.LVL92:
	entry	sp, 32
.LCFI10:
	.loc 1 90 0
	beqz.n	a2, .L66
	.loc 1 93 0
	mov.n	a10, a2
	call8	hash_map_clear
.LVL93:
	.loc 1 94 0
	l32i.n	a10, a2, 0
	call8	free
.LVL94:
	.loc 1 95 0
	mov.n	a10, a2
	call8	free
.LVL95:
.L66:
	retw.n
.LFE2:
	.size	hash_map_free, .-hash_map_free
	.section	.rodata.str1.1
.LC35:
	.string	"callback != NULL"
	.section	.text.hash_map_foreach,"ax",@progbits
	.literal_position
	.literal .LC32, .LC12
	.literal .LC33, __func__$2597
	.literal .LC34, .LC3
	.literal .LC36, .LC35
	.align	4
	.global	hash_map_foreach
	.type	hash_map_foreach, @function
hash_map_foreach:
.LFB8:
	.loc 1 213 0
.LVL96:
	entry	sp, 32
.LCFI11:
	.loc 1 214 0
	bnez.n	a2, .L72
	.loc 1 214 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi	a11, 0xd6
	j	.L83
.L72:
	movi.n	a5, 0
	.loc 1 215 0 is_stmt 1
	bnez.n	a3, .L74
.L73:
	.loc 1 215 0 is_stmt 0 discriminator 1
	l32r	a13, .LC36
	l32r	a12, .LC33
	movi	a11, 0xd7
.L83:
	l32r	a10, .LC34
	call8	__assert_func
.LVL97:
.L80:
.LBB23:
	.loc 1 218 0 is_stmt 1
	l32i.n	a6, a2, 0
	slli	a7, a5, 2
	add.n	a6, a6, a7
	l32i.n	a10, a6, 0
	bnez.n	a10, .L75
.L79:
	.loc 1 217 0
	addi.n	a5, a5, 1
.LVL98:
	j	.L74
.L75:
.LBB24:
	.loc 1 221 0
	call8	list_begin
.LVL99:
	j	.L82
.LVL100:
.L78:
.LBB25:
	.loc 1 224 0
	mov.n	a10, a6
	call8	list_node
.LVL101:
	.loc 1 225 0
	mov.n	a11, a4
	callx8	a3
.LVL102:
	beqz.n	a10, .L71
.LBE25:
	.loc 1 223 0
	mov.n	a10, a6
	call8	list_next
.LVL103:
.L82:
	.loc 1 222 0
	l32i.n	a8, a2, 0
	.loc 1 223 0
	mov.n	a6, a10
.LVL104:
	.loc 1 222 0
	add.n	a8, a8, a7
	l32i.n	a10, a8, 0
	call8	list_end
.LVL105:
	.loc 1 221 0
	bne	a6, a10, .L78
	j	.L79
.LVL106:
.L74:
.LBE24:
	.loc 1 217 0 discriminator 1
	l32i.n	a6, a2, 4
	bltu	a5, a6, .L80
.L71:
	retw.n
.LBE23:
.LFE8:
	.size	hash_map_foreach, .-hash_map_foreach
	.section	.rodata.__func__$2597,"a",@progbits
	.type	__func__$2597, @object
	.size	__func__$2597, 17
__func__$2597:
	.string	"hash_map_foreach"
	.section	.rodata.__func__$2586,"a",@progbits
	.type	__func__$2586, @object
	.size	__func__$2586, 15
__func__$2586:
	.string	"hash_map_clear"
	.section	.rodata.__func__$2579,"a",@progbits
	.type	__func__$2579, @object
	.size	__func__$2579, 13
__func__$2579:
	.string	"hash_map_get"
	.section	.rodata.__func__$2570,"a",@progbits
	.type	__func__$2570, @object
	.size	__func__$2570, 15
__func__$2570:
	.string	"hash_map_erase"
	.section	.rodata.__func__$2611,"a",@progbits
	.type	__func__$2611, @object
	.size	__func__$2611, 13
__func__$2611:
	.string	"bucket_free_"
	.section	.rodata.__func__$2561,"a",@progbits
	.type	__func__$2561, @object
	.size	__func__$2561, 13
__func__$2561:
	.string	"hash_map_set"
	.section	.rodata.__func__$2552,"a",@progbits
	.type	__func__$2552, @object
	.size	__func__$2552, 17
__func__$2552:
	.string	"hash_map_has_key"
	.section	.rodata.__func__$2536,"a",@progbits
	.type	__func__$2536, @object
	.size	__func__$2536, 22
__func__$2536:
	.string	"hash_map_new_internal"
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI2-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI9-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI10-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/list.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/hash_map.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
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
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93
	.uleb128 0x8
	.4byte	0x9e
	.uleb128 0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x7
	.4byte	0xa9
	.uleb128 0xa
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa
	.4byte	0xb9
	.uleb128 0xa
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1a
	.4byte	0xd0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1c
	.byte	0x1
	.byte	0x1e
	.4byte	0x131
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1f
	.4byte	0x233
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x5f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x21
	.4byte	0x5f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x183
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x23
	.4byte	0x1f3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x24
	.4byte	0x1fe
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x25
	.4byte	0x1ce
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0xc
	.byte	0x4
	.byte	0x1c
	.4byte	0x162
	.uleb128 0xd
	.string	"key"
	.byte	0x4
	.byte	0x1d
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1e
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1f
	.4byte	0x162
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x168
	.uleb128 0xe
	.4byte	0xc5
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x20
	.4byte	0x131
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0x22
	.4byte	0x5f
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4
	.byte	0x25
	.4byte	0x18e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x194
	.uleb128 0xf
	.4byte	0x178
	.4byte	0x1a3
	.uleb128 0x9
	.4byte	0x86
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x4
	.byte	0x26
	.4byte	0x1ae
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b4
	.uleb128 0xf
	.4byte	0xbe
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16d
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x4
	.byte	0x28
	.4byte	0x1d9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1df
	.uleb128 0xf
	.4byte	0xbe
	.4byte	0x1f3
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x86
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2a
	.4byte	0x8d
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x4
	.byte	0x2b
	.4byte	0x8d
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.4byte	0x222
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1b
	.4byte	0x222
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1c
	.4byte	0x209
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0x274
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe8
	.4byte	0x5d
	.uleb128 0x12
	.4byte	.LASF34
	.4byte	0x284
	.4byte	.LASF37
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0xeb
	.4byte	0x1c8
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xec
	.4byte	0x289
	.byte	0
	.uleb128 0x14
	.4byte	0x7f
	.4byte	0x284
	.uleb128 0x15
	.4byte	0x71
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x274
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28f
	.uleb128 0xe
	.4byte	0xd0
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x32
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x2f4
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	0x5f
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.4byte	0x183
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x1f3
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.4byte	0x1fe
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x37
	.4byte	0x1ce
	.uleb128 0x12
	.4byte	.LASF34
	.4byte	0x30a
	.4byte	.LASF38
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3b
	.4byte	0x2f4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x14
	.4byte	0x7f
	.4byte	0x30a
	.uleb128 0x15
	.4byte	0x71
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	0x2fa
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	0x33f
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc7
	.4byte	0x2f4
	.uleb128 0x12
	.4byte	.LASF34
	.4byte	0x34f
	.4byte	.LASF39
	.uleb128 0x18
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x178
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x7f
	.4byte	0x34f
	.uleb128 0x15
	.4byte	0x71
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.4byte	0x33f
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbe
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38b
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x86
	.4byte	.LLST0
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x86
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf7
	.4byte	0x1c8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44c
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf7
	.4byte	0x222
	.4byte	.LLST2
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0xf8
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x20
	.4byte	.LASF43
	.byte	0x1
	.byte	0xff
	.4byte	0x44c
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x412
	.uleb128 0x22
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x102
	.4byte	0x1c8
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LVL8
	.4byte	0xc30
	.4byte	0x405
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL10
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL6
	.4byte	0xc3b
	.4byte	0x426
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0xc46
	.4byte	0x43a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0xc51
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x452
	.uleb128 0xe
	.4byte	0x9e
	.uleb128 0x27
	.4byte	0x239
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fc
	.uleb128 0x28
	.4byte	0x245
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x250
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2611
	.uleb128 0x29
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x268
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x4eb
	.uleb128 0x2b
	.4byte	0x245
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2c
	.4byte	0x25d
	.uleb128 0x2c
	.4byte	0x268
	.uleb128 0x29
	.4byte	0x250
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2611
	.uleb128 0x26
	.4byte	.LVL18
	.4byte	0xc5c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xea
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2611
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0xc67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x294
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fa
	.uleb128 0x2b
	.4byte	0x2a4
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	0x2af
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	0x2ba
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	0x2c5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	0x2d0
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	0x2db
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2536
	.uleb128 0x29
	.4byte	0x2e8
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x59f
	.uleb128 0x2b
	.4byte	0x2a4
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	0x2af
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	0x2ba
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0x2c5
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	0x2d0
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2c
	.4byte	0x2e8
	.uleb128 0x29
	.4byte	0x2db
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2536
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0xc5c
	.4byte	0x5b6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0xc72
	.4byte	0x5ce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0xc72
	.4byte	0x5e9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0xc67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4e
	.4byte	0x2f4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67f
	.uleb128 0x1d
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4f
	.4byte	0x5f
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LASF19
	.byte	0x1
	.byte	0x50
	.4byte	0x183
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF20
	.byte	0x1
	.byte	0x51
	.4byte	0x1f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LASF21
	.byte	0x1
	.byte	0x52
	.4byte	0x1fe
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF36
	.byte	0x1
	.byte	0x53
	.4byte	0x1ce
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x26
	.4byte	.LVL35
	.4byte	0x294
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x73
	.4byte	0xbe
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x740
	.uleb128 0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0x73
	.4byte	0x289
	.4byte	.LLST15
	.uleb128 0x30
	.string	"key"
	.byte	0x1
	.byte	0x73
	.4byte	0x86
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LASF34
	.4byte	0x750
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2552
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0x77
	.4byte	0x178
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF42
	.byte	0x1
	.byte	0x78
	.4byte	0x222
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.4byte	0x1c8
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0xc5c
	.4byte	0x71f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2552
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x33
	.4byte	.LVL39
	.4byte	0x72f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL43
	.4byte	0x38b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x7f
	.4byte	0x750
	.uleb128 0x15
	.4byte	0x71
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	0x740
	.uleb128 0x2e
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7e
	.4byte	0xbe
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x883
	.uleb128 0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7e
	.4byte	0x2f4
	.4byte	.LLST19
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0x7e
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF34
	.4byte	0x883
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2561
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0x83
	.4byte	0x178
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8b
	.4byte	0x222
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8d
	.4byte	0x1c8
	.4byte	.LLST22
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x7ff
	.uleb128 0x34
	.string	"rc"
	.byte	0x1
	.byte	0x91
	.4byte	0xbe
	.4byte	.LLST23
	.uleb128 0x26
	.4byte	.LVL58
	.4byte	0xc7d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL46
	.4byte	0xc5c
	.4byte	0x816
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x35
	.4byte	.LVL47
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x829
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0x38b
	.4byte	0x843
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL54
	.4byte	0xc88
	.4byte	0x85a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bucket_free_
	.byte	0
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0xc72
	.4byte	0x872
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0xc93
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x274
	.uleb128 0x2e
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa2
	.4byte	0xbe
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa2
	.4byte	0x2f4
	.4byte	.LLST24
	.uleb128 0x30
	.string	"key"
	.byte	0x1
	.byte	0xa2
	.4byte	0x86
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LASF34
	.4byte	0x98b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2570
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa6
	.4byte	0x178
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa7
	.4byte	0x222
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa9
	.4byte	0x1c8
	.4byte	.LLST27
	.uleb128 0x20
	.4byte	.LASF49
	.byte	0x1
	.byte	0xaf
	.4byte	0xbe
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LVL66
	.4byte	0xc5c
	.4byte	0x937
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2570
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x35
	.4byte	.LVL68
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x94a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL72
	.4byte	0x38b
	.4byte	0x964
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL74
	.4byte	0xc7d
	.4byte	0x978
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL76
	.4byte	0xc9e
	.uleb128 0x36
	.4byte	.LVL78
	.4byte	0xca9
	.byte	0
	.uleb128 0xe
	.4byte	0x33f
	.uleb128 0x2e
	.4byte	.LASF50
	.byte	0x1
	.byte	0xb8
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4f
	.uleb128 0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb8
	.4byte	0x289
	.4byte	.LLST29
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0xb8
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF34
	.4byte	0xa4f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2579
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0xbc
	.4byte	0x178
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbd
	.4byte	0x222
	.4byte	.LLST31
	.uleb128 0x32
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbf
	.4byte	0x1c8
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0xc5c
	.4byte	0xa2e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xba
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2579
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x33
	.4byte	.LVL82
	.4byte	0xa3e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL86
	.4byte	0x38b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x274
	.uleb128 0x2d
	.4byte	0x30f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x28
	.4byte	0x31b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	0x326
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2586
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xa93
	.uleb128 0x29
	.4byte	0x334
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LVL90
	.4byte	0xca9
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2b
	.4byte	0x31b
	.4byte	.LLST32
	.uleb128 0x1f
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x29
	.4byte	0x326
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2586
	.uleb128 0x26
	.4byte	.LVL89
	.4byte	0xc5c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2586
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF51
	.byte	0x1
	.byte	0x58
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb37
	.uleb128 0x2f
	.4byte	.LASF25
	.byte	0x1
	.byte	0x58
	.4byte	0x2f4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL93
	.4byte	0x30f
	.4byte	0xb1d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL94
	.4byte	0xc67
	.uleb128 0x26
	.4byte	.LVL95
	.4byte	0xc67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2b
	.uleb128 0x2f
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd4
	.4byte	0x2f4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd4
	.4byte	0x1a3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd4
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF34
	.4byte	0xc2b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2597
	.uleb128 0x2a
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0xc17
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.4byte	0x178
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x20
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdd
	.4byte	0x44c
	.4byte	.LLST33
	.uleb128 0x2a
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xbef
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe0
	.4byte	0x1c8
	.4byte	.LLST34
	.uleb128 0x23
	.4byte	.LVL101
	.4byte	0xc30
	.4byte	0xbe2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL102
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL99
	.4byte	0xc3b
	.uleb128 0x23
	.4byte	.LVL103
	.4byte	0xc46
	.4byte	0xc0c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL105
	.4byte	0xc51
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL97
	.4byte	0xc5c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x740
	.uleb128 0x39
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x3
	.byte	0x6c
	.uleb128 0x39
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x3
	.byte	0x5c
	.uleb128 0x39
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x3
	.byte	0x68
	.uleb128 0x39
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x3
	.byte	0x62
	.uleb128 0x39
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5a
	.uleb128 0x39
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x3
	.byte	0x4c
	.uleb128 0x39
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x1
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x3
	.byte	0x42
	.uleb128 0x39
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0x1f
	.uleb128 0x39
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x3
	.byte	0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x2
	.byte	0x77
	.sleb128 12
	.4byte	.LVL31-1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1d
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL65
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1d
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1d
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL101
	.4byte	.LVL102-1
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
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
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"list_append"
.LASF23:
	.string	"hash_map_entry_t"
.LASF11:
	.string	"size_t"
.LASF40:
	.string	"default_key_equality"
.LASF20:
	.string	"key_fn"
.LASF25:
	.string	"hash_map"
.LASF6:
	.string	"long long unsigned int"
.LASF60:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"num_bucket"
.LASF39:
	.string	"hash_map_clear"
.LASF28:
	.string	"hash_map_iter_cb"
.LASF57:
	.string	"list_next"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"bucket"
.LASF62:
	.string	"list_remove"
.LASF37:
	.string	"bucket_free_"
.LASF49:
	.string	"remove"
.LASF4:
	.string	"unsigned int"
.LASF9:
	.string	"long unsigned int"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"list_t"
.LASF31:
	.string	"data_free_fn"
.LASF38:
	.string	"hash_map_new_internal"
.LASF24:
	.string	"data"
.LASF54:
	.string	"context"
.LASF27:
	.string	"hash_index_fn"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"hash_map_t"
.LASF32:
	.string	"hash_map_bucket_t"
.LASF53:
	.string	"callback"
.LASF43:
	.string	"iter"
.LASF8:
	.string	"sizetype"
.LASF22:
	.string	"keys_are_equal"
.LASF66:
	.string	"list_free"
.LASF12:
	.string	"list_node_t"
.LASF45:
	.string	"hash_map_has_key"
.LASF26:
	.string	"hash_index_t"
.LASF36:
	.string	"equality_fn"
.LASF44:
	.string	"hash_map_new"
.LASF69:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF14:
	.string	"_Bool"
.LASF59:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"hash_fn"
.LASF56:
	.string	"list_begin"
.LASF41:
	.string	"find_bucket_entry_"
.LASF2:
	.string	"short int"
.LASF65:
	.string	"list_is_empty"
.LASF34:
	.string	"__func__"
.LASF63:
	.string	"list_new_internal"
.LASF42:
	.string	"hash_bucket_list"
.LASF55:
	.string	"list_node"
.LASF30:
	.string	"key_free_fn"
.LASF47:
	.string	"hash_map_set"
.LASF35:
	.string	"hash_map_entry"
.LASF51:
	.string	"hash_map_free"
.LASF10:
	.string	"char"
.LASF48:
	.string	"hash_map_erase"
.LASF61:
	.string	"calloc"
.LASF50:
	.string	"hash_map_get"
.LASF58:
	.string	"list_end"
.LASF33:
	.string	"list"
.LASF68:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/hash_map.c"
.LASF46:
	.string	"hash_key"
.LASF52:
	.string	"hash_map_foreach"
.LASF29:
	.string	"key_equality_fn"
.LASF18:
	.string	"hash_size"
.LASF21:
	.string	"data_fn"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
