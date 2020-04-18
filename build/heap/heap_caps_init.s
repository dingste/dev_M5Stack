	.file	"heap_caps_init.c"
	.text
.Ltext0:
	.section	.rodata.register_heap.str1.1,"aMS",@progbits,1
.LC1:
	.string	"heap_size <= HEAP_SIZE_MAX"
.LC4:
	.string	"/home/dieter/Development/esp-idf/components/heap/heap_caps_init.c"
	.section	.text.register_heap,"ax",@progbits
	.literal_position
	.literal .LC0, 4194304
	.literal .LC2, .LC1
	.literal .LC3, __func__$4791
	.literal .LC5, .LC4
	.align	4
	.type	register_heap, @function
register_heap:
.LVL0:
.LFB27:
	.file 1 "/home/dieter/Development/esp-idf/components/heap/heap_caps_init.c"
	.loc 1 33 1 view -0
	.loc 1 33 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 34 5 is_stmt 1 view .LVU2
	.loc 1 34 44 is_stmt 0 view .LVU3
	l32i.n	a10, a2, 12
	.loc 1 34 36 view .LVU4
	l32i.n	a11, a2, 16
	.loc 1 35 16 view .LVU5
	l32r	a8, .LC0
	.loc 1 34 36 view .LVU6
	sub	a11, a11, a10
.LVL1:
	.loc 1 35 4 is_stmt 1 view .LVU7
	.loc 1 35 16 is_stmt 0 view .LVU8
	bgeu	a8, a11, .L2
.LVL2:
.LBB4:
.LBB5:
	.loc 1 35 18 view .LVU9
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a10, .LC5
	movi.n	a11, 0x23
.LVL3:
	.loc 1 35 18 view .LVU10
	call8	__assert_func
.LVL4:
.L2:
	.loc 1 35 18 view .LVU11
.LBE5:
.LBE4:
	.loc 1 36 5 is_stmt 1 view .LVU12
	.loc 1 36 20 is_stmt 0 view .LVU13
	call8	multi_heap_register
.LVL5:
	.loc 1 36 18 view .LVU14
	s32i.n	a10, a2, 28
	.loc 1 37 5 is_stmt 1 view .LVU15
	.loc 1 40 1 is_stmt 0 view .LVU16
	retw.n
.LFE27:
	.size	register_heap, .-register_heap
	.section	.text.heap_caps_enable_nonos_stack_heaps,"ax",@progbits
	.literal_position
	.literal .LC6, registered_heaps
	.align	4
	.global	heap_caps_enable_nonos_stack_heaps
	.type	heap_caps_enable_nonos_stack_heaps, @function
heap_caps_enable_nonos_stack_heaps:
.LFB28:
	.loc 1 43 1 is_stmt 1 view -0
	entry	sp, 32
.LCFI1:
	.loc 1 44 5 view .LVU18
	.loc 1 45 4 view .LVU19
	.loc 1 45 6 is_stmt 0 view .LVU20
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 45 4 view .LVU21
	j	.L4
.L8:
	.loc 1 48 9 is_stmt 1 view .LVU22
	.loc 1 48 12 is_stmt 0 view .LVU23
	l32i.n	a8, a2, 28
	bnez.n	a8, .L6
	.loc 1 49 13 is_stmt 1 view .LVU24
	mov.n	a10, a2
	call8	register_heap
.LVL7:
	.loc 1 50 13 view .LVU25
	.loc 1 50 21 is_stmt 0 view .LVU26
	l32i.n	a10, a2, 28
	.loc 1 50 16 view .LVU27
	beqz.n	a10, .L6
	.loc 1 51 17 is_stmt 1 view .LVU28
	addi	a11, a2, 20
	call8	multi_heap_set_lock
.LVL8:
.L6:
	.loc 1 45 6 is_stmt 0 discriminator 2 view .LVU29
	l32i.n	a2, a2, 32
.LVL9:
.L4:
	.loc 1 45 4 discriminator 1 view .LVU30
	bnez.n	a2, .L8
	.loc 1 55 1 view .LVU31
	retw.n
.LFE28:
	.size	heap_caps_enable_nonos_stack_heaps, .-heap_caps_enable_nonos_stack_heaps
	.section	.rodata.heap_caps_init.str1.1,"aMS",@progbits,1
.LC7:
	.string	"heap_init"
.LC9:
	.string	"\033[0;32mI (%d) %s: Initializing. RAM available for dynamic allocation:\033[0m\n"
.LC11:
	.string	"heap_idx <= num_heaps"
.LC16:
	.string	"\033[0;32mI (%d) %s: At %08X len %08X (%d KiB): %s\033[0m\n"
.LC18:
	.string	"heap_idx == num_heaps"
.LC21:
	.string	"SLIST_EMPTY(&registered_heaps)"
.LC24:
	.string	"heaps_array != NULL"
	.section	.text.heap_caps_init,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, __func__$4822
	.literal .LC14, .LC4
	.literal .LC15, soc_memory_types
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, registered_heaps
	.literal .LC22, .LC21
	.literal .LC23, 2052
	.literal .LC25, .LC24
	.align	4
	.global	heap_caps_init
	.type	heap_caps_init, @function
heap_caps_init:
.LFB29:
	.loc 1 61 1 is_stmt 1 view -0
	entry	sp, 80
	.loc 1 65 5 view .LVU33
	.loc 1 61 1 is_stmt 0 view .LVU34
	mov.n	a7, sp
.LCFI2:
	.loc 1 65 26 view .LVU35
	call8	soc_get_available_memory_region_max_count
.LVL10:
	.loc 1 66 5 is_stmt 1 view .LVU36
	.loc 1 66 25 is_stmt 0 view .LVU37
	slli	a10, a10, 4
.LVL11:
	.loc 1 66 25 view .LVU38
	sub	a10, sp, a10
	movsp	sp, a10
	addi	a3, sp, 16
.LVL12:
	.loc 1 67 5 is_stmt 1 view .LVU39
	.loc 1 66 25 is_stmt 0 view .LVU40
	.loc 1 67 19 view .LVU41
	mov.n	a10, a3
	call8	soc_get_available_memory_regions
.LVL13:
	s32i.n	a10, a7, 20
.LVL14:
	.loc 1 71 5 is_stmt 1 view .LVU42
.LBB6:
	.loc 1 71 10 view .LVU43
	.loc 1 71 10 is_stmt 0 view .LVU44
	mov.n	a6, a3
	.loc 1 71 5 view .LVU45
	mov.n	a2, a3
	.loc 1 71 14 view .LVU46
	movi.n	a4, 1
.LBB7:
	.loc 1 75 21 view .LVU47
	movi.n	a10, -1
.LVL15:
	.loc 1 75 21 view .LVU48
.LBE7:
	.loc 1 71 5 view .LVU49
	j	.L13
.LVL16:
.L15:
.LBB8:
	.loc 1 72 9 is_stmt 1 view .LVU50
	.loc 1 73 9 view .LVU51
	.loc 1 74 9 view .LVU52
	.loc 1 74 26 is_stmt 0 view .LVU53
	l32i.n	a5, a2, 0
	.loc 1 74 37 view .LVU54
	l32i.n	a9, a2, 4
	.loc 1 74 12 view .LVU55
	l32i.n	a12, a2, 16
	.loc 1 74 34 view .LVU56
	add.n	a11, a5, a9
	.loc 1 74 12 view .LVU57
	bne	a12, a11, .L14
	.loc 1 74 44 discriminator 1 view .LVU58
	l32i.n	a12, a2, 24
	l32i.n	a11, a2, 8
	bne	a12, a11, .L14
	.loc 1 75 13 is_stmt 1 view .LVU59
	.loc 1 76 22 is_stmt 0 view .LVU60
	s32i.n	a5, a2, 16
	.loc 1 77 21 view .LVU61
	l32i.n	a5, a2, 20
	.loc 1 75 21 view .LVU62
	s32i.n	a10, a2, 8
	.loc 1 76 13 is_stmt 1 view .LVU63
	.loc 1 77 13 view .LVU64
	.loc 1 77 21 is_stmt 0 view .LVU65
	add.n	a5, a5, a9
	s32i.n	a5, a2, 20
.L14:
	.loc 1 77 21 view .LVU66
.LBE8:
	.loc 1 71 39 discriminator 2 view .LVU67
	addi.n	a4, a4, 1
.LVL17:
	.loc 1 71 39 discriminator 2 view .LVU68
	addi	a2, a2, 16
.LVL18:
.L13:
	.loc 1 71 5 discriminator 1 view .LVU69
	l32i.n	a5, a7, 20
	bltu	a4, a5, .L15
.LBE6:
.LBB9:
	.loc 1 83 14 view .LVU70
	movi.n	a4, 0
.LVL19:
	.loc 1 83 14 view .LVU71
	addi.n	a2, a3, 8
.LBE9:
	.loc 1 82 12 view .LVU72
	mov.n	a3, a4
	j	.L16
.LVL20:
.L18:
.LBB10:
	.loc 1 84 9 is_stmt 1 view .LVU73
	.loc 1 84 12 is_stmt 0 view .LVU74
	l32i.n	a5, a2, 0
	beqi	a5, -1, .L17
	.loc 1 85 13 is_stmt 1 view .LVU75
	.loc 1 85 22 is_stmt 0 view .LVU76
	addi.n	a3, a3, 1
.LVL21:
.L17:
	.loc 1 83 39 discriminator 2 view .LVU77
	addi.n	a4, a4, 1
.LVL22:
	.loc 1 83 39 discriminator 2 view .LVU78
	addi	a2, a2, 16
.LVL23:
.L16:
	.loc 1 83 5 discriminator 1 view .LVU79
	l32i.n	a8, a7, 20
	bne	a4, a8, .L18
.LBE10:
	.loc 1 93 5 is_stmt 1 view .LVU80
.LVL24:
	.loc 1 93 12 is_stmt 0 view .LVU81
	slli	a2, a3, 3
	add.n	a2, a2, a3
	slli	a2, a2, 2
	s32i.n	a2, a7, 24
	addi.n	a2, a2, 15
	srli	a2, a2, 4
	slli	a2, a2, 4
	sub	a2, sp, a2
	movsp	sp, a2
	.loc 1 96 35 view .LVU82
	call8	esp_log_timestamp
.LVL25:
	mov.n	a11, a10
	l32r	a12, .LC8
	l32r	a10, .LC10
.LBB11:
	.loc 1 97 14 view .LVU83
	movi.n	a2, 0
.LBE11:
	.loc 1 96 35 view .LVU84
	call8	ets_printf
.LVL26:
	.loc 1 93 12 view .LVU85
	addi	a4, sp, 16
.LVL27:
	.loc 1 94 5 is_stmt 1 view .LVU86
	.loc 1 96 5 view .LVU87
	.loc 1 96 10 view .LVU88
	.loc 1 96 35 view .LVU89
	.loc 1 97 5 view .LVU90
.LBB13:
	.loc 1 97 10 view .LVU91
	.loc 1 97 14 is_stmt 0 view .LVU92
	s32i.n	a2, a7, 16
	.loc 1 97 5 view .LVU93
	j	.L19
.LVL28:
.L24:
.LBB12:
	.loc 1 98 9 is_stmt 1 view .LVU94
	.loc 1 99 9 view .LVU95
	slli	a10, a2, 3
	add.n	a10, a10, a2
	.loc 1 99 70 is_stmt 0 view .LVU96
	l32i.n	a5, a6, 8
.LVL29:
	.loc 1 100 9 is_stmt 1 view .LVU97
	slli	a10, a10, 2
	.loc 1 100 17 is_stmt 0 view .LVU98
	add.n	a12, a4, a10
.LVL30:
	.loc 1 101 9 is_stmt 1 view .LVU99
	.loc 1 101 12 is_stmt 0 view .LVU100
	beqi	a5, -1, .L20
	.loc 1 104 9 is_stmt 1 view .LVU101
	.loc 1 104 17 is_stmt 0 view .LVU102
	addi.n	a8, a2, 1
.LVL31:
	.loc 1 104 17 view .LVU103
	s32i.n	a8, a7, 28
.LVL32:
	.loc 1 105 8 is_stmt 1 view .LVU104
	.loc 1 105 20 is_stmt 0 view .LVU105
	bgeu	a3, a8, .L21
	.loc 1 105 22 discriminator 1 view .LVU106
	l32r	a13, .LC12
	l32r	a12, .LC13
.LVL33:
	.loc 1 105 22 discriminator 1 view .LVU107
	movi	a11, 0x69
	j	.L49
.LVL34:
.L21:
	.loc 1 107 9 is_stmt 1 view .LVU108
	.loc 1 107 32 is_stmt 0 view .LVU109
	slli	a9, a5, 2
	add.n	a9, a9, a5
	slli	a9, a9, 2
	l32r	a8, .LC15
.LVL35:
	.loc 1 107 32 view .LVU110
	addi.n	a13, a9, 4
	add.n	a13, a13, a8
	.loc 1 107 9 view .LVU111
	l32i.n	a14, a13, 4
	l32i.n	a15, a13, 0
	l32i.n	a13, a13, 8
	s32i.n	a14, a12, 4
	s32i.n	a13, a12, 8
	.loc 1 108 9 is_stmt 1 view .LVU112
	.loc 1 108 29 is_stmt 0 view .LVU113
	l32i.n	a14, a6, 0
	.loc 1 109 35 view .LVU114
	l32i.n	a13, a6, 4
	.loc 1 110 9 view .LVU115
	addi	a10, a10, 20
	.loc 1 109 35 view .LVU116
	add.n	a13, a13, a14
	.loc 1 107 9 view .LVU117
	s32i.n	a15, a12, 0
	.loc 1 108 21 view .LVU118
	s32i.n	a14, a12, 12
	.loc 1 109 9 is_stmt 1 view .LVU119
	.loc 1 109 19 is_stmt 0 view .LVU120
	s32i.n	a13, a12, 16
	.loc 1 110 9 is_stmt 1 view .LVU121
	add.n	a10, a4, a10
	s32i.n	a9, a7, 36
	s32i.n	a12, a7, 32
	call8	vPortCPUInitializeMutex
.LVL36:
	.loc 1 111 9 view .LVU122
	.loc 1 111 17 is_stmt 0 view .LVU123
	l32i.n	a9, a7, 36
	l32r	a8, .LC15
	.loc 1 111 12 view .LVU124
	l32i.n	a12, a7, 32
	.loc 1 111 17 view .LVU125
	add.n	a9, a8, a9
	.loc 1 111 12 view .LVU126
	l8ui	a9, a9, 17
	beqz.n	a9, .L22
	.loc 1 113 13 is_stmt 1 view .LVU127
	.loc 1 113 24 is_stmt 0 view .LVU128
	movi.n	a9, 0
	s32i.n	a9, a12, 28
	j	.L23
.L22:
	.loc 1 115 13 is_stmt 1 view .LVU129
	mov.n	a10, a12
	call8	register_heap
.LVL37:
.L23:
	.loc 1 117 8 view .LVU130
	.loc 1 117 31 is_stmt 0 view .LVU131
	slli	a9, a2, 3
	add.n	a2, a9, a2
.LVL38:
	.loc 1 117 31 view .LVU132
	slli	a2, a2, 2
	movi.n	a9, 0
	add.n	a2, a4, a2
	s32i.n	a9, a2, 32
	.loc 1 119 9 is_stmt 1 view .LVU133
	.loc 1 119 14 view .LVU134
	.loc 1 119 39 view .LVU135
	call8	esp_log_timestamp
.LVL39:
	slli	a2, a5, 2
	add.n	a11, a2, a5
	l32r	a2, .LC15
	slli	a11, a11, 2
	add.n	a11, a2, a11
	l32i.n	a2, a11, 0
	l32i.n	a14, a6, 4
	s32i.n	a2, sp, 0
.LVL40:
	.loc 1 119 39 is_stmt 0 view .LVU136
	mov.n	a11, a10
	l32i.n	a13, a6, 0
	l32r	a12, .LC8
	l32r	a10, .LC17
	srli	a15, a14, 10
	call8	ets_printf
.LVL41:
	l32i.n	a2, a7, 28
.L20:
.LVL42:
	.loc 1 119 39 view .LVU137
.LBE12:
	.loc 1 97 39 discriminator 2 view .LVU138
	l32i.n	a5, a7, 16
.LVL43:
	.loc 1 97 39 discriminator 2 view .LVU139
	addi	a6, a6, 16
	addi.n	a5, a5, 1
	s32i.n	a5, a7, 16
.LVL44:
.L19:
	.loc 1 97 5 discriminator 1 view .LVU140
	l32i.n	a8, a7, 16
	l32i.n	a5, a7, 20
	bne	a8, a5, .L24
.LBE13:
	.loc 1 123 4 is_stmt 1 view .LVU141
	.loc 1 123 16 is_stmt 0 view .LVU142
	beq	a2, a3, .L25
	.loc 1 123 18 discriminator 1 view .LVU143
	l32r	a13, .LC19
	l32r	a12, .LC13
	movi	a11, 0x7b
.LVL45:
.L49:
	.loc 1 123 18 discriminator 1 view .LVU144
	l32r	a10, .LC14
	call8	__assert_func
.LVL46:
.L25:
	.loc 1 128 4 is_stmt 1 view .LVU145
	.loc 1 128 44 is_stmt 0 view .LVU146
	l32r	a8, .LC20
.LVL47:
	.loc 1 128 44 view .LVU147
	mov.n	a3, a4
.LVL48:
	.loc 1 128 44 view .LVU148
	l32i.n	a6, a8, 0
	beqz.n	a6, .L27
.LVL49:
.L26:
	.loc 1 128 46 discriminator 1 view .LVU149
	l32r	a13, .LC22
	l32r	a12, .LC13
	movi	a11, 0x80
	j	.L49
.LVL50:
.L31:
.LBB14:
	.loc 1 132 9 is_stmt 1 view .LVU150
	.loc 1 132 13 is_stmt 0 view .LVU151
	l32r	a11, .LC23
	mov.n	a10, a3
	call8	heap_caps_match
.LVL51:
	.loc 1 132 12 view .LVU152
	bnez.n	a10, .L28
.LVL52:
.L30:
	.loc 1 131 37 view .LVU153
	addi.n	a6, a6, 1
.LVL53:
	.loc 1 131 37 view .LVU154
	addi	a3, a3, 36
	j	.L27
.L28:
	.loc 1 134 13 is_stmt 1 view .LVU155
	.loc 1 134 27 is_stmt 0 view .LVU156
	l32i.n	a11, a7, 24
	l32i.n	a10, a3, 28
	call8	multi_heap_malloc
.LVL54:
	mov.n	a5, a10
.LVL55:
	.loc 1 135 13 is_stmt 1 view .LVU157
	.loc 1 135 16 is_stmt 0 view .LVU158
	beqz.n	a10, .L30
	j	.L29
.LVL56:
.L27:
	.loc 1 131 5 discriminator 1 view .LVU159
	bne	a6, a2, .L31
	j	.L47
.LVL57:
.L36:
	.loc 1 131 5 discriminator 1 view .LVU160
.LBE14:
.LBB15:
	.loc 1 146 9 is_stmt 1 view .LVU161
	.loc 1 146 27 is_stmt 0 view .LVU162
	l32i.n	a10, a3, 32
	addi.n	a6, a3, 4
	.loc 1 146 12 view .LVU163
	beqz.n	a10, .L33
	.loc 1 147 13 is_stmt 1 view .LVU164
	addi	a11, a3, 24
	call8	multi_heap_set_lock
.LVL58:
.L33:
	.loc 1 149 9 view .LVU165
	.loc 1 149 12 is_stmt 0 view .LVU166
	bnez.n	a4, .L34
	.loc 1 150 12 is_stmt 1 view .LVU167
	.loc 1 150 17 view .LVU168
	.loc 1 150 23 is_stmt 0 view .LVU169
	l32r	a8, .LC20
	l32i.n	a6, a8, 0
	.loc 1 150 27 view .LVU170
	s32i.n	a5, a8, 0
	.loc 1 150 23 view .LVU171
	s32i.n	a6, a5, 32
	.loc 1 150 28 is_stmt 1 view .LVU172
	j	.L35
.L34:
	.loc 1 152 12 view .LVU173
	.loc 1 152 17 view .LVU174
	.loc 1 152 23 is_stmt 0 view .LVU175
	l32i.n	a9, a3, 0
	.loc 1 152 23 view .LVU176
	s32i.n	a6, a3, 0
	.loc 1 152 23 view .LVU177
	s32i.n	a9, a3, 36
	.loc 1 152 24 is_stmt 1 view .LVU178
.L35:
	.loc 1 145 37 is_stmt 0 discriminator 2 view .LVU179
	addi.n	a4, a4, 1
.LVL59:
	.loc 1 145 37 discriminator 2 view .LVU180
	addi	a3, a3, 36
.LVL60:
.L37:
	.loc 1 145 5 discriminator 1 view .LVU181
	bne	a4, a2, .L36
	j	.L48
.LVL61:
.L47:
	.loc 1 145 5 discriminator 1 view .LVU182
.LBE15:
	.loc 1 140 4 is_stmt 1 view .LVU183
	.loc 1 140 29 is_stmt 0 view .LVU184
	l32r	a13, .LC25
	l32r	a12, .LC13
	movi	a11, 0x8c
	j	.L49
.LVL62:
.L29:
	.loc 1 140 4 is_stmt 1 view .LVU185
	.loc 1 142 5 view .LVU186
	l32i.n	a12, a7, 24
	mov.n	a11, a4
	call8	memcpy
.LVL63:
	.loc 1 145 5 view .LVU187
.LBB16:
	.loc 1 145 10 view .LVU188
	.loc 1 145 10 is_stmt 0 view .LVU189
	addi	a3, a5, -4
	.loc 1 145 14 view .LVU190
	movi.n	a4, 0
.LVL64:
	.loc 1 145 5 view .LVU191
	j	.L37
.LVL65:
.L48:
	.loc 1 145 5 view .LVU192
.LBE16:
	.loc 1 155 1 view .LVU193
	retw.n
.LFE29:
	.size	heap_caps_init, .-heap_caps_init
	.section	.text.heap_caps_add_region_with_caps,"ax",@progbits
	.literal_position
	.literal .LC26, registered_heaps
	.literal .LC27, 2052
	.literal .LC28, registered_heaps_write_lock$4857
	.align	4
	.global	heap_caps_add_region_with_caps
	.type	heap_caps_add_region_with_caps, @function
heap_caps_add_region_with_caps:
.LVL66:
.LFB31:
	.loc 1 176 1 is_stmt 1 view -0
	.loc 1 176 1 is_stmt 0 view .LVU195
	entry	sp, 32
.LCFI3:
	.loc 1 177 5 is_stmt 1 view .LVU196
.LVL67:
	.loc 1 178 5 view .LVU197
	.loc 1 178 14 is_stmt 0 view .LVU198
	movi.n	a6, 1
	movi.n	a5, 0
	moveqz	a5, a6, a2
	.loc 1 178 8 view .LVU199
	extui	a5, a5, 0, 8
	bnez.n	a5, .L63
	moveqz	a5, a6, a3
	bnez.n	a5, .L63
	.loc 1 178 47 discriminator 1 view .LVU200
	moveqz	a5, a6, a4
	bnez.n	a5, .L63
	.loc 1 178 54 discriminator 1 view .LVU201
	bge	a3, a4, .L63
	.loc 1 203 5 is_stmt 1 discriminator 1 view .LVU202
	.loc 1 204 4 discriminator 1 view .LVU203
	.loc 1 204 6 is_stmt 0 discriminator 1 view .LVU204
	l32r	a7, .LC26
	l32i.n	a5, a7, 0
.LVL68:
	.loc 1 204 4 discriminator 1 view .LVU205
	j	.L53
.L60:
	.loc 1 205 9 is_stmt 1 view .LVU206
	.loc 1 205 27 is_stmt 0 view .LVU207
	l32i.n	a6, a5, 12
	.loc 1 205 35 view .LVU208
	bge	a6, a4, .L68
	.loc 1 205 12 view .LVU209
	bge	a6, a3, .L65
.L68:
	.loc 1 206 33 view .LVU210
	l32i.n	a6, a5, 16
	.loc 1 206 39 view .LVU211
	bge	a6, a4, .L69
	.loc 1 206 17 view .LVU212
	blt	a3, a6, .L65
.L69:
	.loc 1 204 6 discriminator 2 view .LVU213
	l32i.n	a5, a5, 32
.LVL69:
.L53:
	.loc 1 204 4 discriminator 1 view .LVU214
	bnez.n	a5, .L60
.LVL70:
.LBB19:
.LBB20:
	.loc 1 211 5 is_stmt 1 view .LVU215
	.loc 1 211 21 is_stmt 0 view .LVU216
	l32r	a11, .LC27
	movi.n	a10, 0x24
	call8	heap_caps_malloc
.LVL71:
	mov.n	a6, a10
.LVL72:
	.loc 1 212 5 is_stmt 1 view .LVU217
	.loc 1 212 8 is_stmt 0 view .LVU218
	beqz.n	a10, .L66
	.loc 1 216 5 is_stmt 1 view .LVU219
	mov.n	a11, a2
	movi.n	a12, 0xc
	call8	memcpy
.LVL73:
	.loc 1 217 5 view .LVU220
	.loc 1 219 5 is_stmt 0 view .LVU221
	addi	a2, a6, 20
.LVL74:
	.loc 1 219 5 view .LVU222
	mov.n	a10, a2
	.loc 1 217 18 view .LVU223
	s32i.n	a3, a6, 12
	.loc 1 218 5 is_stmt 1 view .LVU224
	.loc 1 218 16 is_stmt 0 view .LVU225
	s32i.n	a4, a6, 16
	.loc 1 219 5 is_stmt 1 view .LVU226
	call8	vPortCPUInitializeMutex
.LVL75:
	.loc 1 220 5 view .LVU227
	.loc 1 220 19 is_stmt 0 view .LVU228
	sub	a11, a4, a3
	mov.n	a10, a3
	call8	multi_heap_register
.LVL76:
	.loc 1 220 17 view .LVU229
	s32i.n	a10, a6, 28
	.loc 1 221 4 is_stmt 1 view .LVU230
	.loc 1 221 28 is_stmt 0 view .LVU231
	s32i.n	a5, a6, 32
	.loc 1 222 5 is_stmt 1 view .LVU232
	.loc 1 222 8 is_stmt 0 view .LVU233
	beqz.n	a10, .L67
	.loc 1 226 5 is_stmt 1 view .LVU234
	mov.n	a11, a2
	call8	multi_heap_set_lock
.LVL77:
	.loc 1 231 5 view .LVU235
	.loc 1 232 5 view .LVU236
	l32r	a2, .LC28
	mov.n	a10, a2
	call8	_lock_acquire
.LVL78:
	.loc 1 233 4 view .LVU237
	.loc 1 233 9 view .LVU238
	.loc 1 233 15 is_stmt 0 view .LVU239
	l32i.n	a3, a7, 0
.LVL79:
	.loc 1 234 5 view .LVU240
	mov.n	a10, a2
	.loc 1 233 15 view .LVU241
	s32i.n	a3, a6, 32
	.loc 1 233 20 is_stmt 1 view .LVU242
	.loc 1 233 19 is_stmt 0 view .LVU243
	s32i.n	a6, a7, 0
	.loc 1 234 5 is_stmt 1 view .LVU244
	.loc 1 236 9 is_stmt 0 view .LVU245
	mov.n	a2, a5
	.loc 1 234 5 view .LVU246
	call8	_lock_release
.LVL80:
	.loc 1 236 5 is_stmt 1 view .LVU247
	.loc 1 239 5 view .LVU248
	j	.L50
.LVL81:
.L66:
	.loc 1 213 13 is_stmt 0 view .LVU249
	movi	a2, 0x101
.LVL82:
	.loc 1 213 13 view .LVU250
	j	.L61
.L67:
	.loc 1 223 13 view .LVU251
	movi	a2, 0x104
.L61:
	.loc 1 240 9 is_stmt 1 view .LVU252
	mov.n	a10, a6
	call8	free
.LVL83:
	j	.L50
.LVL84:
.L63:
	.loc 1 240 9 is_stmt 0 view .LVU253
.LBE20:
.LBE19:
	.loc 1 179 16 view .LVU254
	movi	a2, 0x102
.LVL85:
	.loc 1 179 16 view .LVU255
	j	.L50
.LVL86:
.L65:
	.loc 1 207 20 view .LVU256
	movi.n	a2, -1
.LVL87:
.L50:
	.loc 1 243 1 view .LVU257
	retw.n
.LFE31:
	.size	heap_caps_add_region_with_caps, .-heap_caps_add_region_with_caps
	.section	.text.heap_caps_add_region,"ax",@progbits
	.literal_position
	.literal .LC29, soc_memory_regions
	.literal .LC30, soc_memory_region_count
	.literal .LC31, soc_memory_types
	.align	4
	.global	heap_caps_add_region
	.type	heap_caps_add_region, @function
heap_caps_add_region:
.LVL88:
.LFB30:
	.loc 1 158 1 is_stmt 1 view -0
	.loc 1 158 1 is_stmt 0 view .LVU259
	entry	sp, 32
.LCFI4:
	.loc 1 159 5 is_stmt 1 view .LVU260
	.loc 1 158 1 is_stmt 0 view .LVU261
	mov.n	a11, a2
	mov.n	a12, a3
	.loc 1 160 16 view .LVU262
	movi	a10, 0x102
	.loc 1 159 8 view .LVU263
	beqz.n	a2, .L79
.LBB21:
	.loc 1 163 23 view .LVU264
	l32r	a8, .LC30
	l32r	a9, .LC29
	l32i.n	a14, a8, 0
	mov.n	a13, a9
	.loc 1 163 14 view .LVU265
	movi.n	a8, 0
	j	.L81
.LVL89:
.L83:
.LBB22:
	.loc 1 164 9 is_stmt 1 view .LVU266
	.loc 1 166 9 view .LVU267
	.loc 1 166 19 is_stmt 0 view .LVU268
	l32i.n	a10, a9, 0
	.loc 1 166 12 view .LVU269
	blt	a11, a10, .L82
	.loc 1 166 54 discriminator 1 view .LVU270
	l32i.n	a15, a9, 4
	add.n	a10, a10, a15
	.loc 1 166 36 discriminator 1 view .LVU271
	bgeu	a11, a10, .L82
.LBB23:
	.loc 1 167 13 is_stmt 1 view .LVU272
.LVL90:
	.loc 1 168 13 view .LVU273
	.loc 1 167 59 is_stmt 0 view .LVU274
	slli	a8, a8, 4
.LVL91:
	.loc 1 167 59 view .LVU275
	add.n	a8, a13, a8
.LVL92:
	.loc 1 167 29 view .LVU276
	l32i.n	a10, a8, 8
	slli	a8, a10, 2
	add.n	a8, a8, a10
	slli	a8, a8, 2
	.loc 1 168 20 view .LVU277
	l32r	a10, .LC31
	.loc 1 167 29 view .LVU278
	addi.n	a8, a8, 4
	.loc 1 168 20 view .LVU279
	add.n	a10, a10, a8
	call8	heap_caps_add_region_with_caps
.LVL93:
	j	.L79
.LVL94:
.L82:
	.loc 1 168 20 view .LVU280
.LBE23:
.LBE22:
	.loc 1 163 51 discriminator 2 view .LVU281
	addi.n	a8, a8, 1
.LVL95:
	.loc 1 163 51 discriminator 2 view .LVU282
	addi	a9, a9, 16
.LVL96:
.L81:
	.loc 1 163 5 discriminator 1 view .LVU283
	bne	a8, a14, .L83
.LBE21:
	.loc 1 172 12 view .LVU284
	movi	a10, 0x105
.LVL97:
.L79:
	.loc 1 173 1 view .LVU285
	mov.n	a2, a10
.LVL98:
	.loc 1 173 1 view .LVU286
	retw.n
.LFE30:
	.size	heap_caps_add_region, .-heap_caps_add_region
	.section	.bss.registered_heaps_write_lock$4857,"aw",@nobits
	.align	4
	.type	registered_heaps_write_lock$4857, @object
	.size	registered_heaps_write_lock$4857, 4
registered_heaps_write_lock$4857:
	.zero	4
	.section	.rodata.__func__$4822,"a"
	.type	__func__$4822, @object
	.size	__func__$4822, 15
__func__$4822:
	.string	"heap_caps_init"
	.section	.rodata.__func__$4791,"a"
	.type	__func__$4791, @object
	.size	__func__$4791, 14
__func__$4791:
	.string	"register_heap"
	.comm	registered_heaps,4,4
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x50
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/machine/_default_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 8 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_stdint.h"
	.file 9 "/home/dieter/Development/esp-idf/components/xtensa/include/xtensa/hal.h"
	.file 10 "/home/dieter/Development/esp-idf/components/xtensa/esp32/include/xtensa/config/core.h"
	.file 11 "/home/dieter/Development/esp-idf/components/esp_rom/include/esp32/rom/ets_sys.h"
	.file 12 "/home/dieter/Development/esp-idf/components/esp_common/include/esp_err.h"
	.file 13 "/home/dieter/Development/esp-idf/components/heap/include/multi_heap.h"
	.file 14 "/home/dieter/Development/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 15 "/home/dieter/Development/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 16 "/home/dieter/Development/esp-idf/components/heap/heap_private.h"
	.file 17 "/home/dieter/Development/esp-idf/components/log/include/esp_log.h"
	.file 18 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/assert.h"
	.file 19 "/home/dieter/Development/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 20 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a89
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF329
	.byte	0xc
	.4byte	.LASF330
	.4byte	.LASF331
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x36
	.uleb128 0x3
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	0x36
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	0x42
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	0x4e
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x61
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0xd
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x16
	.4byte	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0xe6
	.byte	0xd
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.4byte	0xa6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0xbe
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0xbe
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x36
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x10c
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x10c
	.byte	0
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x11c
	.uleb128 0xa
	.4byte	0x36
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x140
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x4e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x11c
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x1b
	.4byte	0xb2
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xe
	.byte	0x4
	.4byte	0x167
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x15a
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1d9
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1d9
	.byte	0
	.uleb128 0x10
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0x4e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0x4e
	.byte	0x10
	.uleb128 0x10
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1df
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17f
	.uleb128 0x9
	.4byte	0x173
	.4byte	0x1ef
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x272
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.byte	0x7
	.4byte	0x4e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.byte	0x7
	.4byte	0x4e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.byte	0x7
	.4byte	0x4e
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x4e
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x4e
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x4e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x4e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x4e
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2b7
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x2b7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2b7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x173
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x173
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0x158
	.4byte	0x2c7
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x55
	.byte	0x8
	.4byte	0x309
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.4byte	0x309
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x4e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x58
	.byte	0x9
	.4byte	0x30f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x59
	.byte	0x20
	.4byte	0x326
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c7
	.uleb128 0x9
	.4byte	0x31f
	.4byte	0x31f
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x325
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x4
	.4byte	0x272
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x354
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x354
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x20
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x3cd
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0x9a
	.byte	0x12
	.4byte	0x354
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0x9b
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0x9c
	.byte	0x7
	.4byte	0x4e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x6d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x6d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x32c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa0
	.byte	0x7
	.4byte	0x4e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa2
	.byte	0x12
	.4byte	0x531
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x35a
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x6
	.2byte	0x174
	.byte	0x8
	.4byte	0x531
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x178
	.byte	0x7
	.4byte	0x4e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.byte	0xb
	.4byte	0x777
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17d
	.byte	0x14
	.4byte	0x777
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x777
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x17f
	.byte	0x7
	.4byte	0x4e
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x181
	.byte	0x9
	.4byte	0x161
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x183
	.byte	0x7
	.4byte	0x4e
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x185
	.byte	0x7
	.4byte	0x4e
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x186
	.byte	0x16
	.4byte	0x8df
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x6
	.2byte	0x188
	.byte	0x12
	.4byte	0x8e5
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8f6
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x18c
	.byte	0x7
	.4byte	0x4e
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x18f
	.byte	0x7
	.4byte	0x4e
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x190
	.byte	0x9
	.4byte	0x161
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x192
	.byte	0x13
	.4byte	0x8fc
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x193
	.byte	0x10
	.4byte	0x902
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x194
	.byte	0x9
	.4byte	0x161
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x197
	.byte	0xb
	.4byte	0x913
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x19b
	.byte	0x13
	.4byte	0x309
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19c
	.byte	0x12
	.4byte	0x2c7
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x19f
	.byte	0x10
	.4byte	0x738
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x777
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x91f
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x161
	.byte	0xec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x67a
	.uleb128 0x10
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x354
	.byte	0
	.uleb128 0x10
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0x4e
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x6d
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x6d
	.byte	0xe
	.uleb128 0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x32c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x4e
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x12
	.4byte	0x531
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0xa
	.4byte	0x158
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x698
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x6c7
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0x6eb
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x705
	.byte	0x30
	.uleb128 0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x32c
	.byte	0x34
	.uleb128 0x10
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x354
	.byte	0x3c
	.uleb128 0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0x4e
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x70b
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x71b
	.byte	0x47
	.uleb128 0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x32c
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0x4e
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xc5
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x14c
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x140
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe5
	.byte	0x7
	.4byte	0x4e
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x4e
	.4byte	0x698
	.uleb128 0x18
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x158
	.uleb128 0x18
	.4byte	0x161
	.uleb128 0x18
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67a
	.uleb128 0x17
	.4byte	0x4e
	.4byte	0x6bc
	.uleb128 0x18
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x158
	.uleb128 0x18
	.4byte	0x6bc
	.uleb128 0x18
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16e
	.uleb128 0x3
	.4byte	0x6bc
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69e
	.uleb128 0x17
	.4byte	0xd1
	.4byte	0x6eb
	.uleb128 0x18
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x158
	.uleb128 0x18
	.4byte	0xd1
	.uleb128 0x18
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6cd
	.uleb128 0x17
	.4byte	0x4e
	.4byte	0x705
	.uleb128 0x18
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x158
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x71b
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x61
	.4byte	0x72b
	.uleb128 0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x537
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x771
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x771
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x777
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x738
	.uleb128 0xe
	.byte	0x4
	.4byte	0x72b
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x7c4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x7c4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x7c4
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x42
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x145
	.byte	0x24
	.4byte	0x93
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.4byte	0x7d4
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x158
	.byte	0x8
	.4byte	0x81b
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15b
	.byte	0x13
	.4byte	0x1d9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15c
	.byte	0x7
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15d
	.byte	0x13
	.4byte	0x1d9
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15e
	.byte	0x14
	.4byte	0x81b
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d9
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x162
	.byte	0x8
	.4byte	0x8ca
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x165
	.byte	0x9
	.4byte	0x161
	.byte	0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0x140
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x167
	.byte	0xe
	.4byte	0x140
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x168
	.byte	0xe
	.4byte	0x140
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x169
	.byte	0x8
	.4byte	0x8ca
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x16a
	.byte	0x7
	.4byte	0x4e
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16b
	.byte	0xe
	.4byte	0x140
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16c
	.byte	0xe
	.4byte	0x140
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16d
	.byte	0xe
	.4byte	0x140
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16e
	.byte	0xe
	.4byte	0x140
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16f
	.byte	0xe
	.4byte	0x140
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	0x167
	.4byte	0x8da
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF268
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8da
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0x1a
	.4byte	0x8f6
	.uleb128 0x18
	.4byte	0x531
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8eb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x77d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x1a
	.4byte	0x913
	.uleb128 0x18
	.4byte	0x4e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x919
	.uleb128 0xe
	.byte	0x4
	.4byte	0x908
	.uleb128 0xe
	.byte	0x4
	.4byte	0x821
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x3cd
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x3cd
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x3cd
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x30a
	.byte	0x18
	.4byte	0x531
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x161
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x80
	.uleb128 0x3
	.4byte	0x971
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x8
	.byte	0x4d
	.byte	0x14
	.4byte	0x9a
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x9
	.byte	0x94
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x9
	.4byte	0x158
	.4byte	0x9aa
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x99a
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x9
	.byte	0xb4
	.byte	0xe
	.4byte	0x99a
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x9
	.byte	0xb6
	.byte	0xe
	.4byte	0x99a
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x9
	.byte	0xb7
	.byte	0xe
	.4byte	0x99a
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x9
	.byte	0xbd
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x9
	.byte	0xbe
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0xa02
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0x9f2
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x9
	.byte	0xbf
	.byte	0x1b
	.4byte	0xa02
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x9
	.byte	0xc0
	.byte	0x1b
	.4byte	0xa02
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x9
	.byte	0xc1
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x9
	.byte	0xc2
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x9
	.4byte	0x6c2
	.4byte	0xa47
	.uleb128 0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xa37
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x9
	.byte	0xc4
	.byte	0x1b
	.4byte	0xa47
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x9
	.byte	0xd1
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x9
	.byte	0xd4
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x9
	.byte	0xd6
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x9
	.byte	0xda
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x9
	.byte	0xed
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x9
	.byte	0xee
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x9
	.byte	0xf6
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x9
	.byte	0xf7
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x9
	.byte	0xf9
	.byte	0x1d
	.4byte	0x49
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x9
	.byte	0xfa
	.byte	0x1d
	.4byte	0x49
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x9
	.byte	0xfd
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x9
	.byte	0xfe
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x100
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x160
	.byte	0x12
	.4byte	0x55
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x193
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x194
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x195
	.byte	0x1b
	.4byte	0x6c2
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x196
	.byte	0x1b
	.4byte	0x6c2
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x198
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x199
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x19a
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x19b
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x19d
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x19e
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x19f
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x1a0
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x1a3
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x1a4
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x1a5
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x1a7
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x1a8
	.byte	0x1d
	.4byte	0x49
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x1aa
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x1ac
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x9
	.2byte	0x1ad
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x1ae
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x9
	.2byte	0x1af
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x9
	.2byte	0x1b0
	.byte	0x1b
	.4byte	0x6c2
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x1b1
	.byte	0x1b
	.4byte	0x6c2
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x2a2
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x9
	.2byte	0x2a4
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x2a6
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0xc98
	.uleb128 0xa
	.4byte	0x36
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc88
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x2a9
	.byte	0x1b
	.4byte	0xc98
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x2ab
	.byte	0x1b
	.4byte	0xc98
	.uleb128 0x9
	.4byte	0x68
	.4byte	0xcc7
	.uleb128 0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	0xcb7
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x9
	.2byte	0x2ae
	.byte	0x1c
	.4byte	0xcc7
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0xcc7
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x2b4
	.byte	0x1b
	.4byte	0xa02
	.uleb128 0x9
	.4byte	0x55
	.4byte	0xd03
	.uleb128 0xa
	.4byte	0x36
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xcf3
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x2b7
	.byte	0x12
	.4byte	0xd03
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x2c7
	.byte	0x12
	.4byte	0x55
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x9
	.2byte	0x2c8
	.byte	0x12
	.4byte	0x55
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0x9
	.2byte	0x2d0
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x9
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x2df
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x2e0
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x2e1
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x2e2
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x2e3
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x2e4
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x30b
	.byte	0x11
	.4byte	0x36
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x315
	.byte	0x11
	.4byte	0x36
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x318
	.byte	0x11
	.4byte	0x36
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x325
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x326
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x327
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x328
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x329
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x3d
	.4byte	0xe0a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0xdff
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x32d
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x9
	.2byte	0x32e
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x9
	.2byte	0x32f
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x9
	.2byte	0x330
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x9
	.2byte	0x331
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x332
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x333
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x334
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x335
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0x9
	.2byte	0x336
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0x9
	.2byte	0x337
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0x9
	.2byte	0x338
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0x9
	.2byte	0x339
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0x9
	.2byte	0x33a
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x9
	.2byte	0x33b
	.byte	0x1b
	.4byte	0xe0a
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0x9
	.2byte	0x343
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x344
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x9
	.2byte	0x346
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x9
	.2byte	0x347
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x9
	.2byte	0x349
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x9
	.2byte	0x34a
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x9
	.2byte	0x38b
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x9
	.2byte	0x38c
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x9
	.2byte	0x38d
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x9
	.2byte	0x38e
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x9
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x9
	.2byte	0x390
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x9
	.2byte	0x392
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x393
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x9
	.2byte	0x394
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF238
	.byte	0x9
	.2byte	0x395
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF239
	.byte	0x9
	.2byte	0x396
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF240
	.byte	0x9
	.2byte	0x397
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x9
	.2byte	0x398
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x399
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0x9
	.2byte	0x39b
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x39c
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x9
	.2byte	0x39d
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF246
	.byte	0x9
	.2byte	0x39e
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0x9
	.2byte	0x39f
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x3a0
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0xa
	.2byte	0x4ff
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0xa
	.2byte	0x500
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x503
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x504
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x507
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x508
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x50b
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x50c
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x50f
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x510
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x513
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x514
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x517
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x518
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x51b
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x1b
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x51c
	.byte	0x1b
	.4byte	0x3d
	.uleb128 0x9
	.4byte	0x6c2
	.4byte	0x1104
	.uleb128 0xa
	.4byte	0x36
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	0x10f4
	.uleb128 0x1c
	.4byte	.LASF265
	.byte	0xb
	.byte	0x8e
	.byte	0x1a
	.4byte	0x1104
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0xc
	.byte	0x18
	.byte	0x11
	.4byte	0x965
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0xd
	.byte	0x1e
	.byte	0x21
	.4byte	0x112d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1133
	.uleb128 0x19
	.4byte	.LASF269
	.uleb128 0xb
	.byte	0x8
	.byte	0xe
	.byte	0x8a
	.byte	0x9
	.4byte	0x115c
	.uleb128 0xc
	.4byte	.LASF270
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.4byte	0x971
	.byte	0
	.uleb128 0xc
	.4byte	.LASF271
	.byte	0xe
	.byte	0x9b
	.byte	0xb
	.4byte	0x971
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0xe
	.byte	0xa0
	.byte	0x3
	.4byte	0x1138
	.uleb128 0xb
	.byte	0x14
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.4byte	0x11a6
	.uleb128 0xc
	.4byte	.LASF273
	.byte	0xf
	.byte	0x3e
	.byte	0x11
	.4byte	0x6bc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF274
	.byte	0xf
	.byte	0x3f
	.byte	0xe
	.4byte	0x11a6
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF275
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.4byte	0x11b6
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF276
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.4byte	0x11b6
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.4byte	0x971
	.4byte	0x11b6
	.uleb128 0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF277
	.uleb128 0x2
	.4byte	.LASF278
	.byte	0xf
	.byte	0x42
	.byte	0x3
	.4byte	0x1168
	.uleb128 0x3
	.4byte	0x11bd
	.uleb128 0x9
	.4byte	0x11c9
	.4byte	0x11d9
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0x11ce
	.uleb128 0x1c
	.4byte	.LASF279
	.byte	0xf
	.byte	0x45
	.byte	0x25
	.4byte	0x11d9
	.uleb128 0x1c
	.4byte	.LASF280
	.byte	0xf
	.byte	0x46
	.byte	0x15
	.4byte	0x31
	.uleb128 0xb
	.byte	0x10
	.byte	0xf
	.byte	0x4a
	.byte	0x9
	.4byte	0x1234
	.uleb128 0xc
	.4byte	.LASF281
	.byte	0xf
	.byte	0x4c
	.byte	0xe
	.4byte	0x982
	.byte	0
	.uleb128 0xc
	.4byte	.LASF282
	.byte	0xf
	.byte	0x4d
	.byte	0xc
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF283
	.byte	0xf
	.byte	0x4e
	.byte	0xc
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF284
	.byte	0xf
	.byte	0x4f
	.byte	0xe
	.4byte	0x982
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF285
	.byte	0xf
	.byte	0x50
	.byte	0x3
	.4byte	0x11f6
	.uleb128 0x3
	.4byte	0x1234
	.uleb128 0x9
	.4byte	0x1240
	.4byte	0x1250
	.uleb128 0x1d
	.byte	0
	.uleb128 0x3
	.4byte	0x1245
	.uleb128 0x1c
	.4byte	.LASF286
	.byte	0xf
	.byte	0x52
	.byte	0x22
	.4byte	0x1250
	.uleb128 0x1c
	.4byte	.LASF287
	.byte	0xf
	.byte	0x53
	.byte	0x15
	.4byte	0x31
	.uleb128 0xb
	.byte	0x4
	.byte	0x10
	.byte	0x28
	.byte	0x4
	.4byte	0x1284
	.uleb128 0xc
	.4byte	.LASF288
	.byte	0x10
	.byte	0x28
	.byte	0x5
	.4byte	0x12e0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF289
	.byte	0x24
	.byte	0x10
	.byte	0x22
	.byte	0x10
	.4byte	0x12e0
	.uleb128 0xc
	.4byte	.LASF274
	.byte	0x10
	.byte	0x23
	.byte	0xe
	.4byte	0x11a6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF281
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.4byte	0x982
	.byte	0xc
	.uleb128 0x10
	.string	"end"
	.byte	0x10
	.byte	0x25
	.byte	0xe
	.4byte	0x982
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF290
	.byte	0x10
	.byte	0x26
	.byte	0x12
	.4byte	0x115c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF291
	.byte	0x10
	.byte	0x27
	.byte	0x19
	.4byte	0x1121
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF292
	.byte	0x10
	.byte	0x28
	.byte	0x19
	.4byte	0x126d
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1284
	.uleb128 0x2
	.4byte	.LASF293
	.byte	0x10
	.byte	0x29
	.byte	0x3
	.4byte	0x1284
	.uleb128 0xf
	.4byte	.LASF294
	.byte	0x4
	.byte	0x10
	.byte	0x31
	.byte	0x7
	.4byte	0x130d
	.uleb128 0xc
	.4byte	.LASF295
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.4byte	0x12e0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF296
	.byte	0x10
	.byte	0x31
	.byte	0x2f
	.4byte	0x12f2
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.4byte	0x36
	.byte	0x11
	.byte	0x23
	.byte	0xe
	.4byte	0x134c
	.uleb128 0x1f
	.4byte	.LASF297
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF298
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF299
	.byte	0x2
	.uleb128 0x1f
	.4byte	.LASF300
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF301
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF302
	.byte	0x5
	.byte	0
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.4byte	0x6bc
	.uleb128 0x21
	.4byte	0x130d
	.byte	0x1
	.byte	0x1e
	.byte	0x1b
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps
	.uleb128 0x22
	.4byte	.LASF332
	.byte	0x1
	.byte	0xaf
	.byte	0xb
	.4byte	0x1115
	.byte	0x1
	.4byte	0x13da
	.uleb128 0x23
	.4byte	.LASF274
	.byte	0x1
	.byte	0xaf
	.byte	0x39
	.4byte	0x13da
	.uleb128 0x23
	.4byte	.LASF281
	.byte	0x1
	.byte	0xaf
	.byte	0x4a
	.4byte	0x982
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0xaf
	.byte	0x5a
	.4byte	0x982
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.byte	0xb1
	.byte	0xf
	.4byte	0x1115
	.uleb128 0x25
	.4byte	.LASF291
	.byte	0x1
	.byte	0xcb
	.byte	0xd
	.4byte	0x13e0
	.uleb128 0x25
	.4byte	.LASF303
	.byte	0x1
	.byte	0xd3
	.byte	0xd
	.4byte	0x13e0
	.uleb128 0x26
	.4byte	.LASF333
	.byte	0x1
	.byte	0xee
	.byte	0x2
	.uleb128 0x27
	.4byte	.LASF334
	.byte	0x1
	.byte	0xe7
	.byte	0x14
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$4857
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x97d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12e6
	.uleb128 0x28
	.4byte	.LASF335
	.byte	0x1
	.byte	0x9d
	.byte	0xb
	.4byte	0x1115
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1474
	.uleb128 0x29
	.4byte	.LASF281
	.byte	0x1
	.byte	0x9d
	.byte	0x29
	.4byte	0x982
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.byte	0x9d
	.byte	0x39
	.4byte	0x982
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x2b
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x25
	.4byte	.LASF304
	.byte	0x1
	.byte	0xa4
	.byte	0x24
	.4byte	0x1474
	.uleb128 0x2b
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x25
	.4byte	.LASF274
	.byte	0x1
	.byte	0xa7
	.byte	0x1d
	.4byte	0x13da
	.uleb128 0x2d
	.4byte	.LVL93
	.4byte	0x1366
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1240
	.uleb128 0x2e
	.4byte	.LASF311
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1706
	.uleb128 0x2f
	.4byte	.LASF305
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x25
	.4byte	.LASF306
	.byte	0x1
	.byte	0x42
	.byte	0x19
	.4byte	0x1706
	.uleb128 0x2f
	.4byte	.LASF307
	.byte	0x1
	.byte	0x52
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2f
	.4byte	.LASF308
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.4byte	0x1718
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2f
	.4byte	.LASF309
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x30
	.4byte	.LASF314
	.4byte	0x173b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4822
	.uleb128 0x2f
	.4byte	.LASF310
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	0x13e0
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x31
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1549
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x48
	.byte	0x1e
	.4byte	0x1740
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0x49
	.byte	0x1e
	.4byte	0x1740
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1565
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x160c
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x61
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x25
	.4byte	.LASF304
	.byte	0x1
	.byte	0x62
	.byte	0x1e
	.4byte	0x1740
	.uleb128 0x25
	.4byte	.LASF283
	.byte	0x1
	.byte	0x63
	.byte	0x27
	.4byte	0x1746
	.uleb128 0x2f
	.4byte	.LASF291
	.byte	0x1
	.byte	0x64
	.byte	0x11
	.4byte	0x13e0
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x34
	.4byte	.LVL36
	.4byte	0x19d9
	.4byte	0x15d5
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL37
	.4byte	0x179b
	.uleb128 0x2d
	.4byte	.LVL39
	.4byte	0x19e5
	.uleb128 0x36
	.4byte	.LVL41
	.4byte	0x19f1
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x35
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1658
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x83
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x34
	.4byte	.LVL51
	.4byte	0x19fd
	.4byte	0x1646
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x36
	.4byte	.LVL54
	.4byte	0x1a09
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x1684
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.4byte	0x4e
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x36
	.4byte	.LVL58
	.4byte	0x1a15
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x36
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0x1a21
	.uleb128 0x34
	.4byte	.LVL13
	.4byte	0x1a2d
	.4byte	0x16ae
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0x19e5
	.uleb128 0x34
	.4byte	.LVL26
	.4byte	0x19f1
	.4byte	0x16d7
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x34
	.4byte	.LVL46
	.4byte	0x1a39
	.4byte	0x16ee
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x36
	.4byte	.LVL63
	.4byte	0x1a45
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x1234
	.4byte	0x1718
	.uleb128 0x38
	.4byte	0x36
	.uleb128 0x2
	.byte	0x7a
	.sleb128 -1
	.byte	0
	.uleb128 0x9
	.4byte	0x12e6
	.4byte	0x172b
	.uleb128 0x39
	.4byte	0x36
	.4byte	0x1684
	.byte	0
	.uleb128 0x9
	.4byte	0x16e
	.4byte	0x173b
	.uleb128 0xa
	.4byte	0x36
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	0x172b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1234
	.uleb128 0xe
	.byte	0x4
	.4byte	0x11c9
	.uleb128 0x2e
	.4byte	.LASF312
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179b
	.uleb128 0x2f
	.4byte	.LASF291
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.4byte	0x13e0
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x34
	.4byte	.LVL7
	.4byte	0x179b
	.4byte	0x178a
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL8
	.4byte	0x1a15
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF336
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.byte	0x1
	.4byte	0x17d0
	.uleb128 0x23
	.4byte	.LASF304
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.4byte	0x13e0
	.uleb128 0x25
	.4byte	.LASF313
	.byte	0x1
	.byte	0x22
	.byte	0xc
	.4byte	0x25
	.uleb128 0x30
	.4byte	.LASF314
	.4byte	0x17e0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4791
	.byte	0
	.uleb128 0x9
	.4byte	0x16e
	.4byte	0x17e0
	.uleb128 0xa
	.4byte	0x36
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	0x17d0
	.uleb128 0x3b
	.4byte	0x179b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186f
	.uleb128 0x3c
	.4byte	0x17a8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3d
	.4byte	0x17b4
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3e
	.4byte	0x179b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1865
	.uleb128 0x3f
	.4byte	0x17a8
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x40
	.4byte	0x17b4
	.uleb128 0x36
	.4byte	.LVL4
	.4byte	0x1a39
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4791
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL5
	.4byte	0x1a50
	.byte	0
	.uleb128 0x3b
	.4byte	0x1366
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d9
	.uleb128 0x3f
	.4byte	0x1377
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x3f
	.4byte	0x1383
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x3c
	.4byte	0x138f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x41
	.4byte	0x139b
	.sleb128 -1
	.uleb128 0x3d
	.4byte	0x13a7
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x40
	.4byte	0x13b3
	.uleb128 0x42
	.4byte	0x1366
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x3f
	.4byte	0x138f
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x3f
	.4byte	0x1383
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x3f
	.4byte	0x1377
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2b
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x3d
	.4byte	0x139b
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x40
	.4byte	0x13a7
	.uleb128 0x3d
	.4byte	0x13b3
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x43
	.4byte	0x13bf
	.uleb128 0x34
	.4byte	.LVL71
	.4byte	0x1a5c
	.4byte	0x1937
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x34
	.4byte	.LVL73
	.4byte	0x1a45
	.4byte	0x1956
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x34
	.4byte	.LVL75
	.4byte	0x19d9
	.4byte	0x196a
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL76
	.4byte	0x1a50
	.4byte	0x1987
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x34
	.4byte	.LVL77
	.4byte	0x1a15
	.4byte	0x199b
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL78
	.4byte	0x1a68
	.4byte	0x19af
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL80
	.4byte	0x1a74
	.4byte	0x19c6
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$4857
	.byte	0
	.uleb128 0x36
	.4byte	.LVL83
	.4byte	0x1a80
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0xe
	.byte	0xd7
	.byte	0x6
	.uleb128 0x44
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x11
	.byte	0x5b
	.byte	0xa
	.uleb128 0x44
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0xb
	.byte	0xe7
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x10
	.byte	0x33
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0xd
	.byte	0x29
	.byte	0x7
	.uleb128 0x44
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0xd
	.byte	0x65
	.byte	0x6
	.uleb128 0x44
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0xf
	.byte	0x8e
	.byte	0x8
	.uleb128 0x44
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0xf
	.byte	0x88
	.byte	0x8
	.uleb128 0x44
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0x12
	.byte	0x29
	.byte	0x6
	.uleb128 0x45
	.4byte	.LASF337
	.4byte	.LASF338
	.byte	0x14
	.byte	0
	.uleb128 0x44
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0xd
	.byte	0x57
	.byte	0x15
	.uleb128 0x44
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x13
	.byte	0x37
	.byte	0x7
	.uleb128 0x44
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x4
	.byte	0x20
	.byte	0x6
	.uleb128 0x44
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x4
	.byte	0x24
	.byte	0x6
	.uleb128 0x44
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x7
	.byte	0x61
	.byte	0x6
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS25:
	.uleb128 0
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 0
.LLST25:
	.4byte	.LVL88
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU266
	.uleb128 .LVU275
	.uleb128 .LVU280
	.uleb128 .LVU285
.LLST26:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU94
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU73
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU86
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL50
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL64
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU87
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU150
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU44
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU71
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU73
	.uleb128 .LVU86
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU92
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU136
	.uleb128 .LVU140
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU99
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU136
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36-1
	.4byte	.LVL38
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x13
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU150
	.uleb128 .LVU160
	.uleb128 .LVU182
	.uleb128 .LVU192
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU160
	.uleb128 .LVU182
	.uleb128 .LVU189
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU81
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU21
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU7
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU14
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x8
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU11
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
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
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 0
.LLST18:
	.4byte	.LVL66
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
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU205
	.uleb128 .LVU253
	.uleb128 .LVU256
	.uleb128 .LVU257
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU215
	.uleb128 .LVU253
.LLST20:
	.4byte	.LVL70
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU215
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU253
.LLST21:
	.4byte	.LVL70
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
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU215
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU253
.LLST22:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU248
	.uleb128 .LVU249
.LLST23:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU217
	.uleb128 .LVU253
.LLST24:
	.4byte	.LVL72
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF249:
	.string	"Xthal_cp_id_FPU"
.LASF259:
	.string	"Xthal_cp_id_XCHAL_CP5_IDENT"
.LASF137:
	.string	"Xthal_all_extra_size"
.LASF335:
	.string	"heap_caps_add_region"
.LASF5:
	.string	"size_t"
.LASF245:
	.string	"Xthal_itlb_arf_ways"
.LASF268:
	.string	"__locale_t"
.LASF20:
	.string	"__value"
.LASF78:
	.string	"__sf"
.LASF138:
	.string	"Xthal_all_extra_align"
.LASF161:
	.string	"Xthal_have_booleans"
.LASF270:
	.string	"owner"
.LASF83:
	.string	"_read"
.LASF183:
	.string	"Xthal_excm_level"
.LASF84:
	.string	"_write"
.LASF128:
	.string	"Xthal_rev_no"
.LASF125:
	.string	"int32_t"
.LASF74:
	.string	"_asctime_buf"
.LASF70:
	.string	"_cvtlen"
.LASF195:
	.string	"Xthal_have_exceptions"
.LASF208:
	.string	"Xthal_instrom_vaddr"
.LASF278:
	.string	"soc_memory_type_desc_t"
.LASF261:
	.string	"Xthal_cp_id_XCHAL_CP6_IDENT"
.LASF314:
	.string	"__func__"
.LASF31:
	.string	"__tm"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF88:
	.string	"_nbuf"
.LASF32:
	.string	"__tm_sec"
.LASF165:
	.string	"Xthal_have_sext"
.LASF113:
	.string	"_l64a_buf"
.LASF321:
	.string	"soc_get_available_memory_region_max_count"
.LASF202:
	.string	"Xthal_tram_sync"
.LASF91:
	.string	"_lock"
.LASF169:
	.string	"Xthal_have_fp"
.LASF305:
	.string	"num_regions"
.LASF283:
	.string	"type"
.LASF100:
	.string	"_mult"
.LASF166:
	.string	"Xthal_have_clamps"
.LASF218:
	.string	"Xthal_dataram_paddr"
.LASF190:
	.string	"Xthal_num_ibreak"
.LASF296:
	.string	"registered_heaps"
.LASF130:
	.string	"Xthal_cpregs_restore_fn"
.LASF263:
	.string	"Xthal_cp_id_XCHAL_CP7_IDENT"
.LASF192:
	.string	"Xthal_have_ccount"
.LASF141:
	.string	"Xthal_cp_num"
.LASF338:
	.string	"__builtin_memcpy"
.LASF131:
	.string	"Xthal_cpregs_save_nw_fn"
.LASF17:
	.string	"__wch"
.LASF222:
	.string	"Xthal_xlmi_size"
.LASF55:
	.string	"_file"
.LASF41:
	.string	"_on_exit_args"
.LASF246:
	.string	"Xthal_dtlb_way_bits"
.LASF284:
	.string	"iram_address"
.LASF162:
	.string	"Xthal_have_loops"
.LASF331:
	.string	"/home/dieter/Development/ProjektEi/build/heap"
.LASF227:
	.string	"Xthal_icache_line_lockable"
.LASF204:
	.string	"Xthal_num_instram"
.LASF115:
	.string	"_mbrlen_state"
.LASF13:
	.string	"long int"
.LASF105:
	.string	"_result_k"
.LASF52:
	.string	"_size"
.LASF175:
	.string	"Xthal_hw_configid0"
.LASF176:
	.string	"Xthal_hw_configid1"
.LASF139:
	.string	"Xthal_cp_names"
.LASF73:
	.string	"_localtime_buf"
.LASF217:
	.string	"Xthal_dataram_vaddr"
.LASF311:
	.string	"heap_caps_init"
.LASF36:
	.string	"__tm_mon"
.LASF248:
	.string	"Xthal_dtlb_arf_ways"
.LASF291:
	.string	"heap"
.LASF108:
	.string	"_misc_reent"
.LASF151:
	.string	"Xthal_dcache_size"
.LASF2:
	.string	"signed char"
.LASF120:
	.string	"__sf_fake_stdin"
.LASF334:
	.string	"registered_heaps_write_lock"
.LASF275:
	.string	"aliased_iram"
.LASF186:
	.string	"Xthal_intlevel"
.LASF198:
	.string	"Xthal_have_highlevel_interrupts"
.LASF196:
	.string	"Xthal_xea_version"
.LASF3:
	.string	"unsigned char"
.LASF244:
	.string	"Xthal_itlb_ways"
.LASF286:
	.string	"soc_memory_regions"
.LASF66:
	.string	"_unspecified_locale_info"
.LASF299:
	.string	"ESP_LOG_WARN"
.LASF58:
	.string	"_reent"
.LASF123:
	.string	"_global_impure_ptr"
.LASF178:
	.string	"Xthal_hw_release_minor"
.LASF234:
	.string	"Xthal_have_tlbs"
.LASF277:
	.string	"_Bool"
.LASF142:
	.string	"Xthal_cp_max"
.LASF155:
	.string	"Xthal_release_minor"
.LASF310:
	.string	"heaps_array"
.LASF24:
	.string	"char"
.LASF48:
	.string	"_fns"
.LASF173:
	.string	"Xthal_num_writebuffer_entries"
.LASF86:
	.string	"_close"
.LASF191:
	.string	"Xthal_num_dbreak"
.LASF129:
	.string	"Xthal_cpregs_save_fn"
.LASF60:
	.string	"_stdin"
.LASF205:
	.string	"Xthal_num_datarom"
.LASF237:
	.string	"Xthal_mmu_rings"
.LASF276:
	.string	"startup_stack"
.LASF298:
	.string	"ESP_LOG_ERROR"
.LASF215:
	.string	"Xthal_datarom_paddr"
.LASF224:
	.string	"Xthal_dcache_setwidth"
.LASF329:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF315:
	.string	"vPortCPUInitializeMutex"
.LASF216:
	.string	"Xthal_datarom_size"
.LASF236:
	.string	"Xthal_mmu_asid_kernel"
.LASF274:
	.string	"caps"
.LASF201:
	.string	"Xthal_tram_enabled"
.LASF157:
	.string	"Xthal_release_internal"
.LASF82:
	.string	"_cookie"
.LASF53:
	.string	"__sFILE_fake"
.LASF29:
	.string	"_wds"
.LASF306:
	.string	"regions"
.LASF75:
	.string	"_sig_func"
.LASF148:
	.string	"Xthal_icache_linesize"
.LASF164:
	.string	"Xthal_have_minmax"
.LASF90:
	.string	"_offset"
.LASF71:
	.string	"_cvtbuf"
.LASF330:
	.string	"/home/dieter/Development/esp-idf/components/heap/heap_caps_init.c"
.LASF323:
	.string	"__assert_func"
.LASF170:
	.string	"Xthal_have_speculation"
.LASF295:
	.string	"slh_first"
.LASF214:
	.string	"Xthal_datarom_vaddr"
.LASF177:
	.string	"Xthal_hw_release_major"
.LASF200:
	.string	"Xthal_tram_pending"
.LASF242:
	.string	"Xthal_mmu_min_pte_page_size"
.LASF328:
	.string	"free"
.LASF106:
	.string	"_p5s"
.LASF23:
	.string	"long unsigned int"
.LASF154:
	.string	"Xthal_release_major"
.LASF238:
	.string	"Xthal_mmu_ring_bits"
.LASF150:
	.string	"Xthal_icache_size"
.LASF81:
	.string	"__sFILE"
.LASF65:
	.string	"__sdidinit"
.LASF93:
	.string	"_flags2"
.LASF212:
	.string	"Xthal_instram_paddr"
.LASF288:
	.string	"sle_next"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF122:
	.string	"__sf_fake_stderr"
.LASF59:
	.string	"_errno"
.LASF312:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF135:
	.string	"Xthal_cpregs_size"
.LASF80:
	.string	"_signal_buf"
.LASF30:
	.string	"_Bigint"
.LASF313:
	.string	"heap_size"
.LASF27:
	.string	"_maxwds"
.LASF233:
	.string	"Xthal_have_cacheattr"
.LASF293:
	.string	"heap_t"
.LASF68:
	.string	"__cleanup"
.LASF76:
	.string	"_atexit0"
.LASF10:
	.string	"__intptr_t"
.LASF252:
	.string	"Xthal_cp_mask_XCHAL_CP1_IDENT"
.LASF247:
	.string	"Xthal_dtlb_ways"
.LASF7:
	.string	"__uint32_t"
.LASF64:
	.string	"_emergency"
.LASF11:
	.string	"_lock_t"
.LASF211:
	.string	"Xthal_instram_vaddr"
.LASF8:
	.string	"long long int"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF96:
	.string	"_niobs"
.LASF77:
	.string	"__sglue"
.LASF179:
	.string	"Xthal_hw_release_name"
.LASF337:
	.string	"memcpy"
.LASF319:
	.string	"multi_heap_malloc"
.LASF69:
	.string	"_gamma_signgam"
.LASF266:
	.string	"esp_err_t"
.LASF232:
	.string	"Xthal_have_xlt_cacheattr"
.LASF254:
	.string	"Xthal_cp_mask_XCHAL_CP2_IDENT"
.LASF107:
	.string	"_freelist"
.LASF97:
	.string	"_iobs"
.LASF325:
	.string	"heap_caps_malloc"
.LASF185:
	.string	"Xthal_intlevel_andbelow_mask"
.LASF95:
	.string	"_glue"
.LASF28:
	.string	"_sign"
.LASF320:
	.string	"multi_heap_set_lock"
.LASF199:
	.string	"Xthal_have_nmi"
.LASF336:
	.string	"register_heap"
.LASF271:
	.string	"count"
.LASF257:
	.string	"Xthal_cp_id_XCHAL_CP4_IDENT"
.LASF121:
	.string	"__sf_fake_stdout"
.LASF317:
	.string	"ets_printf"
.LASF0:
	.string	"unsigned int"
.LASF153:
	.string	"Xthal_debug_configured"
.LASF322:
	.string	"soc_get_available_memory_regions"
.LASF127:
	.string	"intptr_t"
.LASF193:
	.string	"Xthal_num_ccompare"
.LASF160:
	.string	"Xthal_have_density"
.LASF197:
	.string	"Xthal_have_interrupts"
.LASF256:
	.string	"Xthal_cp_mask_XCHAL_CP3_IDENT"
.LASF226:
	.string	"Xthal_dcache_ways"
.LASF118:
	.string	"_wcrtomb_state"
.LASF174:
	.string	"Xthal_build_unique_id"
.LASF309:
	.string	"heap_idx"
.LASF35:
	.string	"__tm_mday"
.LASF210:
	.string	"Xthal_instrom_size"
.LASF87:
	.string	"_ubuf"
.LASF144:
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
.LASF333:
	.string	"done"
.LASF203:
	.string	"Xthal_num_instrom"
.LASF46:
	.string	"_atexit"
.LASF287:
	.string	"soc_memory_region_count"
.LASF294:
	.string	"registered_heap_ll"
.LASF19:
	.string	"__count"
.LASF152:
	.string	"Xthal_dcache_is_writeback"
.LASF258:
	.string	"Xthal_cp_mask_XCHAL_CP4_IDENT"
.LASF302:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"__tm_wday"
.LASF219:
	.string	"Xthal_dataram_size"
.LASF228:
	.string	"Xthal_dcache_line_lockable"
.LASF140:
	.string	"Xthal_num_coprocessors"
.LASF39:
	.string	"__tm_yday"
.LASF207:
	.string	"Xthal_num_xlmi"
.LASF99:
	.string	"_seed"
.LASF194:
	.string	"Xthal_have_prid"
.LASF85:
	.string	"_seek"
.LASF324:
	.string	"multi_heap_register"
.LASF304:
	.string	"region"
.LASF15:
	.string	"_fpos_t"
.LASF18:
	.string	"__wchb"
.LASF260:
	.string	"Xthal_cp_mask_XCHAL_CP5_IDENT"
.LASF112:
	.string	"_mbtowc_state"
.LASF316:
	.string	"esp_log_timestamp"
.LASF282:
	.string	"size"
.LASF9:
	.string	"long long unsigned int"
.LASF43:
	.string	"_dso_handle"
.LASF98:
	.string	"_rand48"
.LASF229:
	.string	"Xthal_have_spanning_way"
.LASF280:
	.string	"soc_memory_type_count"
.LASF61:
	.string	"_stdout"
.LASF89:
	.string	"_blksize"
.LASF51:
	.string	"_base"
.LASF262:
	.string	"Xthal_cp_mask_XCHAL_CP6_IDENT"
.LASF297:
	.string	"ESP_LOG_NONE"
.LASF109:
	.string	"_strtok_last"
.LASF158:
	.string	"Xthal_memory_order"
.LASF116:
	.string	"_mbrtowc_state"
.LASF163:
	.string	"Xthal_have_nsa"
.LASF272:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"_flock_t"
.LASF300:
	.string	"ESP_LOG_INFO"
.LASF94:
	.string	"__FILE"
.LASF332:
	.string	"heap_caps_add_region_with_caps"
.LASF303:
	.string	"p_new"
.LASF171:
	.string	"Xthal_have_threadptr"
.LASF327:
	.string	"_lock_release"
.LASF231:
	.string	"Xthal_have_mimic_cacheattr"
.LASF21:
	.string	"_mbstate_t"
.LASF267:
	.string	"multi_heap_handle_t"
.LASF72:
	.string	"_r48"
.LASF16:
	.string	"wint_t"
.LASF26:
	.string	"_next"
.LASF57:
	.string	"_data"
.LASF269:
	.string	"multi_heap_info"
.LASF264:
	.string	"Xthal_cp_mask_XCHAL_CP7_IDENT"
.LASF149:
	.string	"Xthal_dcache_linesize"
.LASF251:
	.string	"Xthal_cp_id_XCHAL_CP1_IDENT"
.LASF184:
	.string	"Xthal_intlevel_mask"
.LASF188:
	.string	"Xthal_inttype_mask"
.LASF143:
	.string	"Xthal_cp_mask"
.LASF273:
	.string	"name"
.LASF181:
	.string	"Xthal_num_intlevels"
.LASF225:
	.string	"Xthal_icache_ways"
.LASF239:
	.string	"Xthal_mmu_sr_bits"
.LASF132:
	.string	"Xthal_cpregs_restore_nw_fn"
.LASF172:
	.string	"Xthal_have_pif"
.LASF110:
	.string	"_mblen_state"
.LASF4:
	.string	"short int"
.LASF180:
	.string	"Xthal_hw_release_internal"
.LASF318:
	.string	"heap_caps_match"
.LASF189:
	.string	"Xthal_timer_interrupt"
.LASF281:
	.string	"start"
.LASF124:
	.string	"suboptarg"
.LASF44:
	.string	"_fntypes"
.LASF206:
	.string	"Xthal_num_dataram"
.LASF37:
	.string	"__tm_year"
.LASF253:
	.string	"Xthal_cp_id_XCHAL_CP2_IDENT"
.LASF56:
	.string	"_lbfsize"
.LASF63:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF301:
	.string	"ESP_LOG_DEBUG"
.LASF243:
	.string	"Xthal_itlb_way_bits"
.LASF147:
	.string	"Xthal_dcache_linewidth"
.LASF50:
	.string	"__sbuf"
.LASF187:
	.string	"Xthal_inttype"
.LASF45:
	.string	"_is_cxa"
.LASF220:
	.string	"Xthal_xlmi_vaddr"
.LASF307:
	.string	"num_heaps"
.LASF213:
	.string	"Xthal_instram_size"
.LASF103:
	.string	"_mprec"
.LASF79:
	.string	"_misc"
.LASF67:
	.string	"_locale"
.LASF25:
	.string	"__ULong"
.LASF133:
	.string	"Xthal_extra_size"
.LASF240:
	.string	"Xthal_mmu_ca_bits"
.LASF126:
	.string	"uint32_t"
.LASF255:
	.string	"Xthal_cp_id_XCHAL_CP3_IDENT"
.LASF265:
	.string	"exc_cause_table"
.LASF156:
	.string	"Xthal_release_name"
.LASF104:
	.string	"_result"
.LASF326:
	.string	"_lock_acquire"
.LASF168:
	.string	"Xthal_have_mul16"
.LASF14:
	.string	"_off_t"
.LASF235:
	.string	"Xthal_mmu_asid_bits"
.LASF241:
	.string	"Xthal_mmu_max_pte_page_size"
.LASF101:
	.string	"_add"
.LASF223:
	.string	"Xthal_icache_setwidth"
.LASF1:
	.string	"short unsigned int"
.LASF34:
	.string	"__tm_hour"
.LASF230:
	.string	"Xthal_have_identity_map"
.LASF145:
	.string	"Xthal_num_aregs_log2"
.LASF308:
	.string	"temp_heaps"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF290:
	.string	"heap_mux"
.LASF6:
	.string	"__int32_t"
.LASF146:
	.string	"Xthal_icache_linewidth"
.LASF250:
	.string	"Xthal_cp_mask_FPU"
.LASF136:
	.string	"Xthal_cpregs_align"
.LASF285:
	.string	"soc_memory_region_t"
.LASF42:
	.string	"_fnargs"
.LASF40:
	.string	"__tm_isdst"
.LASF292:
	.string	"next"
.LASF159:
	.string	"Xthal_have_windowed"
.LASF221:
	.string	"Xthal_xlmi_paddr"
.LASF209:
	.string	"Xthal_instrom_paddr"
.LASF279:
	.string	"soc_memory_types"
.LASF289:
	.string	"heap_t_"
.LASF134:
	.string	"Xthal_extra_align"
.LASF33:
	.string	"__tm_min"
.LASF114:
	.string	"_getdate_err"
.LASF182:
	.string	"Xthal_num_interrupts"
.LASF167:
	.string	"Xthal_have_mac16"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
