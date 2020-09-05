	.file	"packet_fragmenter.c"
	.text
.Ltext0:
	.section	.text.fragment_get_current_packet,"ax",@progbits
	.literal_position
	.literal .LC0, current_fragment_packet
	.align	4
	.type	fragment_get_current_packet, @function
fragment_get_current_packet:
.LFB41:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/packet_fragmenter.c"
	.loc 1 66 0
	entry	sp, 32
.LCFI0:
	.loc 1 68 0
	l32r	a8, .LC0
	l32i.n	a2, a8, 0
	retw.n
.LFE41:
	.size	fragment_get_current_packet, .-fragment_get_current_packet
	.section	.text.fragment_and_dispatch,"ax",@progbits
	.literal_position
	.literal .LC1, 8448
	.literal .LC2, callbacks
	.literal .LC3, controller
	.literal .LC4, 6400
	.literal .LC5, current_fragment_packet
	.literal .LC6, -12289
	.literal .LC7, 4096
	.align	4
	.type	fragment_and_dispatch, @function
fragment_and_dispatch:
.LFB42:
	.loc 1 71 0
.LVL0:
	entry	sp, 48
.LCFI1:
	.loc 1 74 0
	l16ui	a3, a2, 0
.LVL1:
	.loc 1 80 0
	movi	a5, -0x100
	l32r	a6, .LC1
	and	a5, a3, a5
	l32r	a4, .LC2
	beq	a5, a6, .L3
	j	.L13
.L3:
	.loc 1 85 0
	extui	a3, a3, 0, 8
.LVL2:
	.loc 1 75 0
	l16ui	a6, a2, 4
	l32r	a5, .LC3
	.loc 1 85 0
	bnez.n	a3, .L5
	.loc 1 87 0 discriminator 1
	l32i.n	a3, a5, 0
	.loc 1 85 0 discriminator 1
	l32i	a10, a3, 84
	j	.L11
.L5:
	.loc 1 88 0 discriminator 2
	l32i.n	a3, a5, 0
	.loc 1 85 0 discriminator 2
	l32i	a10, a3, 88
.L11:
	callx8	a10
.LVL3:
	mov.n	a9, a10
.LVL4:
	.loc 1 91 0 discriminator 2
	l16ui	a3, a2, 2
	.loc 1 90 0 discriminator 2
	addi.n	a10, a10, 4
	extui	a10, a10, 0, 16
.LVL5:
	l32r	a5, .LC5
	.loc 1 91 0 discriminator 2
	bgeu	a10, a3, .L7
	.loc 1 91 0 is_stmt 0 discriminator 1
	l16ui	a11, a2, 6
	bnez.n	a11, .L8
	j	.L14
.L8:
.LVL6:
	.loc 1 75 0 is_stmt 1
	addi.n	a7, a2, 8
	add.n	a11, a7, a6
	.loc 1 100 0
	l8ui	a8, a11, 1
	l8ui	a6, a11, 0
	slli	a8, a8, 8
	add.n	a8, a6, a8
	l32r	a6, .LC6
	.loc 1 103 0
	s8i	a9, a11, 2
	.loc 1 100 0
	and	a6, a8, a6
	.loc 1 103 0
	srli	a8, a9, 8
	s8i	a8, a11, 3
	.loc 1 105 0
	l32i.n	a8, a4, 0
	.loc 1 100 0
	l32r	a12, .LC7
	.loc 1 105 0
	l32i.n	a8, a8, 0
	.loc 1 102 0
	s32i.n	a2, a5, 0
	.loc 1 104 0
	s16i	a10, a2, 2
	.loc 1 105 0
	movi.n	a11, 0
	s32i.n	a9, sp, 0
	mov.n	a10, a2
.LVL7:
	.loc 1 100 0
	or	a6, a6, a12
	.loc 1 105 0
	callx8	a8
.LVL8:
	.loc 1 106 0
	l16ui	a8, a2, 4
	l32i.n	a9, sp, 0
	.loc 1 100 0
	sext	a6, a6, 15
	.loc 1 106 0
	add.n	a8, a9, a8
	.loc 1 107 0
	sub	a3, a3, a9
.LVL9:
	.loc 1 106 0
	extui	a8, a8, 0, 16
	.loc 1 107 0
	extui	a3, a3, 0, 16
.LVL10:
	.loc 1 106 0
	s16i	a8, a2, 4
	.loc 1 108 0
	s16i	a3, a2, 2
	.loc 1 111 0
	add.n	a8, a7, a8
	.loc 1 113 0
	addi	a3, a3, -4
.LVL11:
	.loc 1 112 0
	s8i	a6, a8, 0
.LVL12:
	.loc 1 113 0
	s8i	a3, a8, 2
	.loc 1 112 0
	extui	a6, a6, 8, 8
	.loc 1 113 0
	srai	a3, a3, 8
.LVL13:
	.loc 1 112 0
	s8i	a6, a8, 1
.LVL14:
	.loc 1 113 0
	s8i	a3, a8, 3
	.loc 1 115 0
	l16ui	a11, a2, 6
	beqz.n	a11, .L2
	.loc 1 116 0
	addi.n	a11, a11, -1
	extui	a11, a11, 0, 16
	s16i	a11, a2, 6
	.loc 1 117 0
	bnez.n	a11, .L2
.LVL15:
.L14:
	.loc 1 118 0
	l32r	a3, .LC4
	.loc 1 125 0
	s32i.n	a11, a5, 0
	.loc 1 118 0
	s16i	a3, a2, 0
	.loc 1 126 0
	l32i.n	a3, a4, 0
	l32i.n	a3, a3, 8
	j	.L12
.LVL16:
.L7:
	.loc 1 131 0
	movi.n	a3, 0
.LVL17:
	s32i.n	a3, a5, 0
.LVL18:
.L13:
	.loc 1 132 0
	l32i.n	a3, a4, 0
	movi.n	a11, 1
	l32i.n	a3, a3, 0
.L12:
	mov.n	a10, a2
	callx8	a3
.LVL19:
.L2:
	retw.n
.LFE42:
	.size	fragment_and_dispatch, .-fragment_and_dispatch
	.section	.text.cleanup,"ax",@progbits
	.literal_position
	.literal .LC8, partial_packets
	.align	4
	.type	cleanup, @function
cleanup:
.LFB40:
	.loc 1 59 0
	entry	sp, 32
.LCFI2:
	.loc 1 60 0
	l32r	a8, .LC8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L15
	.loc 1 61 0
	call8	hash_map_free
.LVL20:
.L15:
	retw.n
.LFE40:
	.size	cleanup, .-cleanup
	.section	.text.init,"ax",@progbits
	.literal_position
	.literal .LC9, current_fragment_packet
	.literal .LC10, callbacks
	.literal .LC11, hash_function_naive
	.literal .LC12, partial_packets
	.align	4
	.type	init, @function
init:
.LFB39:
	.loc 1 52 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 53 0
	l32r	a8, .LC9
	movi.n	a12, 0
	s32i.n	a12, a8, 0
	.loc 1 55 0
	l32r	a11, .LC11
	.loc 1 54 0
	l32r	a8, .LC10
	.loc 1 55 0
	mov.n	a14, a12
	mov.n	a13, a12
	movi.n	a10, 0x2a
	.loc 1 54 0
	s32i.n	a2, a8, 0
	.loc 1 55 0
	call8	hash_map_new
.LVL22:
	l32r	a8, .LC12
	s32i.n	a10, a8, 0
	retw.n
.LFE39:
	.size	init, .-init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"acl_length == packet->len - HCI_ACL_PREAMBLE_SIZE"
.LC17:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/packet_fragmenter.c"
.LC20:
	.string	"BT_HCI"
.LC22:
	.string	"\033[0;33mW (%d) %s: %s found unfinished packet for handle with start packet. Dropping old.\n\033[0m\n"
.LC24:
	.string	"\033[0;33mW (%d) %s: %s found l2cap full length %d less than the hci length %d.\n\033[0m\n"
.LC27:
	.string	"\033[0;31mE (%d) %s: %s got continuation for unknown packet. Dropping it.\n\033[0m\n"
.LC29:
	.string	"\033[0;31mE (%d) %s: %s got packet which would exceed expected length of %d. Truncating.\n\033[0m\n"
	.section	.text.reassemble_and_dispatch,"ax",@progbits
	.literal_position
	.literal .LC13, 4352
	.literal .LC15, .LC14
	.literal .LC16, __func__$5989
	.literal .LC18, .LC17
	.literal .LC19, partial_packets
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, callbacks
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.type	reassemble_and_dispatch, @function
reassemble_and_dispatch:
.LFB43:
	.loc 1 137 0
.LVL23:
	entry	sp, 64
.LCFI4:
	.loc 1 140 0
	l16ui	a4, a2, 0
	movi	a3, -0x100
	and	a3, a4, a3
	l32r	a4, .LC13
	bne	a3, a4, .L22
.LVL24:
.LBB10:
.LBB11:
.LBB12:
	.loc 1 141 0
	l16ui	a4, a2, 4
	addi.n	a3, a2, 8
	add.n	a4, a3, a4
.LVL25:
	.loc 1 146 0
	l8ui	a9, a4, 1
	.loc 1 141 0
	s32i.n	a3, sp, 16
	.loc 1 146 0
	l8ui	a3, a4, 0
	.loc 1 150 0
	l8ui	a5, a4, 3
	.loc 1 146 0
	slli	a9, a9, 8
	add.n	a9, a3, a9
	.loc 1 148 0
	l8ui	a7, a4, 5
	l8ui	a3, a4, 4
	.loc 1 150 0
	l8ui	a4, a4, 2
.LVL26:
	slli	a5, a5, 8
	add.n	a4, a4, a5
	l16ui	a5, a2, 2
	extui	a4, a4, 0, 16
	addi	a5, a5, -4
	.loc 1 146 0
	extui	a9, a9, 0, 16
.LVL27:
	.loc 1 150 0
	beq	a4, a5, .L23
	l32r	a13, .LC15
	l32r	a12, .LC16
	l32r	a10, .LC18
	movi	a11, 0x96
	call8	__assert_func
.LVL28:
.L23:
	.loc 1 155 0
	l32r	a5, .LC19
	extui	a4, a9, 0, 12
	l32i.n	a10, a5, 0
	mov.n	a11, a4
	s32i.n	a9, sp, 20
	call8	hash_map_get
.LVL29:
	.loc 1 157 0
	l32i.n	a9, sp, 20
	.loc 1 155 0
	mov.n	a6, a10
.LVL30:
	.loc 1 157 0
	extui	a9, a9, 12, 2
	bnei	a9, 2, .L24
.LBB13:
	.loc 1 158 0
	beqz.n	a10, .L25
	.loc 1 159 0
	s32i.n	a9, sp, 20
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC21
	l32i.n	a9, sp, 20
	l32r	a15, .LC16
	l32r	a12, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
	mov.n	a10, a9
	call8	esp_log_write
.LVL32:
	.loc 1 160 0
	l32i.n	a10, a5, 0
	mov.n	a11, a4
	call8	hash_map_erase
.LVL33:
	.loc 1 161 0
	mov.n	a10, a6
	call8	free
.LVL34:
.L25:
.LBE13:
	.loc 1 148 0
	slli	a7, a7, 8
.LVL35:
	add.n	a3, a7, a3
	extui	a3, a3, 0, 16
.LBB14:
	.loc 1 164 0
	addi.n	a7, a3, 8
	.loc 1 165 0
	l16ui	a6, a2, 2
.LVL36:
	.loc 1 164 0
	extui	a7, a7, 0, 16
.LVL37:
	.loc 1 165 0
	bltu	a6, a7, .L26
	.loc 1 166 0
	bgeu	a7, a6, .L22
	.loc 1 167 0
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC21
	l16ui	a4, a2, 2
	l32r	a15, .LC16
	l32r	a12, .LC25
	mov.n	a13, a10
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	movi.n	a10, 2
	call8	esp_log_write
.LVL39:
	j	.L22
.L26:
	.loc 1 173 0
	addi.n	a11, a7, 8
	movi.n	a10, 1
	call8	calloc
.LVL40:
	.loc 1 174 0
	l16ui	a8, a2, 0
	.loc 1 176 0
	s16i	a6, a10, 4
	.loc 1 178 0
	l16ui	a11, a2, 4
	mov.n	a12, a6
	l32i.n	a6, sp, 16
	.loc 1 173 0
	mov.n	a3, a10
.LVL41:
	.loc 1 174 0
	s16i	a8, a10, 0
	.loc 1 175 0
	s16i	a7, a10, 2
	.loc 1 178 0
	add.n	a11, a6, a11
	addi.n	a10, a10, 8
	call8	memcpy
.LVL42:
	.loc 1 183 0
	addi	a7, a7, -4
.LVL43:
	s8i	a7, a3, 10
.LVL44:
	.loc 1 185 0
	l32i.n	a10, a5, 0
	.loc 1 183 0
	srai	a7, a7, 8
.LVL45:
	s8i	a7, a3, 11
	.loc 1 185 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	hash_map_set
.LVL46:
	j	.L34
.LVL47:
.L24:
.LBE14:
.LBB15:
	.loc 1 189 0
	bnez.n	a10, .L29
	.loc 1 190 0
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC21
	l32r	a15, .LC16
	l32r	a12, .LC28
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
.L34:
	.loc 1 191 0
	mov.n	a10, a2
	call8	free
.LVL50:
	retw.n
.LVL51:
.L29:
	.loc 1 195 0
	l16ui	a3, a2, 4
.LVL52:
	addi.n	a3, a3, 4
	s16i	a3, a2, 4
	.loc 1 196 0
	l16ui	a3, a2, 2
	.loc 1 197 0
	l16ui	a7, a10, 4
	.loc 1 196 0
	addi	a3, a3, -4
	extui	a3, a3, 0, 16
	s16i	a3, a2, 2
	.loc 1 197 0
	add.n	a3, a3, a7
	.loc 1 198 0
	l16ui	a7, a10, 2
	.loc 1 197 0
	extui	a3, a3, 0, 16
.LVL53:
	.loc 1 198 0
	bgeu	a7, a3, .L30
	.loc 1 199 0
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC21
	l16ui	a3, a6, 2
.LVL55:
	l32r	a15, .LC16
	l32r	a12, .LC30
	s32i.n	a3, sp, 0
	mov.n	a13, a10
	mov.n	a14, a11
	movi.n	a10, 1
	call8	esp_log_write
.LVL56:
	.loc 1 200 0
	l16ui	a3, a6, 2
	l16ui	a7, a6, 4
	sub	a3, a3, a7
	s16i	a3, a2, 2
	.loc 1 201 0
	l16ui	a3, a6, 2
.LVL57:
.L30:
	.loc 1 204 0
	l16ui	a11, a2, 4
	l32i.n	a8, sp, 16
	l16ui	a7, a6, 4
	l16ui	a12, a2, 2
	.loc 1 205 0
	addi.n	a10, a6, 8
	.loc 1 204 0
	add.n	a11, a8, a11
	add.n	a10, a10, a7
	call8	memcpy
.LVL58:
	.loc 1 211 0
	mov.n	a10, a2
	call8	free
.LVL59:
	.loc 1 214 0
	l16ui	a2, a6, 2
.LVL60:
	.loc 1 212 0
	s16i	a3, a6, 4
	.loc 1 214 0
	bne	a2, a3, .L21
	.loc 1 215 0
	l32i.n	a10, a5, 0
	mov.n	a11, a4
	.loc 1 216 0
	movi.n	a2, 0
	.loc 1 215 0
	call8	hash_map_erase
.LVL61:
	.loc 1 216 0
	s16i	a2, a6, 4
	.loc 1 217 0
	l32r	a2, .LC26
	mov.n	a10, a6
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 4
	callx8	a2
.LVL62:
	retw.n
.LVL63:
.L22:
.LBE15:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 221 0
	l32r	a3, .LC26
	mov.n	a10, a2
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	callx8	a3
.LVL64:
.L21:
	retw.n
.LFE43:
	.size	reassemble_and_dispatch, .-reassemble_and_dispatch
	.section	.text.packet_fragmenter_get_interface,"ax",@progbits
	.literal_position
	.literal .LC31, controller
	.literal .LC32, interface
	.align	4
	.global	packet_fragmenter_get_interface
	.type	packet_fragmenter_get_interface, @function
packet_fragmenter_get_interface:
.LFB44:
	.loc 1 235 0
	entry	sp, 32
.LCFI5:
	.loc 1 236 0
	call8	controller_get_interface
.LVL65:
	l32r	a8, .LC31
	.loc 1 238 0
	l32r	a2, .LC32
	.loc 1 236 0
	s32i.n	a10, a8, 0
	.loc 1 238 0
	retw.n
.LFE44:
	.size	packet_fragmenter_get_interface, .-packet_fragmenter_get_interface
	.section	.rodata.__func__$5989,"a",@progbits
	.type	__func__$5989, @object
	.size	__func__$5989, 24
__func__$5989:
	.string	"reassemble_and_dispatch"
	.section	.bss.current_fragment_packet,"aw",@nobits
	.align	4
	.type	current_fragment_packet, @object
	.size	current_fragment_packet, 4
current_fragment_packet:
	.zero	4
	.section	.bss.partial_packets,"aw",@nobits
	.align	4
	.type	partial_packets, @object
	.size	partial_packets, 4
partial_packets:
	.zero	4
	.section	.bss.callbacks,"aw",@nobits
	.align	4
	.type	callbacks, @object
	.size	callbacks, 4
callbacks:
	.zero	4
	.section	.bss.controller,"aw",@nobits
	.align	4
	.type	controller, @object
	.size	controller, 4
controller:
	.zero	4
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 20
interface:
	.word	init
	.word	cleanup
	.word	fragment_get_current_packet
	.word	fragment_and_dispatch
	.word	reassemble_and_dispatch
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI0-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI1-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI5-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/common/osi/include/osi/hash_map.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/device_features.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/controller.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/include/hci/packet_fragmenter.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/device/include/device/version.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb5b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	0xac
	.uleb128 0x8
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.4byte	0x73
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1f
	.4byte	0x104
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xbf
	.4byte	0x166
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0xc0
	.4byte	0xbd
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x4
	.byte	0xc1
	.4byte	0xbd
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0xc2
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0xc3
	.4byte	0xbd
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc4
	.4byte	0x166
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	0x175
	.uleb128 0xf
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc5
	.4byte	0x121
	.uleb128 0xe
	.4byte	0x104
	.4byte	0x190
	.uleb128 0x10
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x6
	.byte	0x5
	.byte	0x3b
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.4byte	0x1a5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	0x1b5
	.uleb128 0x10
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.4byte	0x190
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1a
	.4byte	0x1cb
	.uleb128 0x11
	.4byte	.LASF33
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.4byte	0x1e5
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1a
	.4byte	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	0x1f5
	.uleb128 0x10
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0x1b
	.4byte	0x1d0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x80
	.byte	0x8
	.byte	0x20
	.4byte	0x38d
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x21
	.4byte	0x93
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x22
	.4byte	0x93
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x23
	.4byte	0x453
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x25
	.4byte	0x469
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x26
	.4byte	0x47f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x28
	.4byte	0x49f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x2a
	.4byte	0x4aa
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2c
	.4byte	0x4b5
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2d
	.4byte	0x4cb
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2f
	.4byte	0x453
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x30
	.4byte	0x453
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0x31
	.4byte	0x453
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x32
	.4byte	0x453
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x33
	.4byte	0x453
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x34
	.4byte	0x453
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x35
	.4byte	0x453
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x36
	.4byte	0x453
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x38
	.4byte	0x453
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x39
	.4byte	0x453
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3a
	.4byte	0x453
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x3b
	.4byte	0x453
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0x3e
	.4byte	0x4d6
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x3f
	.4byte	0x4d6
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x44
	.4byte	0x4d6
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x45
	.4byte	0x4d6
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x47
	.4byte	0x4d6
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x48
	.4byte	0x4d6
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0x4b
	.4byte	0x4d6
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0x4c
	.4byte	0x4aa
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0x4e
	.4byte	0x4aa
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x8
	.byte	0x50
	.4byte	0x4aa
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.byte	0x51
	.4byte	0xac
	.byte	0x7c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x14
	.byte	0x9
	.byte	0x2a
	.4byte	0x3d6
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2c
	.4byte	0x561
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x9
	.byte	0x2f
	.4byte	0x93
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x9
	.byte	0x32
	.4byte	0x3e1
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x9
	.byte	0x35
	.4byte	0x442
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x9
	.byte	0x39
	.4byte	0x442
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x175
	.uleb128 0x13
	.4byte	0x3d6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3dc
	.uleb128 0xb
	.byte	0xa
	.byte	0xa
	.byte	0x17
	.4byte	0x42c
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0xa
	.byte	0x18
	.4byte	0xb2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0xa
	.byte	0x19
	.4byte	0xbd
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0xa
	.byte	0x1a
	.4byte	0xb2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xa
	.byte	0x1b
	.4byte	0xbd
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xa
	.byte	0x1c
	.4byte	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xa
	.byte	0x1d
	.4byte	0x3e7
	.uleb128 0x7
	.4byte	0x442
	.uleb128 0x8
	.4byte	0x3d6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x437
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x13
	.4byte	0x11a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x44e
	.uleb128 0x13
	.4byte	0x45e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x464
	.uleb128 0x14
	.4byte	0x1b5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x459
	.uleb128 0x13
	.4byte	0x474
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x14
	.4byte	0x42c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x46f
	.uleb128 0x15
	.4byte	0x494
	.4byte	0x494
	.uleb128 0x8
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49a
	.uleb128 0x14
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x485
	.uleb128 0x13
	.4byte	0xb2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x13
	.4byte	0x494
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4b0
	.uleb128 0x13
	.4byte	0x4c0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x14
	.4byte	0xb2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4bb
	.uleb128 0x13
	.4byte	0xbd
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d1
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x9
	.byte	0x1a
	.4byte	0x4e7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4ed
	.uleb128 0x7
	.4byte	0x4fd
	.uleb128 0x8
	.4byte	0x3d6
	.uleb128 0x8
	.4byte	0x11a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x9
	.byte	0x1b
	.4byte	0x442
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x9
	.byte	0x1c
	.4byte	0x4e7
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0x1e
	.4byte	0x540
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x9
	.byte	0x20
	.4byte	0x508
	.byte	0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x9
	.byte	0x23
	.4byte	0x4fd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x9
	.byte	0x27
	.4byte	0x4dc
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x9
	.byte	0x28
	.4byte	0x513
	.uleb128 0x7
	.4byte	0x556
	.uleb128 0x8
	.4byte	0x556
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55c
	.uleb128 0x14
	.4byte	0x540
	.uleb128 0x5
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x5ee
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x88
	.4byte	0x3d6
	.uleb128 0x18
	.4byte	.LASF88
	.4byte	0x5fe
	.4byte	.LASF74
	.uleb128 0x19
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8d
	.4byte	0x448
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8e
	.4byte	0xbd
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8f
	.4byte	0xbd
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0x90
	.4byte	0xbd
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x98
	.4byte	0xb2
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x9b
	.4byte	0x3d6
	.uleb128 0x1b
	.4byte	0x5df
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x1
	.byte	0xa4
	.4byte	0xbd
	.byte	0
	.uleb128 0x19
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x1
	.byte	0xc5
	.4byte	0xbd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9a
	.4byte	0x5fe
	.uleb128 0x10
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	0x5ee
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.byte	0x41
	.4byte	0x3d6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0x46
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x46
	.4byte	0x3d6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x1
	.byte	0x48
	.4byte	0xbd
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x1
	.byte	0x49
	.4byte	0xbd
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x49
	.4byte	0xbd
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x49
	.4byte	0xbd
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.4byte	0xbd
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x4b
	.4byte	0x448
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF88
	.4byte	0x6cb
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0x6ae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9a
	.4byte	0x6cb
	.uleb128 0x10
	.4byte	0x85
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.4byte	0x6bb
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ef
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0xadc
	.byte	0
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.byte	0x33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x1
	.byte	0x33
	.4byte	0x556
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL22
	.4byte	0xae7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x567
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa18
	.uleb128 0x29
	.4byte	0x573
	.4byte	.LLST5
	.uleb128 0x2a
	.4byte	0x57e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.uleb128 0x2b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xa08
	.uleb128 0x29
	.4byte	0x573
	.4byte	.LLST6
	.uleb128 0x2c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2a
	.4byte	0x57e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.uleb128 0x2c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x2d
	.4byte	0x58c
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	0x597
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	0x5a2
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	0x5ad
	.uleb128 0x2d
	.4byte	0x5b8
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	0x5c3
	.4byte	.LLST11
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8c4
	.uleb128 0x2d
	.4byte	0x5d3
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	.LVL31
	.4byte	0xaf2
	.uleb128 0x30
	.4byte	.LVL32
	.4byte	0xafd
	.4byte	0x80a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.byte	0
	.uleb128 0x30
	.4byte	.LVL33
	.4byte	0xb08
	.4byte	0x81e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL34
	.4byte	0xb13
	.4byte	0x832
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL38
	.4byte	0xaf2
	.uleb128 0x30
	.4byte	.LVL39
	.4byte	0xafd
	.4byte	0x880
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL40
	.4byte	0xb1e
	.4byte	0x899
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.4byte	.LVL42
	.4byte	0xb29
	.4byte	0x8ad
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x27
	.4byte	.LVL46
	.4byte	0xb32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x9c6
	.uleb128 0x2d
	.4byte	0x5e0
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	.LVL48
	.4byte	0xaf2
	.uleb128 0x30
	.4byte	.LVL49
	.4byte	0xafd
	.4byte	0x91a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.byte	0
	.uleb128 0x30
	.4byte	.LVL50
	.4byte	0xb13
	.4byte	0x92e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL54
	.4byte	0xaf2
	.uleb128 0x30
	.4byte	.LVL56
	.4byte	0xafd
	.4byte	0x975
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL58
	.4byte	0xb29
	.4byte	0x98e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x30
	.4byte	.LVL59
	.4byte	0xb13
	.4byte	0x9a2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL61
	.4byte	0xb08
	.4byte	0x9b6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL28
	.4byte	0xb3d
	.4byte	0x9f5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5989
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x27
	.4byte	.LVL29
	.4byte	0xb48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL64
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF125
	.byte	0x1
	.byte	0xea
	.4byte	0xa3b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3b
	.uleb128 0x25
	.4byte	.LVL65
	.4byte	0xb53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa41
	.uleb128 0x14
	.4byte	0x38d
	.uleb128 0x33
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x2b8
	.4byte	0xa59
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x14
	.4byte	0x180
	.uleb128 0x33
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x2b9
	.4byte	0xa71
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x180
	.uleb128 0x34
	.4byte	.LASF105
	.byte	0x1
	.byte	0xe1
	.4byte	0xa41
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x34
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2e
	.4byte	0xa98
	.uleb128 0x5
	.byte	0x3
	.4byte	controller
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa9e
	.uleb128 0x14
	.4byte	0x200
	.uleb128 0x34
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2f
	.4byte	0x556
	.uleb128 0x5
	.byte	0x3
	.4byte	callbacks
	.uleb128 0x34
	.4byte	.LASF108
	.byte	0x1
	.byte	0x30
	.4byte	0xac5
	.uleb128 0x5
	.byte	0x3
	.4byte	partial_packets
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0x34
	.4byte	.LASF109
	.byte	0x1
	.byte	0x31
	.4byte	0x3d6
	.uleb128 0x5
	.byte	0x3
	.4byte	current_fragment_packet
	.uleb128 0x35
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.byte	0x3f
	.uleb128 0x35
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.byte	0x36
	.uleb128 0x35
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xb
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x6
	.byte	0x61
	.uleb128 0x35
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xc
	.byte	0x5a
	.uleb128 0x35
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xc
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF126
	.4byte	.LASF126
	.uleb128 0x35
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x6
	.byte	0x5b
	.uleb128 0x35
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x29
	.uleb128 0x35
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x6
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x8
	.byte	0x59
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL4
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x3
	.byte	0x79
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0xe
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0xd
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x73
	.sleb128 11
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x73
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF97:
	.string	"continuation_handle"
.LASF16:
	.string	"uintptr_t"
.LASF50:
	.string	"supports_rssi_with_inquiry_results"
.LASF84:
	.string	"fragmented"
.LASF5:
	.string	"__uint8_t"
.LASF72:
	.string	"fragment_current_packet"
.LASF102:
	.string	"result_callbacks"
.LASF70:
	.string	"init"
.LASF89:
	.string	"stream"
.LASF8:
	.string	"long long unsigned int"
.LASF122:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/bt/bluedroid/hci/packet_fragmenter.c"
.LASF35:
	.string	"bt_device_features_t"
.LASF29:
	.string	"data"
.LASF60:
	.string	"get_acl_packet_size_ble"
.LASF68:
	.string	"controller_t"
.LASF73:
	.string	"fragment_and_dispatch"
.LASF52:
	.string	"supports_master_slave_role_switch"
.LASF115:
	.string	"free"
.LASF106:
	.string	"controller"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF65:
	.string	"get_ble_white_list_size"
.LASF98:
	.string	"max_data_size"
.LASF10:
	.string	"long int"
.LASF42:
	.string	"get_last_features_classic_index"
.LASF109:
	.string	"current_fragment_packet"
.LASF63:
	.string	"get_acl_buffer_count_classic"
.LASF113:
	.string	"esp_log_write"
.LASF126:
	.string	"memcpy"
.LASF15:
	.string	"uint16_t"
.LASF100:
	.string	"remaining_length"
.LASF40:
	.string	"get_bt_version"
.LASF69:
	.string	"packet_fragmenter_t"
.LASF24:
	.string	"UINT16"
.LASF32:
	.string	"bt_bdaddr_t"
.LASF66:
	.string	"get_ble_resolving_list_max_size"
.LASF124:
	.string	"fragment_get_current_packet"
.LASF110:
	.string	"hash_map_free"
.LASF36:
	.string	"start_up"
.LASF55:
	.string	"supports_ble_connection_parameters_request"
.LASF0:
	.string	"unsigned int"
.LASF61:
	.string	"get_ble_default_data_packet_length"
.LASF12:
	.string	"long unsigned int"
.LASF56:
	.string	"supports_ble_privacy"
.LASF121:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"supports_reading_remote_extended_features"
.LASF26:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"hash_map_t"
.LASF45:
	.string	"supports_simple_pairing"
.LASF49:
	.string	"supports_interlaced_inquiry_scan"
.LASF82:
	.string	"packet_reassembled_cb"
.LASF53:
	.string	"supports_ble"
.LASF107:
	.string	"callbacks"
.LASF41:
	.string	"get_features_classic"
.LASF105:
	.string	"interface"
.LASF43:
	.string	"get_features_ble"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF87:
	.string	"packet_fragmenter_callbacks_t"
.LASF76:
	.string	"hci_revision"
.LASF94:
	.string	"partial_packet"
.LASF93:
	.string	"boundary_flag"
.LASF108:
	.string	"partial_packets"
.LASF85:
	.string	"reassembled"
.LASF11:
	.string	"sizetype"
.LASF80:
	.string	"bt_version_t"
.LASF99:
	.string	"max_packet_size"
.LASF31:
	.string	"address"
.LASF96:
	.string	"projected_offset"
.LASF95:
	.string	"full_length"
.LASF75:
	.string	"hci_version"
.LASF51:
	.string	"supports_extended_inquiry_response"
.LASF91:
	.string	"l2cap_length"
.LASF79:
	.string	"lmp_subversion"
.LASF71:
	.string	"cleanup"
.LASF101:
	.string	"packet"
.LASF67:
	.string	"set_ble_resolving_list_max_size"
.LASF104:
	.string	"bd_addr_null"
.LASF77:
	.string	"lmp_version"
.LASF123:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/bt"
.LASF25:
	.string	"_Bool"
.LASF118:
	.string	"__assert_func"
.LASF111:
	.string	"hash_map_new"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"get_address"
.LASF112:
	.string	"esp_log_timestamp"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF9:
	.string	"__uintptr_t"
.LASF88:
	.string	"__func__"
.LASF78:
	.string	"manufacturer"
.LASF37:
	.string	"shut_down"
.LASF54:
	.string	"supports_ble_packet_extension"
.LASF117:
	.string	"hash_map_set"
.LASF46:
	.string	"supports_secure_connections"
.LASF47:
	.string	"supports_simultaneous_le_bredr"
.LASF13:
	.string	"char"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF120:
	.string	"controller_get_interface"
.LASF6:
	.string	"__uint16_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF74:
	.string	"reassemble_and_dispatch"
.LASF27:
	.string	"offset"
.LASF34:
	.string	"as_array"
.LASF125:
	.string	"packet_fragmenter_get_interface"
.LASF114:
	.string	"hash_map_erase"
.LASF3:
	.string	"unsigned char"
.LASF64:
	.string	"get_acl_buffer_count_ble"
.LASF28:
	.string	"layer_specific"
.LASF57:
	.string	"get_acl_data_size_classic"
.LASF44:
	.string	"get_ble_supported_states"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF116:
	.string	"calloc"
.LASF23:
	.string	"UINT8"
.LASF14:
	.string	"uint8_t"
.LASF103:
	.string	"bd_addr_any"
.LASF119:
	.string	"hash_map_get"
.LASF30:
	.string	"BT_HDR"
.LASF62:
	.string	"get_ble_default_data_packet_txtime"
.LASF83:
	.string	"packet_fragmented_cb"
.LASF90:
	.string	"handle"
.LASF81:
	.string	"transmit_finished_cb"
.LASF86:
	.string	"transmit_finished"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF38:
	.string	"get_is_ready"
.LASF92:
	.string	"acl_length"
.LASF59:
	.string	"get_acl_packet_size_classic"
.LASF58:
	.string	"get_acl_data_size_ble"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
