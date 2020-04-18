	.file	"esp_himem.c"
	.text
.Ltext0:
	.section	.text.esp_himem_get_phys_size,"ax",@progbits
	.literal_position
	.literal .LC0, -4194304
	.align	4
	.global	esp_himem_get_phys_size
	.type	esp_himem_get_phys_size, @function
esp_himem_get_phys_size:
.LFB25:
	.file 1 "/home/dieter/Development/esp-idf/components/esp32/esp_himem.c"
	.loc 1 121 1 view -0
	entry	sp, 32
.LCFI0:
	.loc 1 122 5 view .LVU1
.LVL0:
	.loc 1 123 5 view .LVU2
	.loc 1 123 12 is_stmt 0 view .LVU3
	call8	esp_spiram_get_size
.LVL1:
	.loc 1 124 1 view .LVU4
	l32r	a2, .LC0
	add.n	a2, a10, a2
	retw.n
.LFE25:
	.size	esp_himem_get_phys_size, .-esp_himem_get_phys_size
	.section	.text.esp_himem_get_free_size,"ax",@progbits
	.align	4
	.global	esp_himem_get_free_size
	.type	esp_himem_get_free_size, @function
esp_himem_get_free_size:
.LFB26:
	.loc 1 127 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 128 5 view .LVU6
.LVL2:
	.loc 1 129 5 view .LVU7
	.loc 1 129 10 view .LVU8
	.loc 1 132 5 view .LVU9
	.loc 1 133 1 is_stmt 0 view .LVU10
	movi.n	a2, 0
	retw.n
.LFE26:
	.size	esp_himem_get_free_size, .-esp_himem_get_free_size
	.section	.text.esp_himem_reserved_area_size,"ax",@progbits
	.align	4
	.global	esp_himem_reserved_area_size
	.type	esp_himem_reserved_area_size, @function
esp_himem_reserved_area_size:
.LFB27:
	.loc 1 135 43 is_stmt 1 view -0
	entry	sp, 32
.LCFI2:
	.loc 1 136 5 view .LVU12
	.loc 1 137 1 is_stmt 0 view .LVU13
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	esp_himem_reserved_area_size, .-esp_himem_reserved_area_size
	.section	.text.startup.esp_himem_init,"ax",@progbits
	.align	4
	.global	esp_himem_init
	.type	esp_himem_init, @function
esp_himem_init:
.LFB28:
	.loc 1 141 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI3:
	.loc 1 142 5 view .LVU15
	.loc 1 142 17 view .LVU16
	.loc 1 166 1 is_stmt 0 view .LVU17
	retw.n
.LFE28:
	.size	esp_himem_init, .-esp_himem_init
	.section	.text.esp_himem_alloc,"ax",@progbits
	.literal_position
	.literal .LC1, spinlock
	.align	4
	.global	esp_himem_alloc
	.type	esp_himem_alloc, @function
esp_himem_alloc:
.LVL3:
.LFB30:
	.loc 1 195 1 is_stmt 1 view -0
	.loc 1 195 1 is_stmt 0 view .LVU19
	entry	sp, 32
.LCFI4:
	.loc 1 196 5 is_stmt 1 view .LVU20
	.loc 1 196 14 is_stmt 0 view .LVU21
	extui	a5, a2, 0, 15
	.loc 1 195 1 view .LVU22
	mov.n	a4, a2
	.loc 1 197 16 view .LVU23
	movi	a2, 0x104
.LVL4:
	.loc 1 196 8 view .LVU24
	bnez.n	a5, .L5
	.loc 1 199 5 is_stmt 1 view .LVU25
	.loc 1 200 30 is_stmt 0 view .LVU26
	movi.n	a11, 1
	movi.n	a10, 8
	call8	calloc
.LVL5:
	.loc 1 199 23 view .LVU27
	srli	a2, a4, 15
.LVL6:
	.loc 1 200 5 is_stmt 1 view .LVU28
	.loc 1 200 30 is_stmt 0 view .LVU29
	mov.n	a4, a10
.LVL7:
	.loc 1 201 5 is_stmt 1 view .LVU30
	.loc 1 201 8 is_stmt 0 view .LVU31
	beqz.n	a10, .L7
	.loc 1 204 5 is_stmt 1 view .LVU32
	.loc 1 204 16 is_stmt 0 view .LVU33
	mov.n	a11, a2
	movi.n	a10, 2
	call8	calloc
.LVL8:
	.loc 1 204 14 view .LVU34
	s32i.n	a10, a4, 4
	.loc 1 205 5 is_stmt 1 view .LVU35
	.loc 1 205 8 is_stmt 0 view .LVU36
	beqz.n	a10, .L8
	.loc 1 208 5 is_stmt 1 view .LVU37
	l32r	a5, .LC1
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL9:
	.loc 1 209 5 view .LVU38
	.loc 1 173 5 view .LVU39
	.loc 1 174 5 view .LVU40
	.loc 1 174 10 view .LVU41
	.loc 1 180 5 view .LVU42
	.loc 1 210 5 view .LVU43
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL10:
	.loc 1 211 5 view .LVU44
	.loc 1 211 8 is_stmt 0 view .LVU45
	bnez.n	a2, .L8
.LVL11:
	.loc 1 214 5 is_stmt 1 view .LVU46
	.loc 1 214 17 is_stmt 0 view .LVU47
	s32i.n	a2, a4, 0
	.loc 1 215 5 is_stmt 1 view .LVU48
	.loc 1 215 17 is_stmt 0 view .LVU49
	s32i.n	a4, a3, 0
	.loc 1 216 5 is_stmt 1 view .LVU50
	.loc 1 216 12 is_stmt 0 view .LVU51
	j	.L5
.LVL12:
.L7:
	.loc 1 221 5 is_stmt 1 view .LVU52
	mov.n	a10, a4
	call8	free
.LVL13:
	.loc 1 222 5 view .LVU53
	.loc 1 222 12 is_stmt 0 view .LVU54
	movi	a2, 0x101
.LVL14:
	.loc 1 222 12 view .LVU55
	j	.L5
.LVL15:
.L8:
	.loc 1 218 5 is_stmt 1 view .LVU56
	.loc 1 219 9 view .LVU57
	l32i.n	a10, a4, 4
	call8	free
.LVL16:
	j	.L7
.LVL17:
.L5:
	.loc 1 223 1 is_stmt 0 view .LVU58
	retw.n
.LFE30:
	.size	esp_himem_alloc, .-esp_himem_alloc
	.section	.rodata.esp_himem_free.str1.1,"aMS",@progbits,1
.LC2:
	.string	"ramblock_idx_valid(handle->block[i])"
.LC5:
	.string	"/home/dieter/Development/esp-idf/components/esp32/esp_himem.c"
	.section	.text.esp_himem_free,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$4670
	.literal .LC6, .LC5
	.literal .LC7, spinlock
	.align	4
	.global	esp_himem_free
	.type	esp_himem_free, @function
esp_himem_free:
.LVL18:
.LFB31:
	.loc 1 226 1 is_stmt 1 view -0
	.loc 1 226 1 is_stmt 0 view .LVU60
	entry	sp, 32
.LCFI5:
	.loc 1 228 5 is_stmt 1 view .LVU61
.LBB14:
	.loc 1 228 10 view .LVU62
.LVL19:
	.loc 1 228 5 is_stmt 0 view .LVU63
	l32i.n	a3, a2, 0
	blti	a3, 1, .L17
	.loc 1 229 8 is_stmt 1 view .LVU64
.LVL20:
	.loc 1 229 8 is_stmt 0 view .LVU65
.LBE14:
	.loc 1 103 5 is_stmt 1 view .LVU66
.LBB15:
	.loc 1 229 22 is_stmt 0 view .LVU67
	l32r	a13, .LC3
	l32r	a12, .LC4
	l32r	a10, .LC6
	movi	a11, 0xe5
	call8	__assert_func
.LVL21:
.L17:
.LBE15:
	.loc 1 233 5 is_stmt 1 view .LVU68
	l32r	a3, .LC7
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL22:
	.loc 1 234 5 view .LVU69
.LBB16:
	.loc 1 234 10 view .LVU70
	.loc 1 234 31 is_stmt 0 view .LVU71
	l32i.n	a11, a2, 0
	.loc 1 234 14 view .LVU72
	movi.n	a8, 0
	.loc 1 235 55 view .LVU73
	movi.n	a12, -2
	.loc 1 234 5 view .LVU74
	j	.L18
.LVL23:
.L19:
	.loc 1 235 9 is_stmt 1 discriminator 3 view .LVU75
	.loc 1 235 39 is_stmt 0 discriminator 3 view .LVU76
	l32i.n	a9, a2, 4
	slli	a10, a8, 1
	add.n	a9, a9, a10
	.loc 1 235 25 discriminator 3 view .LVU77
	l16ui	a9, a9, 0
	.loc 1 234 44 discriminator 3 view .LVU78
	addi.n	a8, a8, 1
.LVL24:
	.loc 1 235 25 discriminator 3 view .LVU79
	slli	a9, a9, 2
	.loc 1 235 55 discriminator 3 view .LVU80
	l8ui	a10, a9, 0
	and	a10, a10, a12
	s8i	a10, a9, 0
.LVL25:
.L18:
	.loc 1 234 5 discriminator 1 view .LVU81
	blt	a8, a11, .L19
.LBE16:
	.loc 1 237 5 is_stmt 1 view .LVU82
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL26:
	.loc 1 240 5 view .LVU83
	l32i.n	a10, a2, 4
	call8	free
.LVL27:
	.loc 1 241 5 view .LVU84
	mov.n	a10, a2
	call8	free
.LVL28:
	.loc 1 242 5 view .LVU85
	.loc 1 243 1 is_stmt 0 view .LVU86
	movi.n	a2, 0
.LVL29:
	.loc 1 243 1 view .LVU87
	retw.n
.LFE31:
	.size	esp_himem_free, .-esp_himem_free
	.section	.rodata.esp_himem_alloc_map_range.str1.1,"aMS",@progbits,1
.LC9:
	.string	"esp_himem"
.LC11:
	.string	"\033[0;31mE (%d) %s: %s: %s\033[0m\n"
.LC13:
	.string	"Himem not available!"
	.section	.text.esp_himem_alloc_map_range,"ax",@progbits
	.literal_position
	.literal .LC8, __FUNCTION__$4683
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	esp_himem_alloc_map_range
	.type	esp_himem_alloc_map_range, @function
esp_himem_alloc_map_range:
.LVL30:
.LFB32:
	.loc 1 247 1 is_stmt 1 view -0
	.loc 1 247 1 is_stmt 0 view .LVU89
	entry	sp, 48
.LCFI6:
	.loc 1 248 5 is_stmt 1 view .LVU90
	.loc 1 248 6 view .LVU91
	.loc 1 248 10 view .LVU92
	.loc 1 248 15 view .LVU93
	.loc 1 248 41 view .LVU94
	.loc 1 248 46 view .LVU95
	.loc 1 248 83 view .LVU96
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC10
	l32r	a8, .LC14
	l32r	a15, .LC8
	l32r	a12, .LC12
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 248 1093 view .LVU97
	.loc 1 283 1 is_stmt 0 view .LVU98
	movi	a2, 0x103
.LVL33:
	.loc 1 283 1 view .LVU99
	retw.n
.LFE32:
	.size	esp_himem_alloc_map_range, .-esp_himem_alloc_map_range
	.section	.rodata.esp_himem_free_map_range.str1.1,"aMS",@progbits,1
.LC15:
	.string	"rangeblock_idx_valid(handle->block_start + i)"
	.section	.text.esp_himem_free_map_range,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC17, __func__$4699
	.literal .LC18, .LC5
	.literal .LC19, spinlock
	.align	4
	.global	esp_himem_free_map_range
	.type	esp_himem_free_map_range, @function
esp_himem_free_map_range:
.LVL34:
.LFB33:
	.loc 1 286 1 is_stmt 1 view -0
	.loc 1 286 1 is_stmt 0 view .LVU101
	entry	sp, 32
.LCFI7:
	.loc 1 288 5 is_stmt 1 view .LVU102
.LBB17:
	.loc 1 288 10 view .LVU103
.LVL35:
	.loc 1 288 5 is_stmt 0 view .LVU104
	l32i.n	a3, a2, 0
	blti	a3, 1, .L22
	.loc 1 289 8 is_stmt 1 view .LVU105
.LVL36:
	.loc 1 289 8 is_stmt 0 view .LVU106
.LBE17:
	.loc 1 108 5 is_stmt 1 view .LVU107
.LBB18:
	.loc 1 289 22 is_stmt 0 view .LVU108
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32r	a10, .LC18
	movi	a11, 0x121
	call8	__assert_func
.LVL37:
.L22:
	.loc 1 289 22 view .LVU109
.LBE18:
	.loc 1 294 5 is_stmt 1 view .LVU110
	l32r	a3, .LC19
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL38:
	.loc 1 295 5 view .LVU111
.LBB19:
	.loc 1 295 10 view .LVU112
	.loc 1 295 31 is_stmt 0 view .LVU113
	l32i.n	a11, a2, 0
	.loc 1 295 14 view .LVU114
	movi.n	a9, 0
	.loc 1 296 64 view .LVU115
	movi.n	a12, -2
	.loc 1 295 5 view .LVU116
	j	.L23
.LVL39:
.L24:
	.loc 1 296 9 is_stmt 1 discriminator 3 view .LVU117
	.loc 1 296 27 is_stmt 0 discriminator 3 view .LVU118
	l32i.n	a8, a2, 4
	add.n	a8, a9, a8
	.loc 1 296 64 discriminator 3 view .LVU119
	slli	a8, a8, 2
	l32i.n	a10, a8, 0
	.loc 1 295 44 discriminator 3 view .LVU120
	addi.n	a9, a9, 1
.LVL40:
	.loc 1 296 64 discriminator 3 view .LVU121
	and	a10, a10, a12
	s32i.n	a10, a8, 0
.LVL41:
.L23:
	.loc 1 295 5 discriminator 1 view .LVU122
	blt	a9, a11, .L24
.LBE19:
	.loc 1 298 5 is_stmt 1 view .LVU123
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL42:
	.loc 1 299 5 view .LVU124
	mov.n	a10, a2
	call8	free
.LVL43:
	.loc 1 300 5 view .LVU125
	.loc 1 301 1 is_stmt 0 view .LVU126
	movi.n	a2, 0
.LVL44:
	.loc 1 301 1 view .LVU127
	retw.n
.LFE33:
	.size	esp_himem_free_map_range, .-esp_himem_free_map_range
	.section	.text.esp_himem_map,"ax",@progbits
	.literal_position
	.literal .LC20, __FUNCTION__$4720
	.literal .LC21, .LC9
	.literal .LC22, .LC11
	.literal .LC23, .LC13
	.align	4
	.global	esp_himem_map
	.type	esp_himem_map, @function
esp_himem_map:
.LVL45:
.LFB34:
	.loc 1 305 1 is_stmt 1 view -0
	.loc 1 305 1 is_stmt 0 view .LVU129
	entry	sp, 48
.LCFI8:
	.loc 1 306 5 is_stmt 1 view .LVU130
.LVL46:
	.loc 1 307 5 view .LVU131
	.loc 1 308 5 view .LVU132
	.loc 1 309 5 view .LVU133
	.loc 1 309 6 view .LVU134
	.loc 1 309 10 view .LVU135
	.loc 1 309 15 view .LVU136
	.loc 1 309 41 view .LVU137
	.loc 1 309 46 view .LVU138
	.loc 1 309 83 view .LVU139
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC21
	l32r	a8, .LC23
	l32r	a15, .LC20
	l32r	a12, .LC22
	mov.n	a13, a10
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	.loc 1 309 1093 view .LVU140
	.loc 1 340 1 is_stmt 0 view .LVU141
	movi	a2, 0x103
.LVL49:
	.loc 1 305 1 view .LVU142
	.loc 1 340 1 view .LVU143
	retw.n
.LFE34:
	.size	esp_himem_map, .-esp_himem_map
	.section	.rodata.esp_himem_unmap.str1.1,"aMS",@progbits,1
.LC29:
	.string	"range offset not block-aligned"
.LC31:
	.string	"map length not block-aligned"
.LC33:
	.string	"range out of bounds for handle"
.LC36:
	.string	"ramblock_idx_valid(ramblock)"
	.section	.text.esp_himem_unmap,"ax",@progbits
	.literal_position
	.literal .LC24, -1069547520
	.literal .LC25, 32767
	.literal .LC26, __FUNCTION__$4742
	.literal .LC27, .LC9
	.literal .LC28, .LC11
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC35, spinlock
	.literal .LC37, .LC36
	.literal .LC38, __func__$4745
	.literal .LC39, .LC5
	.align	4
	.global	esp_himem_unmap
	.type	esp_himem_unmap, @function
esp_himem_unmap:
.LVL50:
.LFB35:
	.loc 1 343 1 is_stmt 1 view -0
	.loc 1 343 1 is_stmt 0 view .LVU145
	entry	sp, 48
.LCFI9:
	.loc 1 347 5 is_stmt 1 view .LVU146
	.loc 1 347 38 is_stmt 0 view .LVU147
	l32r	a5, .LC24
	.loc 1 348 37 view .LVU148
	l32r	a8, .LC25
	.loc 1 347 38 view .LVU149
	add.n	a3, a3, a5
.LVL51:
	.loc 1 348 5 is_stmt 1 view .LVU150
	.loc 1 348 37 is_stmt 0 view .LVU151
	add.n	a8, a3, a8
	movgez	a8, a3, a3
	.loc 1 348 9 view .LVU152
	l32i.n	a5, a2, 4
	.loc 1 348 37 view .LVU153
	srai	a8, a8, 15
	.loc 1 350 34 view .LVU154
	extui	a3, a3, 0, 15
.LVL52:
	.loc 1 348 9 view .LVU155
	sub	a8, a8, a5
.LVL53:
	.loc 1 349 5 is_stmt 1 view .LVU156
	.loc 1 349 26 is_stmt 0 view .LVU157
	srli	a5, a4, 15
.LVL54:
	.loc 1 350 5 is_stmt 1 view .LVU158
	.loc 1 350 8 is_stmt 0 view .LVU159
	beqz.n	a3, .L27
	.loc 1 350 40 is_stmt 1 discriminator 4 view .LVU160
	.loc 1 350 44 discriminator 4 view .LVU161
	.loc 1 350 49 discriminator 4 view .LVU162
	.loc 1 350 75 discriminator 4 view .LVU163
	.loc 1 350 80 discriminator 4 view .LVU164
	.loc 1 350 117 discriminator 4 view .LVU165
	call8	esp_log_timestamp
.LVL55:
	.loc 1 350 117 is_stmt 0 discriminator 4 view .LVU166
	l32r	a11, .LC27
	l32r	a2, .LC30
.LVL56:
	.loc 1 350 117 discriminator 4 view .LVU167
	j	.L32
.LVL57:
.L27:
	.loc 1 351 5 is_stmt 1 view .LVU168
	.loc 1 351 13 is_stmt 0 view .LVU169
	extui	a4, a4, 0, 15
.LVL58:
	.loc 1 351 8 view .LVU170
	beqz.n	a4, .L29
	.loc 1 351 31 is_stmt 1 discriminator 4 view .LVU171
	.loc 1 351 35 discriminator 4 view .LVU172
	.loc 1 351 40 discriminator 4 view .LVU173
	.loc 1 351 66 discriminator 4 view .LVU174
	.loc 1 351 71 discriminator 4 view .LVU175
	.loc 1 351 108 discriminator 4 view .LVU176
	call8	esp_log_timestamp
.LVL59:
	.loc 1 351 108 is_stmt 0 discriminator 4 view .LVU177
	l32r	a11, .LC27
	l32r	a2, .LC32
.LVL60:
	.loc 1 351 108 discriminator 4 view .LVU178
	j	.L32
.LVL61:
.L29:
	.loc 1 352 5 is_stmt 1 view .LVU179
	.loc 1 352 8 is_stmt 0 view .LVU180
	l32i.n	a2, a2, 0
.LVL62:
	.loc 1 352 21 view .LVU181
	add.n	a8, a8, a5
.LVL63:
	.loc 1 352 8 view .LVU182
	bge	a2, a8, .L30
	.loc 1 352 53 is_stmt 1 discriminator 4 view .LVU183
	.loc 1 352 57 discriminator 4 view .LVU184
	.loc 1 352 62 discriminator 4 view .LVU185
	.loc 1 352 88 discriminator 4 view .LVU186
	.loc 1 352 93 discriminator 4 view .LVU187
	.loc 1 352 130 discriminator 4 view .LVU188
	call8	esp_log_timestamp
.LVL64:
	.loc 1 352 130 is_stmt 0 discriminator 4 view .LVU189
	l32r	a11, .LC27
	l32r	a2, .LC34
.L32:
	.loc 1 352 130 discriminator 4 view .LVU190
	l32r	a15, .LC26
	l32r	a12, .LC28
	s32i.n	a2, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL65:
	.loc 1 352 1190 is_stmt 1 discriminator 4 view .LVU191
	.loc 1 352 1197 is_stmt 0 discriminator 4 view .LVU192
	movi	a2, 0x102
	j	.L26
.LVL66:
.L30:
	.loc 1 354 5 is_stmt 1 view .LVU193
	l32r	a2, .LC35
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL67:
	.loc 1 355 5 view .LVU194
.LBB31:
	.loc 1 355 10 view .LVU195
	.loc 1 355 5 is_stmt 0 view .LVU196
	beqz.n	a5, .L31
.LBB32:
	.loc 1 356 9 is_stmt 1 view .LVU197
.LVL68:
	.loc 1 357 8 view .LVU198
	.loc 1 357 8 is_stmt 0 view .LVU199
.LBE32:
.LBE31:
	.loc 1 103 5 is_stmt 1 view .LVU200
.LBB34:
.LBB33:
	.loc 1 357 22 is_stmt 0 view .LVU201
	l32r	a13, .LC37
	l32r	a12, .LC38
	l32r	a10, .LC39
	movi	a11, 0x165
	call8	__assert_func
.LVL69:
.L31:
	.loc 1 357 22 view .LVU202
.LBE33:
.LBE34:
	.loc 1 361 5 is_stmt 1 view .LVU203
	call8	esp_spiram_writeback_cache
.LVL70:
	.loc 1 362 5 view .LVU204
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL71:
	.loc 1 363 5 view .LVU205
	.loc 1 363 12 is_stmt 0 view .LVU206
	mov.n	a2, a5
.LVL72:
.L26:
	.loc 1 364 1 view .LVU207
	retw.n
.LFE35:
	.size	esp_himem_unmap, .-esp_himem_unmap
	.section	.rodata.__func__$4745,"a"
	.type	__func__$4745, @object
	.size	__func__$4745, 16
__func__$4745:
	.string	"esp_himem_unmap"
	.section	.rodata.__FUNCTION__$4742,"a"
	.type	__FUNCTION__$4742, @object
	.size	__FUNCTION__$4742, 16
__FUNCTION__$4742:
	.string	"esp_himem_unmap"
	.section	.rodata.__FUNCTION__$4720,"a"
	.type	__FUNCTION__$4720, @object
	.size	__FUNCTION__$4720, 14
__FUNCTION__$4720:
	.string	"esp_himem_map"
	.section	.rodata.__func__$4699,"a"
	.type	__func__$4699, @object
	.size	__func__$4699, 25
__func__$4699:
	.string	"esp_himem_free_map_range"
	.section	.rodata.__FUNCTION__$4683,"a"
	.type	__FUNCTION__$4683, @object
	.size	__FUNCTION__$4683, 26
__FUNCTION__$4683:
	.string	"esp_himem_alloc_map_range"
	.section	.rodata.__func__$4670,"a"
	.type	__func__$4670, @object
	.size	__func__$4670, 15
__func__$4670:
	.string	"esp_himem_free"
	.section	.data.spinlock,"aw"
	.align	4
	.type	spinlock, @object
	.size	spinlock, 8
spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 9 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 10 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 13 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 14 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/himem.h"
	.file 15 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h"
	.file 16 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 17 "/home/dieter/Development/esp-idf/components/esp32/include/esp32/spiram.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c10
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF337
	.byte	0xc
	.4byte	.LASF338
	.4byte	.LASF339
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x3d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	0x3d
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x49
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x49
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4d
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x3d
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x3d
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x107
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x107
	.byte	0
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x117
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x13b
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x117
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xad
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xe
	.byte	0x4
	.4byte	0x162
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	0x162
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x155
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1da
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17a
	.uleb128 0x9
	.4byte	0x16e
	.4byte	0x1ea
	.uleb128 0xa
	.4byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x26d
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b2
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b2
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x16e
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x16e
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x2c2
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x304
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x30a
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x321
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0x9
	.4byte	0x31a
	.4byte	0x31a
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x320
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x26d
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x34f
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x34f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3c8
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x34f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x68
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x327
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x52c
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x355
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x52c
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x772
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x772
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x772
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x15c
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8da
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8e0
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8f1
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x15c
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8f7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x8fd
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x15c
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x90e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x304
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c2
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x733
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x772
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x91a
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x15c
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x675
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x34f
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x68
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x327
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x52c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x153
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x693
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6c2
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6e6
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x700
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x327
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x34f
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x25
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x706
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x716
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x327
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xc0
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x147
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x13b
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x693
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0x15c
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x675
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x169
	.uleb128 0x3
	.4byte	0x6b7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x699
	.uleb128 0x17
	.4byte	0xcc
	.4byte	0x6e6
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.uleb128 0x18
	.4byte	0xcc
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x17
	.4byte	0x25
	.4byte	0x700
	.uleb128 0x18
	.4byte	0x52c
	.uleb128 0x18
	.4byte	0x153
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ec
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x716
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5c
	.4byte	0x726
	.uleb128 0xa
	.4byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x532
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x76c
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x76c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x772
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x733
	.uleb128 0xe
	.byte	0x4
	.4byte	0x726
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7bf
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7bf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7bf
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x49
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x49
	.4byte	0x7cf
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x816
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d4
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x816
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8c5
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x15c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x13b
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x13b
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x13b
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8c5
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x25
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x13b
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x13b
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x13b
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x13b
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x13b
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x162
	.4byte	0x8d5
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF340
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7cf
	.uleb128 0x1a
	.4byte	0x8f1
	.uleb128 0x18
	.4byte	0x52c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x778
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x1a
	.4byte	0x90e
	.uleb128 0x18
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x914
	.uleb128 0xe
	.byte	0x4
	.4byte	0x903
	.uleb128 0xe
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3c8
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x52c
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x8
	.byte	0x94
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x9
	.4byte	0x153
	.4byte	0x994
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x8
	.byte	0xb3
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x8
	.byte	0xb4
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x8
	.byte	0xb6
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x8
	.byte	0xb7
	.byte	0xe
	.4byte	0x984
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x8
	.byte	0xbd
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x8
	.byte	0xbe
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x9
	.4byte	0x44
	.4byte	0x9ec
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9dc
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x8
	.byte	0xbf
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x8
	.byte	0xc0
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x8
	.byte	0xc1
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x8
	.byte	0xc2
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x9
	.4byte	0x6bd
	.4byte	0xa31
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xa21
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x8
	.byte	0xc4
	.byte	0x1b
	.4byte	0xa31
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x8
	.byte	0xd1
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x8
	.byte	0xd4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x8
	.byte	0xd6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x8
	.byte	0xda
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x8
	.byte	0xed
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x8
	.byte	0xee
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x8
	.byte	0xf6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x8
	.byte	0xf7
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x8
	.byte	0xf9
	.byte	0x1d
	.4byte	0x50
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x8
	.byte	0xfa
	.byte	0x1d
	.4byte	0x50
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x8
	.byte	0xfd
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x8
	.byte	0xfe
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x100
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x160
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x193
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x194
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x8
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x198
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x199
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x8
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x8
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x8
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x8
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x50
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x8
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x8
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x8
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6bd
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x9
	.4byte	0x44
	.4byte	0xc82
	.uleb128 0xa
	.4byte	0x3d
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc72
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc82
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc82
	.uleb128 0x9
	.4byte	0x63
	.4byte	0xcb1
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xca1
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xcb1
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x8
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0x9ec
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xced
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xcdd
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xced
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x8
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x8
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x8
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x8
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x8
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x8
	.2byte	0x30b
	.byte	0x11
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x8
	.2byte	0x315
	.byte	0x11
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x318
	.byte	0x11
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x8
	.2byte	0x325
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x326
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x8
	.2byte	0x327
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x328
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x8
	.2byte	0x329
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x9
	.4byte	0x44
	.4byte	0xdf4
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0xde9
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x8
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x330
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x8
	.2byte	0x331
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x332
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x333
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x334
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x335
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x336
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x337
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x338
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x339
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xdf4
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x343
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x8
	.2byte	0x344
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x346
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x8
	.2byte	0x347
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x349
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x8
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x8
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x390
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x392
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x393
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x394
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x395
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x396
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x397
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x398
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x399
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x8
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0x8
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x500
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0x9
	.2byte	0x503
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0x9
	.2byte	0x504
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0x9
	.2byte	0x507
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x9
	.2byte	0x508
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0x9
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x9
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0x9
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x510
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x513
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x514
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x517
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0x9
	.2byte	0x518
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x9
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0x9
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x44
	.uleb128 0x1c
	.4byte	.LASF264
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x15c
	.uleb128 0x9
	.4byte	0x6bd
	.4byte	0x10fa
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	0x10ea
	.uleb128 0x1c
	.4byte	.LASF265
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x10fa
	.uleb128 0x4
	.4byte	.LASF266
	.byte	0xc
	.byte	0x18
	.byte	0x11
	.4byte	0x960
	.uleb128 0xb
	.byte	0x8
	.byte	0xd
	.byte	0x8a
	.byte	0x9
	.4byte	0x113b
	.uleb128 0xc
	.4byte	.LASF267
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.4byte	0x96c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF268
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.4byte	0x96c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF269
	.byte	0xd
	.byte	0xa0
	.byte	0x3
	.4byte	0x1117
	.uleb128 0x4
	.4byte	.LASF270
	.byte	0xe
	.byte	0x18
	.byte	0x25
	.4byte	0x1153
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1159
	.uleb128 0xf
	.4byte	.LASF271
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.byte	0x10
	.4byte	0x1181
	.uleb128 0xc
	.4byte	.LASF272
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0x1
	.byte	0x60
	.byte	0xf
	.4byte	0x12b3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF274
	.byte	0xe
	.byte	0x19
	.byte	0x27
	.4byte	0x118d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1193
	.uleb128 0xf
	.4byte	.LASF275
	.byte	0x8
	.byte	0x1
	.byte	0x58
	.byte	0x10
	.4byte	0x11bb
	.uleb128 0xc
	.4byte	.LASF272
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF276
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.4byte	0x3d
	.byte	0x10
	.byte	0x23
	.byte	0xe
	.4byte	0x11ee
	.uleb128 0x1f
	.4byte	.LASF277
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF278
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF279
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF280
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF281
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF282
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.4byte	0x1218
	.uleb128 0x20
	.4byte	.LASF283
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x3d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF284
	.byte	0x1
	.byte	0x48
	.byte	0x12
	.4byte	0x3d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF285
	.byte	0x1
	.byte	0x49
	.byte	0x3
	.4byte	0x11ee
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x125e
	.uleb128 0x20
	.4byte	.LASF283
	.byte	0x1
	.byte	0x4d
	.byte	0x12
	.4byte	0x3d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF284
	.byte	0x1
	.byte	0x4e
	.byte	0x12
	.4byte	0x3d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x20
	.4byte	.LASF286
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.4byte	0x3d
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF287
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.4byte	0x1224
	.uleb128 0x21
	.4byte	.LASF288
	.byte	0x1
	.byte	0x52
	.byte	0x14
	.4byte	0x1276
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1218
	.uleb128 0x21
	.4byte	.LASF289
	.byte	0x1
	.byte	0x53
	.byte	0x16
	.4byte	0x1288
	.uleb128 0xe
	.byte	0x4
	.4byte	0x125e
	.uleb128 0x21
	.4byte	.LASF290
	.byte	0x1
	.byte	0x54
	.byte	0xc
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LASF291
	.byte	0x1
	.byte	0x55
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF275
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.4byte	0x1193
	.uleb128 0xe
	.byte	0x4
	.4byte	0x954
	.uleb128 0x4
	.4byte	.LASF271
	.byte	0x1
	.byte	0x61
	.byte	0x3
	.4byte	0x1159
	.uleb128 0x23
	.4byte	.LASF292
	.byte	0x1
	.byte	0x63
	.byte	0x15
	.4byte	0x113b
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0x24
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x156
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1471
	.uleb128 0x25
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x156
	.byte	0x33
	.4byte	0x1181
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.2byte	0x156
	.byte	0x40
	.4byte	0x153
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.2byte	0x156
	.byte	0x4c
	.4byte	0x31
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x27
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x15b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x27
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x15c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x27
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x15d
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x28
	.4byte	.LASF297
	.4byte	0x1481
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4742
	.uleb128 0x28
	.4byte	.LASF298
	.4byte	0x1481
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4745
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x13ea
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x163
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x164
	.byte	0xd
	.4byte	0x25
	.uleb128 0x2d
	.4byte	.LVL69
	.4byte	0x1ba6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4745
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL55
	.4byte	0x1bb2
	.uleb128 0x2f
	.4byte	.LVL59
	.4byte	0x1bb2
	.uleb128 0x2f
	.4byte	.LVL64
	.4byte	0x1bb2
	.uleb128 0x30
	.4byte	.LVL65
	.4byte	0x1bbe
	.4byte	0x1443
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4742
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL67
	.4byte	0x1bca
	.4byte	0x1457
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL70
	.4byte	0x1bd7
	.uleb128 0x2d
	.4byte	.LVL71
	.4byte	0x1be3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1481
	.uleb128 0xa
	.4byte	0x3d
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0x1471
	.uleb128 0x24
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x130
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e2
	.uleb128 0x25
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x130
	.byte	0x2c
	.4byte	0x1147
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x31
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x130
	.byte	0x4c
	.4byte	0x1181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x130
	.byte	0x5a
	.4byte	0x31
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x130
	.byte	0x6d
	.4byte	0x31
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.2byte	0x130
	.byte	0x82
	.4byte	0x31
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x31
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x130
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x130
	.byte	0x99
	.4byte	0x15e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x132
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x27
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x133
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x27
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x134
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x28
	.4byte	.LASF297
	.4byte	0x15f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4720
	.uleb128 0x33
	.4byte	.LASF298
	.4byte	0x15f8
	.uleb128 0x34
	.4byte	0x1579
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x13f
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x34
	.4byte	0x158a
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x146
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x34
	.4byte	0x159b
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x14d
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL47
	.4byte	0x1bb2
	.uleb128 0x2d
	.4byte	.LVL48
	.4byte	0x1bbe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4720
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x153
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x15f8
	.uleb128 0xa
	.4byte	0x3d
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	0x15e8
	.uleb128 0x24
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x11d
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e5
	.uleb128 0x25
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x11d
	.byte	0x3c
	.4byte	0x1181
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x28
	.4byte	.LASF298
	.4byte	0x16f5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4699
	.uleb128 0x36
	.4byte	.LASF297
	.4byte	0x16f5
	.4byte	.LASF306
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x168b
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x120
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL37
	.4byte	0x1ba6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4699
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x16ac
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x127
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x30
	.4byte	.LVL38
	.4byte	0x1bca
	.4byte	0x16c0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL42
	.4byte	0x1be3
	.4byte	0x16d4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL43
	.4byte	0x1bef
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x16f5
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	0x16e5
	.uleb128 0x39
	.4byte	.LASF307
	.byte	0x1
	.byte	0xf6
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d1
	.uleb128 0x3a
	.4byte	.LASF308
	.byte	0x1
	.byte	0xf6
	.byte	0x2c
	.4byte	0x31
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3b
	.4byte	.LASF309
	.byte	0x1
	.byte	0xf6
	.byte	0x4b
	.4byte	0x17d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF297
	.4byte	0x17e7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4683
	.uleb128 0x21
	.4byte	.LASF310
	.byte	0x1
	.byte	0xfa
	.byte	0x9
	.4byte	0x25
	.uleb128 0x3c
	.string	"r"
	.byte	0x1
	.byte	0xfb
	.byte	0x1c
	.4byte	0x17ec
	.uleb128 0x2c
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x101
	.byte	0x9
	.4byte	0x25
	.uleb128 0x34
	.4byte	0x1779
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x34
	.4byte	0x178a
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x114
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL31
	.4byte	0x1bb2
	.uleb128 0x2d
	.4byte	.LVL32
	.4byte	0x1bbe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4683
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1181
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x17e7
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.4byte	0x17d7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12a7
	.uleb128 0x39
	.4byte	.LASF312
	.byte	0x1
	.byte	0xe1
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18da
	.uleb128 0x3a
	.4byte	.LASF302
	.byte	0x1
	.byte	0xe1
	.byte	0x2d
	.4byte	0x1147
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x28
	.4byte	.LASF298
	.4byte	0x18ea
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4670
	.uleb128 0x33
	.4byte	.LASF297
	.4byte	0x18ea
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1878
	.uleb128 0x3d
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL21
	.4byte	0x1ba6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4670
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x1898
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.byte	0xea
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x30
	.4byte	.LVL22
	.4byte	0x1bca
	.4byte	0x18ac
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL26
	.4byte	0x1be3
	.4byte	0x18c0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL27
	.4byte	0x1bef
	.uleb128 0x2d
	.4byte	.LVL28
	.4byte	0x1bef
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x18ea
	.uleb128 0xa
	.4byte	0x3d
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	0x18da
	.uleb128 0x39
	.4byte	.LASF313
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.4byte	0x110b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e3
	.uleb128 0x3a
	.4byte	.LASF308
	.byte	0x1
	.byte	0xc2
	.byte	0x22
	.4byte	0x31
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3b
	.4byte	.LASF309
	.byte	0x1
	.byte	0xc2
	.byte	0x3c
	.4byte	0x19e3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LASF310
	.byte	0x1
	.byte	0xc7
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3e
	.string	"r"
	.byte	0x1
	.byte	0xc8
	.byte	0x1a
	.4byte	0x19e9
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x40
	.4byte	.LASF341
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uleb128 0x3e
	.string	"ok"
	.byte	0x1
	.byte	0xd1
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x30
	.4byte	.LVL5
	.4byte	0x1bfb
	.4byte	0x1984
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.4byte	.LVL8
	.4byte	0x1bfb
	.4byte	0x199d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL9
	.4byte	0x1bca
	.4byte	0x19b1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL10
	.4byte	0x1be3
	.4byte	0x19c5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL13
	.4byte	0x1bef
	.4byte	0x19d9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL16
	.4byte	0x1bef
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1147
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12b9
	.uleb128 0x41
	.4byte	.LASF323
	.byte	0x1
	.byte	0xab
	.byte	0xc
	.4byte	0x1a48
	.byte	0x1
	.4byte	0x1a48
	.uleb128 0x42
	.4byte	.LASF268
	.byte	0x1
	.byte	0xab
	.byte	0x20
	.4byte	0x25
	.uleb128 0x42
	.4byte	.LASF314
	.byte	0x1
	.byte	0xab
	.byte	0x31
	.4byte	0x12b3
	.uleb128 0x3c
	.string	"n"
	.byte	0x1
	.byte	0xad
	.byte	0x9
	.4byte	0x25
	.uleb128 0x33
	.4byte	.LASF298
	.4byte	0x1481
	.uleb128 0x34
	.4byte	0x1a3b
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.byte	0xae
	.byte	0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x43
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.byte	0x12
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF315
	.uleb128 0x44
	.4byte	.LASF342
	.byte	0x1
	.byte	0x8c
	.byte	0x23
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a93
	.uleb128 0x21
	.4byte	.LASF316
	.byte	0x1
	.byte	0x8f
	.byte	0x9
	.4byte	0x25
	.uleb128 0x33
	.4byte	.LASF297
	.4byte	0x18ea
	.uleb128 0x21
	.4byte	.LASF317
	.byte	0x1
	.byte	0x98
	.byte	0x9
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF318
	.byte	0x1
	.byte	0x99
	.byte	0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x45
	.4byte	.LASF343
	.byte	0x1
	.byte	0x87
	.byte	0x8
	.4byte	0x31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.4byte	.LASF319
	.byte	0x1
	.byte	0x7e
	.byte	0x8
	.4byte	0x31
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1add
	.uleb128 0x3d
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.byte	0xc
	.4byte	0x31
	.byte	0
	.uleb128 0x43
	.uleb128 0x3c
	.string	"i"
	.byte	0x1
	.byte	0x81
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF320
	.byte	0x1
	.byte	0x78
	.byte	0x8
	.4byte	0x31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b11
	.uleb128 0x46
	.4byte	.LASF317
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0x25
	.4byte	0x400000
	.uleb128 0x2f
	.4byte	.LVL1
	.4byte	0x1c07
	.byte	0
	.uleb128 0x47
	.4byte	.LASF344
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.byte	0x1
	.4byte	0x1b55
	.uleb128 0x42
	.4byte	.LASF321
	.byte	0x1
	.byte	0x6f
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x42
	.4byte	.LASF322
	.byte	0x1
	.byte	0x6f
	.byte	0x29
	.4byte	0x25
	.uleb128 0x48
	.string	"ct"
	.byte	0x1
	.byte	0x6f
	.byte	0x38
	.4byte	0x25
	.uleb128 0x3c
	.string	"r"
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0x25
	.uleb128 0x33
	.4byte	.LASF298
	.4byte	0x1b65
	.byte	0
	.uleb128 0x9
	.4byte	0x169
	.4byte	0x1b65
	.uleb128 0xa
	.4byte	0x3d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	0x1b55
	.uleb128 0x41
	.4byte	.LASF324
	.byte	0x1
	.byte	0x6a
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0x1b88
	.uleb128 0x42
	.4byte	.LASF325
	.byte	0x1
	.byte	0x6a
	.byte	0x2c
	.4byte	0x25
	.byte	0
	.uleb128 0x41
	.4byte	.LASF326
	.byte	0x1
	.byte	0x65
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0x1ba6
	.uleb128 0x42
	.4byte	.LASF327
	.byte	0x1
	.byte	0x65
	.byte	0x2a
	.4byte	0x25
	.byte	0
	.uleb128 0x49
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.uleb128 0x49
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x10
	.byte	0x5b
	.byte	0xa
	.uleb128 0x49
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x10
	.byte	0x7e
	.byte	0x6
	.uleb128 0x4a
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0xd
	.2byte	0x100
	.byte	0x6
	.uleb128 0x49
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x11
	.byte	0x5a
	.byte	0x6
	.uleb128 0x49
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0xd
	.byte	0xff
	.byte	0x6
	.uleb128 0x49
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0xa
	.byte	0x61
	.byte	0x6
	.uleb128 0x49
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0xa
	.byte	0x5e
	.byte	0x8
	.uleb128 0x49
	.4byte	.LASF336
	.4byte	.LASF336
	.byte	0x11
	.byte	0x50
	.byte	0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x39
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
	.uleb128 0x45
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS13:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST13:
	.4byte	.LVL50
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
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST14:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x7
	.byte	0x73
	.sleb128 1069547520
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 0
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU150
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE35
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU156
	.uleb128 .LVU166
	.uleb128 .LVU168
	.uleb128 .LVU177
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU189
	.uleb128 .LVU193
	.uleb128 .LVU194
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x2a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x3fbf8001
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x2a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x3fbf8001
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU158
	.uleb128 0
.LLST18:
	.4byte	.LVL54
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU196
	.uleb128 .LVU207
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU131
	.uleb128 0
.LLST10:
	.4byte	.LVL46
	.4byte	.LFE34
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU132
	.uleb128 0
.LLST11:
	.4byte	.LVL46
	.4byte	.LFE34
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU133
	.uleb128 0
.LLST12:
	.4byte	.LVL46
	.4byte	.LFE34
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU113
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU124
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU83
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU28
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU58
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU30
	.uleb128 .LVU58
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU43
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU52
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF248:
	.string	"Xthal_cp_id_FPU"
.LASF258:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF136:
	.string	"Xthal_all_extra_size"
.LASF5:
	.string	"size_t"
.LASF244:
	.string	"Xthal_itlb_arf_ways"
.LASF291:
	.string	"s_rangeblockcnt"
.LASF340:
	.string	"__locale_t"
.LASF20:
	.string	"__value"
.LASF78:
	.string	"__sf"
.LASF137:
	.string	"Xthal_all_extra_align"
.LASF160:
	.string	"Xthal_have_booleans"
.LASF342:
	.string	"esp_himem_init"
.LASF267:
	.string	"owner"
.LASF83:
	.string	"_read"
.LASF305:
	.string	"out_ptr"
.LASF182:
	.string	"Xthal_excm_level"
.LASF333:
	.string	"vTaskExitCritical"
.LASF84:
	.string	"_write"
.LASF127:
	.string	"Xthal_rev_no"
.LASF125:
	.string	"int32_t"
.LASF74:
	.string	"_asctime_buf"
.LASF70:
	.string	"_cvtlen"
.LASF289:
	.string	"s_range_descriptor"
.LASF194:
	.string	"Xthal_have_exceptions"
.LASF207:
	.string	"Xthal_instrom_vaddr"
.LASF260:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF298:
	.string	"__func__"
.LASF31:
	.string	"__tm"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF88:
	.string	"_nbuf"
.LASF32:
	.string	"__tm_sec"
.LASF272:
	.string	"block_ct"
.LASF164:
	.string	"Xthal_have_sext"
.LASF113:
	.string	"_l64a_buf"
.LASF319:
	.string	"esp_himem_get_free_size"
.LASF201:
	.string	"Xthal_tram_sync"
.LASF91:
	.string	"_lock"
.LASF168:
	.string	"Xthal_have_fp"
.LASF324:
	.string	"rangeblock_idx_valid"
.LASF100:
	.string	"_mult"
.LASF165:
	.string	"Xthal_have_clamps"
.LASF217:
	.string	"Xthal_dataram_paddr"
.LASF189:
	.string	"Xthal_num_ibreak"
.LASF129:
	.string	"Xthal_cpregs_restore_fn"
.LASF286:
	.string	"ram_block"
.LASF262:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF191:
	.string	"Xthal_have_ccount"
.LASF140:
	.string	"Xthal_cp_num"
.LASF130:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF17:
	.string	"__wch"
.LASF221:
	.string	"Xthal_xlmi_size"
.LASF55:
	.string	"_file"
.LASF41:
	.string	"_on_exit_args"
.LASF245:
	.string	"Xthal_dtlb_way_bits"
.LASF161:
	.string	"Xthal_have_loops"
.LASF323:
	.string	"allocate_blocks"
.LASF226:
	.string	"Xthal_icache_line_lockable"
.LASF203:
	.string	"Xthal_num_instram"
.LASF115:
	.string	"_mbrlen_state"
.LASF13:
	.string	"long int"
.LASF320:
	.string	"esp_himem_get_phys_size"
.LASF287:
	.string	"rangeblock_t"
.LASF105:
	.string	"_result_k"
.LASF296:
	.string	"blockcount"
.LASF52:
	.string	"_size"
.LASF174:
	.string	"Xthal_hw_configid0"
.LASF175:
	.string	"Xthal_hw_configid1"
.LASF138:
	.string	"Xthal_cp_names"
.LASF73:
	.string	"_localtime_buf"
.LASF216:
	.string	"Xthal_dataram_vaddr"
.LASF312:
	.string	"esp_himem_free"
.LASF36:
	.string	"__tm_mon"
.LASF247:
	.string	"Xthal_dtlb_arf_ways"
.LASF108:
	.string	"_misc_reent"
.LASF150:
	.string	"Xthal_dcache_size"
.LASF2:
	.string	"signed char"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF185:
	.string	"Xthal_intlevel"
.LASF197:
	.string	"Xthal_have_highlevel_interrupts"
.LASF195:
	.string	"Xthal_xea_version"
.LASF3:
	.string	"unsigned char"
.LASF243:
	.string	"Xthal_itlb_ways"
.LASF66:
	.string	"_unspecified_locale_info"
.LASF279:
	.string	"ESP_LOG_WARN"
.LASF297:
	.string	"__FUNCTION__"
.LASF58:
	.string	"_reent"
.LASF123:
	.string	"_global_impure_ptr"
.LASF322:
	.string	"phys_bank"
.LASF177:
	.string	"Xthal_hw_release_minor"
.LASF233:
	.string	"Xthal_have_tlbs"
.LASF315:
	.string	"_Bool"
.LASF141:
	.string	"Xthal_cp_max"
.LASF304:
	.string	"flags"
.LASF154:
	.string	"Xthal_release_minor"
.LASF271:
	.string	"esp_himem_ramdata_t"
.LASF24:
	.string	"char"
.LASF48:
	.string	"_fns"
.LASF172:
	.string	"Xthal_num_writebuffer_entries"
.LASF86:
	.string	"_close"
.LASF275:
	.string	"esp_himem_rangedata_t"
.LASF190:
	.string	"Xthal_num_dbreak"
.LASF128:
	.string	"Xthal_cpregs_save_fn"
.LASF6:
	.string	"__uint16_t"
.LASF60:
	.string	"_stdin"
.LASF204:
	.string	"Xthal_num_datarom"
.LASF326:
	.string	"ramblock_idx_valid"
.LASF236:
	.string	"Xthal_mmu_rings"
.LASF278:
	.string	"ESP_LOG_ERROR"
.LASF214:
	.string	"Xthal_datarom_paddr"
.LASF223:
	.string	"Xthal_dcache_setwidth"
.LASF337:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF215:
	.string	"Xthal_datarom_size"
.LASF235:
	.string	"Xthal_mmu_asid_kernel"
.LASF343:
	.string	"esp_himem_reserved_area_size"
.LASF332:
	.string	"esp_spiram_writeback_cache"
.LASF200:
	.string	"Xthal_tram_enabled"
.LASF156:
	.string	"Xthal_release_internal"
.LASF82:
	.string	"_cookie"
.LASF53:
	.string	"__sFILE_fake"
.LASF29:
	.string	"_wds"
.LASF75:
	.string	"_sig_func"
.LASF147:
	.string	"Xthal_icache_linesize"
.LASF163:
	.string	"Xthal_have_minmax"
.LASF90:
	.string	"_offset"
.LASF71:
	.string	"_cvtbuf"
.LASF328:
	.string	"__assert_func"
.LASF169:
	.string	"Xthal_have_speculation"
.LASF213:
	.string	"Xthal_datarom_vaddr"
.LASF176:
	.string	"Xthal_hw_release_major"
.LASF292:
	.string	"spinlock"
.LASF199:
	.string	"Xthal_tram_pending"
.LASF241:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF334:
	.string	"free"
.LASF344:
	.string	"set_bank"
.LASF311:
	.string	"start_free"
.LASF106:
	.string	"_p5s"
.LASF23:
	.string	"long unsigned int"
.LASF270:
	.string	"esp_himem_handle_t"
.LASF153:
	.string	"Xthal_release_major"
.LASF237:
	.string	"Xthal_mmu_ring_bits"
.LASF149:
	.string	"Xthal_icache_size"
.LASF81:
	.string	"__sFILE"
.LASF65:
	.string	"__sdidinit"
.LASF93:
	.string	"_flags2"
.LASF211:
	.string	"Xthal_instram_paddr"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF59:
	.string	"_errno"
.LASF134:
	.string	"Xthal_cpregs_size"
.LASF80:
	.string	"_signal_buf"
.LASF336:
	.string	"esp_spiram_get_size"
.LASF30:
	.string	"_Bigint"
.LASF27:
	.string	"_maxwds"
.LASF232:
	.string	"Xthal_have_cacheattr"
.LASF68:
	.string	"__cleanup"
.LASF317:
	.string	"paddr_start"
.LASF76:
	.string	"_atexit0"
.LASF321:
	.string	"virt_bank"
.LASF251:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF283:
	.string	"is_alloced"
.LASF246:
	.string	"Xthal_dtlb_ways"
.LASF8:
	.string	"__uint32_t"
.LASF64:
	.string	"_emergency"
.LASF11:
	.string	"_lock_t"
.LASF210:
	.string	"Xthal_instram_vaddr"
.LASF9:
	.string	"long long int"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF96:
	.string	"_niobs"
.LASF77:
	.string	"__sglue"
.LASF178:
	.string	"Xthal_hw_release_name"
.LASF69:
	.string	"_gamma_signgam"
.LASF266:
	.string	"esp_err_t"
.LASF231:
	.string	"Xthal_have_xlt_cacheattr"
.LASF253:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF107:
	.string	"_freelist"
.LASF325:
	.string	"rangeblock_idx"
.LASF97:
	.string	"_iobs"
.LASF184:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF95:
	.string	"_glue"
.LASF28:
	.string	"_sign"
.LASF198:
	.string	"Xthal_have_nmi"
.LASF284:
	.string	"is_mapped"
.LASF268:
	.string	"count"
.LASF300:
	.string	"esp_himem_unmap"
.LASF256:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF0:
	.string	"unsigned int"
.LASF152:
	.string	"Xthal_debug_configured"
.LASF290:
	.string	"s_ramblockcnt"
.LASF294:
	.string	"range_offset"
.LASF192:
	.string	"Xthal_num_ccompare"
.LASF159:
	.string	"Xthal_have_density"
.LASF196:
	.string	"Xthal_have_interrupts"
.LASF255:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF225:
	.string	"Xthal_dcache_ways"
.LASF316:
	.string	"maxram"
.LASF118:
	.string	"_wcrtomb_state"
.LASF173:
	.string	"Xthal_build_unique_id"
.LASF295:
	.string	"range_block"
.LASF35:
	.string	"__tm_mday"
.LASF209:
	.string	"Xthal_instrom_size"
.LASF87:
	.string	"_ubuf"
.LASF143:
	.string	"Xthal_num_aregs"
.LASF62:
	.string	"_stderr"
.LASF111:
	.string	"_wctomb_state"
.LASF92:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF54:
	.string	"_flags"
.LASF276:
	.string	"block_start"
.LASF202:
	.string	"Xthal_num_instrom"
.LASF46:
	.string	"_atexit"
.LASF273:
	.string	"block"
.LASF314:
	.string	"blocks_out"
.LASF19:
	.string	"__count"
.LASF151:
	.string	"Xthal_dcache_is_writeback"
.LASF257:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF282:
	.string	"ESP_LOG_VERBOSE"
.LASF335:
	.string	"calloc"
.LASF38:
	.string	"__tm_wday"
.LASF218:
	.string	"Xthal_dataram_size"
.LASF227:
	.string	"Xthal_dcache_line_lockable"
.LASF139:
	.string	"Xthal_num_coprocessors"
.LASF39:
	.string	"__tm_yday"
.LASF206:
	.string	"Xthal_num_xlmi"
.LASF99:
	.string	"_seed"
.LASF193:
	.string	"Xthal_have_prid"
.LASF302:
	.string	"handle"
.LASF85:
	.string	"_seek"
.LASF306:
	.string	"esp_himem_free_map_range"
.LASF15:
	.string	"_fpos_t"
.LASF274:
	.string	"esp_himem_rangehandle_t"
.LASF18:
	.string	"__wchb"
.LASF259:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF112:
	.string	"_mbtowc_state"
.LASF329:
	.string	"esp_log_timestamp"
.LASF308:
	.string	"size"
.LASF10:
	.string	"long long unsigned int"
.LASF124:
	.string	"uint16_t"
.LASF43:
	.string	"_dso_handle"
.LASF98:
	.string	"_rand48"
.LASF228:
	.string	"Xthal_have_spanning_way"
.LASF61:
	.string	"_stdout"
.LASF339:
	.string	"/home/dieter/Development/ProjektEi/build/esp32"
.LASF89:
	.string	"_blksize"
.LASF51:
	.string	"_base"
.LASF261:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF277:
	.string	"ESP_LOG_NONE"
.LASF307:
	.string	"esp_himem_alloc_map_range"
.LASF109:
	.string	"_strtok_last"
.LASF157:
	.string	"Xthal_memory_order"
.LASF116:
	.string	"_mbrtowc_state"
.LASF162:
	.string	"Xthal_have_nsa"
.LASF269:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"_flock_t"
.LASF280:
	.string	"ESP_LOG_INFO"
.LASF94:
	.string	"__FILE"
.LASF170:
	.string	"Xthal_have_threadptr"
.LASF299:
	.string	"ramblock"
.LASF230:
	.string	"Xthal_have_mimic_cacheattr"
.LASF21:
	.string	"_mbstate_t"
.LASF301:
	.string	"esp_himem_map"
.LASF72:
	.string	"_r48"
.LASF16:
	.string	"wint_t"
.LASF26:
	.string	"_next"
.LASF57:
	.string	"_data"
.LASF263:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF148:
	.string	"Xthal_dcache_linesize"
.LASF250:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF183:
	.string	"Xthal_intlevel_mask"
.LASF187:
	.string	"Xthal_inttype_mask"
.LASF142:
	.string	"Xthal_cp_mask"
.LASF303:
	.string	"ram_offset"
.LASF331:
	.string	"vTaskEnterCritical"
.LASF180:
	.string	"Xthal_num_intlevels"
.LASF224:
	.string	"Xthal_icache_ways"
.LASF238:
	.string	"Xthal_mmu_sr_bits"
.LASF288:
	.string	"s_ram_descriptor"
.LASF131:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF171:
	.string	"Xthal_have_pif"
.LASF110:
	.string	"_mblen_state"
.LASF4:
	.string	"short int"
.LASF179:
	.string	"Xthal_hw_release_internal"
.LASF293:
	.string	"range"
.LASF327:
	.string	"ramblock_idx"
.LASF188:
	.string	"Xthal_timer_interrupt"
.LASF264:
	.string	"suboptarg"
.LASF44:
	.string	"_fntypes"
.LASF205:
	.string	"Xthal_num_dataram"
.LASF37:
	.string	"__tm_year"
.LASF252:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF56:
	.string	"_lbfsize"
.LASF63:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF281:
	.string	"ESP_LOG_DEBUG"
.LASF338:
	.string	"/home/dieter/Development/esp-idf/components/esp32/esp_himem.c"
.LASF242:
	.string	"Xthal_itlb_way_bits"
.LASF146:
	.string	"Xthal_dcache_linewidth"
.LASF50:
	.string	"__sbuf"
.LASF186:
	.string	"Xthal_inttype"
.LASF45:
	.string	"_is_cxa"
.LASF219:
	.string	"Xthal_xlmi_vaddr"
.LASF212:
	.string	"Xthal_instram_size"
.LASF313:
	.string	"esp_himem_alloc"
.LASF103:
	.string	"_mprec"
.LASF310:
	.string	"blocks"
.LASF79:
	.string	"_misc"
.LASF67:
	.string	"_locale"
.LASF25:
	.string	"__ULong"
.LASF132:
	.string	"Xthal_extra_size"
.LASF239:
	.string	"Xthal_mmu_ca_bits"
.LASF126:
	.string	"uint32_t"
.LASF254:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF265:
	.string	"exc_cause_table"
.LASF155:
	.string	"Xthal_release_name"
.LASF104:
	.string	"_result"
.LASF318:
	.string	"paddr_end"
.LASF167:
	.string	"Xthal_have_mul16"
.LASF14:
	.string	"_off_t"
.LASF234:
	.string	"Xthal_mmu_asid_bits"
.LASF240:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF101:
	.string	"_add"
.LASF222:
	.string	"Xthal_icache_setwidth"
.LASF1:
	.string	"short unsigned int"
.LASF341:
	.string	"nomem"
.LASF34:
	.string	"__tm_hour"
.LASF229:
	.string	"Xthal_have_identity_map"
.LASF144:
	.string	"Xthal_num_aregs_log2"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF7:
	.string	"__int32_t"
.LASF145:
	.string	"Xthal_icache_linewidth"
.LASF249:
	.string	"Xthal_cp_mask_FPU"
.LASF135:
	.string	"Xthal_cpregs_align"
.LASF42:
	.string	"_fnargs"
.LASF40:
	.string	"__tm_isdst"
.LASF330:
	.string	"esp_log_write"
.LASF309:
	.string	"handle_out"
.LASF158:
	.string	"Xthal_have_windowed"
.LASF220:
	.string	"Xthal_xlmi_paddr"
.LASF208:
	.string	"Xthal_instrom_paddr"
.LASF133:
	.string	"Xthal_extra_align"
.LASF33:
	.string	"__tm_min"
.LASF285:
	.string	"ramblock_t"
.LASF114:
	.string	"_getdate_err"
.LASF181:
	.string	"Xthal_num_interrupts"
.LASF166:
	.string	"Xthal_have_mac16"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
