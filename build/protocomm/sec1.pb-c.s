	.file	"sec1.pb-c.c"
	.text
.Ltext0:
	.section	.text.session_cmd1__init,"ax",@progbits
	.literal_position
	.literal .LC0, session_cmd1__descriptor
	.align	4
	.global	session_cmd1__init
	.type	session_cmd1__init, @function
session_cmd1__init:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/proto-c/sec1.pb-c.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 14 0
	l32r	a8, .LC0
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	retw.n
.LFE0:
	.size	session_cmd1__init, .-session_cmd1__init
	.section	.text.session_resp1__init,"ax",@progbits
	.literal_position
	.literal .LC1, session_resp1__descriptor
	.align	4
	.global	session_resp1__init
	.type	session_resp1__init, @function
session_resp1__init:
.LFB6:
	.loc 1 57 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 59 0
	l32r	a8, .LC1
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	retw.n
.LFE6:
	.size	session_resp1__init, .-session_resp1__init
	.section	.text.session_cmd0__init,"ax",@progbits
	.literal_position
	.literal .LC2, session_cmd0__descriptor
	.align	4
	.global	session_cmd0__init
	.type	session_cmd0__init, @function
session_cmd0__init:
.LFB12:
	.loc 1 102 0
.LVL2:
	entry	sp, 32
.LCFI2:
	.loc 1 104 0
	l32r	a8, .LC2
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	retw.n
.LFE12:
	.size	session_cmd0__init, .-session_cmd0__init
	.section	.text.session_resp0__init,"ax",@progbits
	.literal_position
	.literal .LC3, session_resp0__descriptor
	.align	4
	.global	session_resp0__init
	.type	session_resp0__init, @function
session_resp0__init:
.LFB18:
	.loc 1 147 0
.LVL3:
	entry	sp, 32
.LCFI3:
	.loc 1 149 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL4:
	l32r	a8, .LC3
	s32i.n	a8, a2, 0
	retw.n
.LFE18:
	.size	session_resp0__init, .-session_resp0__init
	.section	.text.sec1_payload__init,"ax",@progbits
	.literal_position
	.literal .LC4, sec1_payload__descriptor
	.align	4
	.global	sec1_payload__init
	.type	sec1_payload__init, @function
sec1_payload__init:
.LFB24:
	.loc 1 192 0
.LVL5:
	entry	sp, 32
.LCFI4:
	.loc 1 194 0
	l32r	a8, .LC4
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	retw.n
.LFE24:
	.size	sec1_payload__init, .-sec1_payload__init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"message->base.descriptor == &session_cmd1__descriptor"
.LC9:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/proto-c/sec1.pb-c.c"
	.section	.text.session_cmd1__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC5, session_cmd1__descriptor
	.literal .LC7, .LC6
	.literal .LC8, __func__$2510
	.literal .LC10, .LC9
	.align	4
	.global	session_cmd1__get_packed_size
	.type	session_cmd1__get_packed_size, @function
session_cmd1__get_packed_size:
.LFB1:
	.loc 1 18 0
.LVL6:
	entry	sp, 32
.LCFI5:
	.loc 1 19 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC5
	.loc 1 18 0
	mov.n	a10, a2
	.loc 1 19 0
	beq	a9, a8, .L7
	.loc 1 19 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	l32r	a10, .LC10
	movi.n	a11, 0x13
	call8	__assert_func
.LVL7:
.L7:
	.loc 1 20 0 is_stmt 1
	call8	protobuf_c_message_get_packed_size
.LVL8:
	.loc 1 21 0
	mov.n	a2, a10
.LVL9:
	retw.n
.LFE1:
	.size	session_cmd1__get_packed_size, .-session_cmd1__get_packed_size
	.section	.text.session_cmd1__pack,"ax",@progbits
	.literal_position
	.literal .LC11, session_cmd1__descriptor
	.literal .LC12, .LC6
	.literal .LC13, __func__$2515
	.literal .LC14, .LC9
	.align	4
	.global	session_cmd1__pack
	.type	session_cmd1__pack, @function
session_cmd1__pack:
.LFB2:
	.loc 1 25 0
.LVL10:
	entry	sp, 32
.LCFI6:
	.loc 1 26 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC11
	.loc 1 25 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 26 0
	beq	a9, a8, .L9
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	l32r	a10, .LC14
	movi.n	a11, 0x1a
	call8	__assert_func
.LVL11:
.L9:
	.loc 1 27 0 is_stmt 1
	call8	protobuf_c_message_pack
.LVL12:
	.loc 1 28 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE2:
	.size	session_cmd1__pack, .-session_cmd1__pack
	.section	.text.session_cmd1__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC15, session_cmd1__descriptor
	.literal .LC16, .LC6
	.literal .LC17, __func__$2520
	.literal .LC18, .LC9
	.align	4
	.global	session_cmd1__pack_to_buffer
	.type	session_cmd1__pack_to_buffer, @function
session_cmd1__pack_to_buffer:
.LFB3:
	.loc 1 32 0
.LVL14:
	entry	sp, 32
.LCFI7:
	.loc 1 33 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC15
	.loc 1 32 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 33 0
	beq	a9, a8, .L11
	.loc 1 33 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32r	a10, .LC18
	movi.n	a11, 0x21
	call8	__assert_func
.LVL15:
.L11:
	.loc 1 34 0 is_stmt 1
	call8	protobuf_c_message_pack_to_buffer
.LVL16:
	.loc 1 35 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE3:
	.size	session_cmd1__pack_to_buffer, .-session_cmd1__pack_to_buffer
	.section	.text.session_cmd1__unpack,"ax",@progbits
	.literal_position
	.literal .LC19, session_cmd1__descriptor
	.align	4
	.global	session_cmd1__unpack
	.type	session_cmd1__unpack, @function
session_cmd1__unpack:
.LFB4:
	.loc 1 41 0
.LVL18:
	entry	sp, 32
.LCFI8:
	.loc 1 42 0
	l32r	a10, .LC19
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	protobuf_c_message_unpack
.LVL19:
	.loc 1 45 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE4:
	.size	session_cmd1__unpack, .-session_cmd1__unpack
	.section	.text.session_cmd1__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC20, session_cmd1__descriptor
	.literal .LC21, .LC6
	.literal .LC22, __func__$2530
	.literal .LC23, .LC9
	.align	4
	.global	session_cmd1__free_unpacked
	.type	session_cmd1__free_unpacked, @function
session_cmd1__free_unpacked:
.LFB5:
	.loc 1 49 0
.LVL21:
	entry	sp, 32
.LCFI9:
	.loc 1 49 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 50 0
	beqz.n	a2, .L13
	.loc 1 52 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC20
	beq	a9, a8, .L15
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	l32r	a10, .LC23
	movi.n	a11, 0x34
	call8	__assert_func
.LVL22:
.L15:
	.loc 1 53 0 is_stmt 1
	call8	protobuf_c_message_free_unpacked
.LVL23:
.L13:
	retw.n
.LFE5:
	.size	session_cmd1__free_unpacked, .-session_cmd1__free_unpacked
	.section	.rodata.str1.1
.LC25:
	.string	"message->base.descriptor == &session_resp1__descriptor"
	.section	.text.session_resp1__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC24, session_resp1__descriptor
	.literal .LC26, .LC25
	.literal .LC27, __func__$2538
	.literal .LC28, .LC9
	.align	4
	.global	session_resp1__get_packed_size
	.type	session_resp1__get_packed_size, @function
session_resp1__get_packed_size:
.LFB7:
	.loc 1 63 0
.LVL24:
	entry	sp, 32
.LCFI10:
	.loc 1 64 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC24
	.loc 1 63 0
	mov.n	a10, a2
	.loc 1 64 0
	beq	a9, a8, .L20
	.loc 1 64 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	l32r	a10, .LC28
	movi.n	a11, 0x40
	call8	__assert_func
.LVL25:
.L20:
	.loc 1 65 0 is_stmt 1
	call8	protobuf_c_message_get_packed_size
.LVL26:
	.loc 1 66 0
	mov.n	a2, a10
.LVL27:
	retw.n
.LFE7:
	.size	session_resp1__get_packed_size, .-session_resp1__get_packed_size
	.section	.text.session_resp1__pack,"ax",@progbits
	.literal_position
	.literal .LC29, session_resp1__descriptor
	.literal .LC30, .LC25
	.literal .LC31, __func__$2543
	.literal .LC32, .LC9
	.align	4
	.global	session_resp1__pack
	.type	session_resp1__pack, @function
session_resp1__pack:
.LFB8:
	.loc 1 70 0
.LVL28:
	entry	sp, 32
.LCFI11:
	.loc 1 71 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC29
	.loc 1 70 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 71 0
	beq	a9, a8, .L22
	.loc 1 71 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	l32r	a10, .LC32
	movi.n	a11, 0x47
	call8	__assert_func
.LVL29:
.L22:
	.loc 1 72 0 is_stmt 1
	call8	protobuf_c_message_pack
.LVL30:
	.loc 1 73 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LFE8:
	.size	session_resp1__pack, .-session_resp1__pack
	.section	.text.session_resp1__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC33, session_resp1__descriptor
	.literal .LC34, .LC25
	.literal .LC35, __func__$2548
	.literal .LC36, .LC9
	.align	4
	.global	session_resp1__pack_to_buffer
	.type	session_resp1__pack_to_buffer, @function
session_resp1__pack_to_buffer:
.LFB9:
	.loc 1 77 0
.LVL32:
	entry	sp, 32
.LCFI12:
	.loc 1 78 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC33
	.loc 1 77 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 78 0
	beq	a9, a8, .L24
	.loc 1 78 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	l32r	a10, .LC36
	movi.n	a11, 0x4e
	call8	__assert_func
.LVL33:
.L24:
	.loc 1 79 0 is_stmt 1
	call8	protobuf_c_message_pack_to_buffer
.LVL34:
	.loc 1 80 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LFE9:
	.size	session_resp1__pack_to_buffer, .-session_resp1__pack_to_buffer
	.section	.text.session_resp1__unpack,"ax",@progbits
	.literal_position
	.literal .LC37, session_resp1__descriptor
	.align	4
	.global	session_resp1__unpack
	.type	session_resp1__unpack, @function
session_resp1__unpack:
.LFB10:
	.loc 1 86 0
.LVL36:
	entry	sp, 32
.LCFI13:
	.loc 1 87 0
	l32r	a10, .LC37
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	protobuf_c_message_unpack
.LVL37:
	.loc 1 90 0
	mov.n	a2, a10
.LVL38:
	retw.n
.LFE10:
	.size	session_resp1__unpack, .-session_resp1__unpack
	.section	.text.session_resp1__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC38, session_resp1__descriptor
	.literal .LC39, .LC25
	.literal .LC40, __func__$2558
	.literal .LC41, .LC9
	.align	4
	.global	session_resp1__free_unpacked
	.type	session_resp1__free_unpacked, @function
session_resp1__free_unpacked:
.LFB11:
	.loc 1 94 0
.LVL39:
	entry	sp, 32
.LCFI14:
	.loc 1 94 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 95 0
	beqz.n	a2, .L26
	.loc 1 97 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC38
	beq	a9, a8, .L28
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	l32r	a10, .LC41
	movi	a11, 0x61
	call8	__assert_func
.LVL40:
.L28:
	.loc 1 98 0 is_stmt 1
	call8	protobuf_c_message_free_unpacked
.LVL41:
.L26:
	retw.n
.LFE11:
	.size	session_resp1__free_unpacked, .-session_resp1__free_unpacked
	.section	.rodata.str1.1
.LC43:
	.string	"message->base.descriptor == &session_cmd0__descriptor"
	.section	.text.session_cmd0__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC42, session_cmd0__descriptor
	.literal .LC44, .LC43
	.literal .LC45, __func__$2566
	.literal .LC46, .LC9
	.align	4
	.global	session_cmd0__get_packed_size
	.type	session_cmd0__get_packed_size, @function
session_cmd0__get_packed_size:
.LFB13:
	.loc 1 108 0
.LVL42:
	entry	sp, 32
.LCFI15:
	.loc 1 109 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC42
	.loc 1 108 0
	mov.n	a10, a2
	.loc 1 109 0
	beq	a9, a8, .L33
	.loc 1 109 0 is_stmt 0 discriminator 1
	l32r	a13, .LC44
	l32r	a12, .LC45
	l32r	a10, .LC46
	movi	a11, 0x6d
	call8	__assert_func
.LVL43:
.L33:
	.loc 1 110 0 is_stmt 1
	call8	protobuf_c_message_get_packed_size
.LVL44:
	.loc 1 111 0
	mov.n	a2, a10
.LVL45:
	retw.n
.LFE13:
	.size	session_cmd0__get_packed_size, .-session_cmd0__get_packed_size
	.section	.text.session_cmd0__pack,"ax",@progbits
	.literal_position
	.literal .LC47, session_cmd0__descriptor
	.literal .LC48, .LC43
	.literal .LC49, __func__$2571
	.literal .LC50, .LC9
	.align	4
	.global	session_cmd0__pack
	.type	session_cmd0__pack, @function
session_cmd0__pack:
.LFB14:
	.loc 1 115 0
.LVL46:
	entry	sp, 32
.LCFI16:
	.loc 1 116 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC47
	.loc 1 115 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 116 0
	beq	a9, a8, .L35
	.loc 1 116 0 is_stmt 0 discriminator 1
	l32r	a13, .LC48
	l32r	a12, .LC49
	l32r	a10, .LC50
	movi	a11, 0x74
	call8	__assert_func
.LVL47:
.L35:
	.loc 1 117 0 is_stmt 1
	call8	protobuf_c_message_pack
.LVL48:
	.loc 1 118 0
	mov.n	a2, a10
.LVL49:
	retw.n
.LFE14:
	.size	session_cmd0__pack, .-session_cmd0__pack
	.section	.text.session_cmd0__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC51, session_cmd0__descriptor
	.literal .LC52, .LC43
	.literal .LC53, __func__$2576
	.literal .LC54, .LC9
	.align	4
	.global	session_cmd0__pack_to_buffer
	.type	session_cmd0__pack_to_buffer, @function
session_cmd0__pack_to_buffer:
.LFB15:
	.loc 1 122 0
.LVL50:
	entry	sp, 32
.LCFI17:
	.loc 1 123 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC51
	.loc 1 122 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 123 0
	beq	a9, a8, .L37
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC53
	l32r	a10, .LC54
	movi	a11, 0x7b
	call8	__assert_func
.LVL51:
.L37:
	.loc 1 124 0 is_stmt 1
	call8	protobuf_c_message_pack_to_buffer
.LVL52:
	.loc 1 125 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE15:
	.size	session_cmd0__pack_to_buffer, .-session_cmd0__pack_to_buffer
	.section	.text.session_cmd0__unpack,"ax",@progbits
	.literal_position
	.literal .LC55, session_cmd0__descriptor
	.align	4
	.global	session_cmd0__unpack
	.type	session_cmd0__unpack, @function
session_cmd0__unpack:
.LFB16:
	.loc 1 131 0
.LVL54:
	entry	sp, 32
.LCFI18:
	.loc 1 132 0
	l32r	a10, .LC55
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	protobuf_c_message_unpack
.LVL55:
	.loc 1 135 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE16:
	.size	session_cmd0__unpack, .-session_cmd0__unpack
	.section	.text.session_cmd0__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC56, session_cmd0__descriptor
	.literal .LC57, .LC43
	.literal .LC58, __func__$2586
	.literal .LC59, .LC9
	.align	4
	.global	session_cmd0__free_unpacked
	.type	session_cmd0__free_unpacked, @function
session_cmd0__free_unpacked:
.LFB17:
	.loc 1 139 0
.LVL57:
	entry	sp, 32
.LCFI19:
	.loc 1 139 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 140 0
	beqz.n	a2, .L39
	.loc 1 142 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC56
	beq	a9, a8, .L41
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	l32r	a12, .LC58
	l32r	a10, .LC59
	movi	a11, 0x8e
	call8	__assert_func
.LVL58:
.L41:
	.loc 1 143 0 is_stmt 1
	call8	protobuf_c_message_free_unpacked
.LVL59:
.L39:
	retw.n
.LFE17:
	.size	session_cmd0__free_unpacked, .-session_cmd0__free_unpacked
	.section	.rodata.str1.1
.LC61:
	.string	"message->base.descriptor == &session_resp0__descriptor"
	.section	.text.session_resp0__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC60, session_resp0__descriptor
	.literal .LC62, .LC61
	.literal .LC63, __func__$2594
	.literal .LC64, .LC9
	.align	4
	.global	session_resp0__get_packed_size
	.type	session_resp0__get_packed_size, @function
session_resp0__get_packed_size:
.LFB19:
	.loc 1 153 0
.LVL60:
	entry	sp, 32
.LCFI20:
	.loc 1 154 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC60
	.loc 1 153 0
	mov.n	a10, a2
	.loc 1 154 0
	beq	a9, a8, .L46
	.loc 1 154 0 is_stmt 0 discriminator 1
	l32r	a13, .LC62
	l32r	a12, .LC63
	l32r	a10, .LC64
	movi	a11, 0x9a
	call8	__assert_func
.LVL61:
.L46:
	.loc 1 155 0 is_stmt 1
	call8	protobuf_c_message_get_packed_size
.LVL62:
	.loc 1 156 0
	mov.n	a2, a10
.LVL63:
	retw.n
.LFE19:
	.size	session_resp0__get_packed_size, .-session_resp0__get_packed_size
	.section	.text.session_resp0__pack,"ax",@progbits
	.literal_position
	.literal .LC65, session_resp0__descriptor
	.literal .LC66, .LC61
	.literal .LC67, __func__$2599
	.literal .LC68, .LC9
	.align	4
	.global	session_resp0__pack
	.type	session_resp0__pack, @function
session_resp0__pack:
.LFB20:
	.loc 1 160 0
.LVL64:
	entry	sp, 32
.LCFI21:
	.loc 1 161 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC65
	.loc 1 160 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 161 0
	beq	a9, a8, .L48
	.loc 1 161 0 is_stmt 0 discriminator 1
	l32r	a13, .LC66
	l32r	a12, .LC67
	l32r	a10, .LC68
	movi	a11, 0xa1
	call8	__assert_func
.LVL65:
.L48:
	.loc 1 162 0 is_stmt 1
	call8	protobuf_c_message_pack
.LVL66:
	.loc 1 163 0
	mov.n	a2, a10
.LVL67:
	retw.n
.LFE20:
	.size	session_resp0__pack, .-session_resp0__pack
	.section	.text.session_resp0__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC69, session_resp0__descriptor
	.literal .LC70, .LC61
	.literal .LC71, __func__$2604
	.literal .LC72, .LC9
	.align	4
	.global	session_resp0__pack_to_buffer
	.type	session_resp0__pack_to_buffer, @function
session_resp0__pack_to_buffer:
.LFB21:
	.loc 1 167 0
.LVL68:
	entry	sp, 32
.LCFI22:
	.loc 1 168 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC69
	.loc 1 167 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 168 0
	beq	a9, a8, .L50
	.loc 1 168 0 is_stmt 0 discriminator 1
	l32r	a13, .LC70
	l32r	a12, .LC71
	l32r	a10, .LC72
	movi	a11, 0xa8
	call8	__assert_func
.LVL69:
.L50:
	.loc 1 169 0 is_stmt 1
	call8	protobuf_c_message_pack_to_buffer
.LVL70:
	.loc 1 170 0
	mov.n	a2, a10
.LVL71:
	retw.n
.LFE21:
	.size	session_resp0__pack_to_buffer, .-session_resp0__pack_to_buffer
	.section	.text.session_resp0__unpack,"ax",@progbits
	.literal_position
	.literal .LC73, session_resp0__descriptor
	.align	4
	.global	session_resp0__unpack
	.type	session_resp0__unpack, @function
session_resp0__unpack:
.LFB22:
	.loc 1 176 0
.LVL72:
	entry	sp, 32
.LCFI23:
	.loc 1 177 0
	l32r	a10, .LC73
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	protobuf_c_message_unpack
.LVL73:
	.loc 1 180 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE22:
	.size	session_resp0__unpack, .-session_resp0__unpack
	.section	.text.session_resp0__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC74, session_resp0__descriptor
	.literal .LC75, .LC61
	.literal .LC76, __func__$2614
	.literal .LC77, .LC9
	.align	4
	.global	session_resp0__free_unpacked
	.type	session_resp0__free_unpacked, @function
session_resp0__free_unpacked:
.LFB23:
	.loc 1 184 0
.LVL75:
	entry	sp, 32
.LCFI24:
	.loc 1 184 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 185 0
	beqz.n	a2, .L52
	.loc 1 187 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC74
	beq	a9, a8, .L54
	.loc 1 187 0 is_stmt 0 discriminator 1
	l32r	a13, .LC75
	l32r	a12, .LC76
	l32r	a10, .LC77
	movi	a11, 0xbb
	call8	__assert_func
.LVL76:
.L54:
	.loc 1 188 0 is_stmt 1
	call8	protobuf_c_message_free_unpacked
.LVL77:
.L52:
	retw.n
.LFE23:
	.size	session_resp0__free_unpacked, .-session_resp0__free_unpacked
	.section	.rodata.str1.1
.LC79:
	.string	"message->base.descriptor == &sec1_payload__descriptor"
	.section	.text.sec1_payload__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC78, sec1_payload__descriptor
	.literal .LC80, .LC79
	.literal .LC81, __func__$2622
	.literal .LC82, .LC9
	.align	4
	.global	sec1_payload__get_packed_size
	.type	sec1_payload__get_packed_size, @function
sec1_payload__get_packed_size:
.LFB25:
	.loc 1 198 0
.LVL78:
	entry	sp, 32
.LCFI25:
	.loc 1 199 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC78
	.loc 1 198 0
	mov.n	a10, a2
	.loc 1 199 0
	beq	a9, a8, .L59
	.loc 1 199 0 is_stmt 0 discriminator 1
	l32r	a13, .LC80
	l32r	a12, .LC81
	l32r	a10, .LC82
	movi	a11, 0xc7
	call8	__assert_func
.LVL79:
.L59:
	.loc 1 200 0 is_stmt 1
	call8	protobuf_c_message_get_packed_size
.LVL80:
	.loc 1 201 0
	mov.n	a2, a10
.LVL81:
	retw.n
.LFE25:
	.size	sec1_payload__get_packed_size, .-sec1_payload__get_packed_size
	.section	.text.sec1_payload__pack,"ax",@progbits
	.literal_position
	.literal .LC83, sec1_payload__descriptor
	.literal .LC84, .LC79
	.literal .LC85, __func__$2627
	.literal .LC86, .LC9
	.align	4
	.global	sec1_payload__pack
	.type	sec1_payload__pack, @function
sec1_payload__pack:
.LFB26:
	.loc 1 205 0
.LVL82:
	entry	sp, 32
.LCFI26:
	.loc 1 206 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC83
	.loc 1 205 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 206 0
	beq	a9, a8, .L61
	.loc 1 206 0 is_stmt 0 discriminator 1
	l32r	a13, .LC84
	l32r	a12, .LC85
	l32r	a10, .LC86
	movi	a11, 0xce
	call8	__assert_func
.LVL83:
.L61:
	.loc 1 207 0 is_stmt 1
	call8	protobuf_c_message_pack
.LVL84:
	.loc 1 208 0
	mov.n	a2, a10
.LVL85:
	retw.n
.LFE26:
	.size	sec1_payload__pack, .-sec1_payload__pack
	.section	.text.sec1_payload__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC87, sec1_payload__descriptor
	.literal .LC88, .LC79
	.literal .LC89, __func__$2632
	.literal .LC90, .LC9
	.align	4
	.global	sec1_payload__pack_to_buffer
	.type	sec1_payload__pack_to_buffer, @function
sec1_payload__pack_to_buffer:
.LFB27:
	.loc 1 212 0
.LVL86:
	entry	sp, 32
.LCFI27:
	.loc 1 213 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC87
	.loc 1 212 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 213 0
	beq	a9, a8, .L63
	.loc 1 213 0 is_stmt 0 discriminator 1
	l32r	a13, .LC88
	l32r	a12, .LC89
	l32r	a10, .LC90
	movi	a11, 0xd5
	call8	__assert_func
.LVL87:
.L63:
	.loc 1 214 0 is_stmt 1
	call8	protobuf_c_message_pack_to_buffer
.LVL88:
	.loc 1 215 0
	mov.n	a2, a10
.LVL89:
	retw.n
.LFE27:
	.size	sec1_payload__pack_to_buffer, .-sec1_payload__pack_to_buffer
	.section	.text.sec1_payload__unpack,"ax",@progbits
	.literal_position
	.literal .LC91, sec1_payload__descriptor
	.align	4
	.global	sec1_payload__unpack
	.type	sec1_payload__unpack, @function
sec1_payload__unpack:
.LFB28:
	.loc 1 221 0
.LVL90:
	entry	sp, 32
.LCFI28:
	.loc 1 222 0
	l32r	a10, .LC91
	mov.n	a11, a2
	mov.n	a13, a4
	mov.n	a12, a3
	call8	protobuf_c_message_unpack
.LVL91:
	.loc 1 225 0
	mov.n	a2, a10
.LVL92:
	retw.n
.LFE28:
	.size	sec1_payload__unpack, .-sec1_payload__unpack
	.section	.text.sec1_payload__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC92, sec1_payload__descriptor
	.literal .LC93, .LC79
	.literal .LC94, __func__$2642
	.literal .LC95, .LC9
	.align	4
	.global	sec1_payload__free_unpacked
	.type	sec1_payload__free_unpacked, @function
sec1_payload__free_unpacked:
.LFB29:
	.loc 1 229 0
.LVL93:
	entry	sp, 32
.LCFI29:
	.loc 1 229 0
	mov.n	a10, a2
	mov.n	a11, a3
	.loc 1 230 0
	beqz.n	a2, .L65
	.loc 1 232 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC92
	beq	a9, a8, .L67
	.loc 1 232 0 is_stmt 0 discriminator 1
	l32r	a13, .LC93
	l32r	a12, .LC94
	l32r	a10, .LC95
	movi	a11, 0xe8
	call8	__assert_func
.LVL94:
.L67:
	.loc 1 233 0 is_stmt 1
	call8	protobuf_c_message_free_unpacked
.LVL95:
.L65:
	retw.n
.LFE29:
	.size	sec1_payload__free_unpacked, .-sec1_payload__free_unpacked
	.section	.rodata.__func__$2642,"a",@progbits
	.type	__func__$2642, @object
	.size	__func__$2642, 28
__func__$2642:
	.string	"sec1_payload__free_unpacked"
	.section	.rodata.__func__$2632,"a",@progbits
	.type	__func__$2632, @object
	.size	__func__$2632, 29
__func__$2632:
	.string	"sec1_payload__pack_to_buffer"
	.section	.rodata.__func__$2627,"a",@progbits
	.type	__func__$2627, @object
	.size	__func__$2627, 19
__func__$2627:
	.string	"sec1_payload__pack"
	.section	.rodata.__func__$2622,"a",@progbits
	.type	__func__$2622, @object
	.size	__func__$2622, 30
__func__$2622:
	.string	"sec1_payload__get_packed_size"
	.section	.rodata.__func__$2614,"a",@progbits
	.type	__func__$2614, @object
	.size	__func__$2614, 29
__func__$2614:
	.string	"session_resp0__free_unpacked"
	.section	.rodata.__func__$2604,"a",@progbits
	.type	__func__$2604, @object
	.size	__func__$2604, 30
__func__$2604:
	.string	"session_resp0__pack_to_buffer"
	.section	.rodata.__func__$2599,"a",@progbits
	.type	__func__$2599, @object
	.size	__func__$2599, 20
__func__$2599:
	.string	"session_resp0__pack"
	.section	.rodata.__func__$2594,"a",@progbits
	.type	__func__$2594, @object
	.size	__func__$2594, 31
__func__$2594:
	.string	"session_resp0__get_packed_size"
	.section	.rodata.__func__$2586,"a",@progbits
	.type	__func__$2586, @object
	.size	__func__$2586, 28
__func__$2586:
	.string	"session_cmd0__free_unpacked"
	.section	.rodata.__func__$2576,"a",@progbits
	.type	__func__$2576, @object
	.size	__func__$2576, 29
__func__$2576:
	.string	"session_cmd0__pack_to_buffer"
	.section	.rodata.__func__$2571,"a",@progbits
	.type	__func__$2571, @object
	.size	__func__$2571, 19
__func__$2571:
	.string	"session_cmd0__pack"
	.section	.rodata.__func__$2566,"a",@progbits
	.type	__func__$2566, @object
	.size	__func__$2566, 30
__func__$2566:
	.string	"session_cmd0__get_packed_size"
	.section	.rodata.__func__$2558,"a",@progbits
	.type	__func__$2558, @object
	.size	__func__$2558, 29
__func__$2558:
	.string	"session_resp1__free_unpacked"
	.section	.rodata.__func__$2548,"a",@progbits
	.type	__func__$2548, @object
	.size	__func__$2548, 30
__func__$2548:
	.string	"session_resp1__pack_to_buffer"
	.section	.rodata.__func__$2543,"a",@progbits
	.type	__func__$2543, @object
	.size	__func__$2543, 20
__func__$2543:
	.string	"session_resp1__pack"
	.section	.rodata.__func__$2538,"a",@progbits
	.type	__func__$2538, @object
	.size	__func__$2538, 31
__func__$2538:
	.string	"session_resp1__get_packed_size"
	.section	.rodata.__func__$2530,"a",@progbits
	.type	__func__$2530, @object
	.size	__func__$2530, 28
__func__$2530:
	.string	"session_cmd1__free_unpacked"
	.section	.rodata.__func__$2520,"a",@progbits
	.type	__func__$2520, @object
	.size	__func__$2520, 29
__func__$2520:
	.string	"session_cmd1__pack_to_buffer"
	.section	.rodata.__func__$2515,"a",@progbits
	.type	__func__$2515, @object
	.size	__func__$2515, 19
__func__$2515:
	.string	"session_cmd1__pack"
	.section	.rodata.__func__$2510,"a",@progbits
	.type	__func__$2510, @object
	.size	__func__$2510, 30
__func__$2510:
	.string	"session_cmd1__get_packed_size"
	.global	sec1_msg_type__descriptor
	.section	.rodata.str1.1
.LC96:
	.string	"Sec1MsgType"
.LC97:
	.string	""
	.section	.rodata.sec1_msg_type__descriptor,"a",@progbits
	.align	4
	.type	sec1_msg_type__descriptor, @object
	.size	sec1_msg_type__descriptor, 60
sec1_msg_type__descriptor:
	.word	289609135
	.word	.LC96
	.word	.LC96
	.word	.LC96
	.word	.LC97
	.word	4
	.word	sec1_msg_type__enum_values_by_number
	.word	4
	.word	sec1_msg_type__enum_values_by_name
	.word	1
	.word	sec1_msg_type__value_ranges
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.1
.LC98:
	.string	"Session_Command0"
.LC99:
	.string	"Session_Command1"
.LC100:
	.string	"Session_Response0"
.LC101:
	.string	"Session_Response1"
	.section	.rodata.sec1_msg_type__enum_values_by_name,"a",@progbits
	.align	4
	.type	sec1_msg_type__enum_values_by_name, @object
	.size	sec1_msg_type__enum_values_by_name, 32
sec1_msg_type__enum_values_by_name:
	.word	.LC98
	.word	0
	.word	.LC99
	.word	2
	.word	.LC100
	.word	1
	.word	.LC101
	.word	3
	.section	.rodata.sec1_msg_type__value_ranges,"a",@progbits
	.align	4
	.type	sec1_msg_type__value_ranges, @object
	.size	sec1_msg_type__value_ranges, 16
sec1_msg_type__value_ranges:
	.word	0
	.word	0
	.word	0
	.word	4
	.section	.rodata.str1.1
.LC102:
	.string	"SEC1_MSG_TYPE__Session_Command0"
.LC103:
	.string	"SEC1_MSG_TYPE__Session_Response0"
.LC104:
	.string	"SEC1_MSG_TYPE__Session_Command1"
.LC105:
	.string	"SEC1_MSG_TYPE__Session_Response1"
	.section	.rodata.sec1_msg_type__enum_values_by_number,"a",@progbits
	.align	4
	.type	sec1_msg_type__enum_values_by_number, @object
	.size	sec1_msg_type__enum_values_by_number, 48
sec1_msg_type__enum_values_by_number:
	.word	.LC98
	.word	.LC102
	.word	0
	.word	.LC100
	.word	.LC103
	.word	1
	.word	.LC99
	.word	.LC104
	.word	2
	.word	.LC101
	.word	.LC105
	.word	3
	.global	sec1_payload__descriptor
	.section	.rodata.str1.1
.LC106:
	.string	"Sec1Payload"
	.section	.rodata.sec1_payload__descriptor,"a",@progbits
	.align	4
	.type	sec1_payload__descriptor, @object
	.size	sec1_payload__descriptor, 60
sec1_payload__descriptor:
	.word	682290937
	.word	.LC106
	.word	.LC106
	.word	.LC106
	.word	.LC97
	.word	24
	.word	5
	.word	sec1_payload__field_descriptors
	.word	sec1_payload__field_indices_by_name
	.word	2
	.word	sec1_payload__number_ranges
	.word	sec1_payload__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.sec1_payload__number_ranges,"a",@progbits
	.align	4
	.type	sec1_payload__number_ranges, @object
	.size	sec1_payload__number_ranges, 24
sec1_payload__number_ranges:
	.word	1
	.word	0
	.word	20
	.word	1
	.word	0
	.word	5
	.section	.rodata.sec1_payload__field_indices_by_name,"a",@progbits
	.align	4
	.type	sec1_payload__field_indices_by_name, @object
	.size	sec1_payload__field_indices_by_name, 20
sec1_payload__field_indices_by_name:
	.word	0
	.word	1
	.word	3
	.word	2
	.word	4
	.section	.rodata.str1.1
.LC107:
	.string	"msg"
.LC108:
	.string	"sc0"
.LC109:
	.string	"sr0"
.LC110:
	.string	"sc1"
.LC111:
	.string	"sr1"
	.section	.rodata.sec1_payload__field_descriptors,"a",@progbits
	.align	4
	.type	sec1_payload__field_descriptors, @object
	.size	sec1_payload__field_descriptors, 240
sec1_payload__field_descriptors:
	.word	.LC107
	.word	1
	.word	3
	.word	13
	.word	0
	.word	12
	.word	sec1_msg_type__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC108
	.word	20
	.word	3
	.word	16
	.word	16
	.word	20
	.word	session_cmd0__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	.LC109
	.word	21
	.word	3
	.word	16
	.word	16
	.word	20
	.word	session_resp0__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	.LC110
	.word	22
	.word	3
	.word	16
	.word	16
	.word	20
	.word	session_cmd1__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	.LC111
	.word	23
	.word	3
	.word	16
	.word	16
	.word	20
	.word	session_resp1__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.global	session_resp0__descriptor
	.section	.rodata.str1.1
.LC112:
	.string	"SessionResp0"
	.section	.rodata.session_resp0__descriptor,"a",@progbits
	.align	4
	.type	session_resp0__descriptor, @object
	.size	session_resp0__descriptor, 60
session_resp0__descriptor:
	.word	682290937
	.word	.LC112
	.word	.LC112
	.word	.LC112
	.word	.LC97
	.word	32
	.word	3
	.word	session_resp0__field_descriptors
	.word	session_resp0__field_indices_by_name
	.word	1
	.word	session_resp0__number_ranges
	.word	session_resp0__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.session_resp0__number_ranges,"a",@progbits
	.align	4
	.type	session_resp0__number_ranges, @object
	.size	session_resp0__number_ranges, 16
session_resp0__number_ranges:
	.word	1
	.word	0
	.word	0
	.word	3
	.section	.rodata.session_resp0__field_indices_by_name,"a",@progbits
	.align	4
	.type	session_resp0__field_indices_by_name, @object
	.size	session_resp0__field_indices_by_name, 12
session_resp0__field_indices_by_name:
	.word	1
	.word	2
	.word	0
	.section	.rodata.str1.1
.LC113:
	.string	"status"
.LC114:
	.string	"device_pubkey"
.LC115:
	.string	"device_random"
	.section	.rodata.session_resp0__field_descriptors,"a",@progbits
	.align	4
	.type	session_resp0__field_descriptors, @object
	.size	session_resp0__field_descriptors, 144
session_resp0__field_descriptors:
	.word	.LC113
	.word	1
	.word	3
	.word	13
	.word	0
	.word	12
	.word	status__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC114
	.word	2
	.word	3
	.word	15
	.word	0
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC115
	.word	3
	.word	3
	.word	15
	.word	0
	.word	24
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	session_cmd0__descriptor
	.section	.rodata.str1.1
.LC116:
	.string	"SessionCmd0"
	.section	.rodata.session_cmd0__descriptor,"a",@progbits
	.align	4
	.type	session_cmd0__descriptor, @object
	.size	session_cmd0__descriptor, 60
session_cmd0__descriptor:
	.word	682290937
	.word	.LC116
	.word	.LC116
	.word	.LC116
	.word	.LC97
	.word	20
	.word	1
	.word	session_cmd0__field_descriptors
	.word	session_cmd0__field_indices_by_name
	.word	1
	.word	session_cmd0__number_ranges
	.word	session_cmd0__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.session_cmd0__number_ranges,"a",@progbits
	.align	4
	.type	session_cmd0__number_ranges, @object
	.size	session_cmd0__number_ranges, 16
session_cmd0__number_ranges:
	.word	1
	.word	0
	.word	0
	.word	1
	.section	.rodata.session_cmd0__field_indices_by_name,"a",@progbits
	.align	4
	.type	session_cmd0__field_indices_by_name, @object
	.size	session_cmd0__field_indices_by_name, 4
session_cmd0__field_indices_by_name:
	.zero	4
	.section	.rodata.str1.1
.LC117:
	.string	"client_pubkey"
	.section	.rodata.session_cmd0__field_descriptors,"a",@progbits
	.align	4
	.type	session_cmd0__field_descriptors, @object
	.size	session_cmd0__field_descriptors, 48
session_cmd0__field_descriptors:
	.word	.LC117
	.word	1
	.word	3
	.word	15
	.word	0
	.word	12
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	session_resp1__descriptor
	.section	.rodata.str1.1
.LC118:
	.string	"SessionResp1"
	.section	.rodata.session_resp1__descriptor,"a",@progbits
	.align	4
	.type	session_resp1__descriptor, @object
	.size	session_resp1__descriptor, 60
session_resp1__descriptor:
	.word	682290937
	.word	.LC118
	.word	.LC118
	.word	.LC118
	.word	.LC97
	.word	24
	.word	2
	.word	session_resp1__field_descriptors
	.word	session_resp1__field_indices_by_name
	.word	2
	.word	session_resp1__number_ranges
	.word	session_resp1__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.session_resp1__number_ranges,"a",@progbits
	.align	4
	.type	session_resp1__number_ranges, @object
	.size	session_resp1__number_ranges, 24
session_resp1__number_ranges:
	.word	1
	.word	0
	.word	3
	.word	1
	.word	0
	.word	2
	.section	.rodata.session_resp1__field_indices_by_name,"a",@progbits
	.align	4
	.type	session_resp1__field_indices_by_name, @object
	.size	session_resp1__field_indices_by_name, 8
session_resp1__field_indices_by_name:
	.word	1
	.word	0
	.section	.rodata.str1.1
.LC119:
	.string	"device_verify_data"
	.section	.rodata.session_resp1__field_descriptors,"a",@progbits
	.align	4
	.type	session_resp1__field_descriptors, @object
	.size	session_resp1__field_descriptors, 96
session_resp1__field_descriptors:
	.word	.LC113
	.word	1
	.word	3
	.word	13
	.word	0
	.word	12
	.word	status__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC119
	.word	3
	.word	3
	.word	15
	.word	0
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	session_cmd1__descriptor
	.section	.rodata.str1.1
.LC120:
	.string	"SessionCmd1"
	.section	.rodata.session_cmd1__descriptor,"a",@progbits
	.align	4
	.type	session_cmd1__descriptor, @object
	.size	session_cmd1__descriptor, 60
session_cmd1__descriptor:
	.word	682290937
	.word	.LC120
	.word	.LC120
	.word	.LC120
	.word	.LC97
	.word	20
	.word	1
	.word	session_cmd1__field_descriptors
	.word	session_cmd1__field_indices_by_name
	.word	1
	.word	session_cmd1__number_ranges
	.word	session_cmd1__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.session_cmd1__number_ranges,"a",@progbits
	.align	4
	.type	session_cmd1__number_ranges, @object
	.size	session_cmd1__number_ranges, 16
session_cmd1__number_ranges:
	.word	2
	.word	0
	.word	0
	.word	1
	.section	.rodata.session_cmd1__field_indices_by_name,"a",@progbits
	.align	4
	.type	session_cmd1__field_indices_by_name, @object
	.size	session_cmd1__field_indices_by_name, 4
session_cmd1__field_indices_by_name:
	.zero	4
	.section	.rodata.str1.1
.LC121:
	.string	"client_verify_data"
	.section	.rodata.session_cmd1__field_descriptors,"a",@progbits
	.align	4
	.type	session_cmd1__field_descriptors, @object
	.size	session_cmd1__field_descriptors, 48
session_cmd1__field_descriptors:
	.word	.LC121
	.word	2
	.word	3
	.word	15
	.word	0
	.word	12
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI5-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI10-.LFB7
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
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI14-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI15-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI16-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI17-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI18-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI19-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI20-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI21-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI22-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI23-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI24-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI25-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI26-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI27-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI28-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI29-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/proto-c/constants.pb-c.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/proto-c/sec1.pb-c.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19ae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0xc
	.4byte	.LASF211
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
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
	.byte	0x3
	.byte	0x12
	.4byte	0x53
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
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0xff
	.4byte	0xdf
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x112
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x128
	.4byte	0xdf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x132
	.4byte	0x185
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x144
	.4byte	0x111
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x14e
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x154
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x166
	.4byte	0x1cf
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0xc
	.byte	0x5
	.2byte	0x180
	.4byte	0x204
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x182
	.4byte	0x63d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x185
	.4byte	0x653
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x188
	.4byte	0x88
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x167
	.4byte	0x210
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x5
	.2byte	0x192
	.4byte	0x238
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x193
	.4byte	0x21
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x194
	.4byte	0x659
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x168
	.4byte	0x244
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x25f
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x1bc
	.4byte	0x685
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x16a
	.4byte	0x26b
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x3c
	.byte	0x5
	.2byte	0x1ef
	.4byte	0x33c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x1f1
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x1f4
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x1f6
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x1f8
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x1fa
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x1fd
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x1ff
	.4byte	0x691
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x202
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x204
	.4byte	0x69c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x207
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x209
	.4byte	0x6a7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x20c
	.4byte	0x88
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x20e
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x210
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x212
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x16b
	.4byte	0x348
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xc
	.byte	0x5
	.2byte	0x218
	.4byte	0x37d
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x21a
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x21d
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x220
	.4byte	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x16c
	.4byte	0x389
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x8
	.byte	0x5
	.2byte	0x226
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x228
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x22a
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x16d
	.4byte	0x3bd
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x30
	.byte	0x5
	.2byte	0x230
	.4byte	0x466
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x232
	.4byte	0x98
	.byte	0
	.uleb128 0xf
	.string	"id"
	.byte	0x5
	.2byte	0x235
	.4byte	0xb5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x238
	.4byte	0x105
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x23b
	.4byte	0x185
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x242
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x248
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x255
	.4byte	0xa3
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x258
	.4byte	0xa3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x25e
	.4byte	0xb5
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x261
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x263
	.4byte	0x88
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x265
	.4byte	0x88
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x16e
	.4byte	0x472
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x8
	.byte	0x5
	.2byte	0x270
	.4byte	0x49a
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x271
	.4byte	0x3a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x272
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x16f
	.4byte	0x4a6
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5
	.2byte	0x289
	.4byte	0x4db
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x28b
	.4byte	0x6b2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x28d
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x28f
	.4byte	0x6bd
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x170
	.4byte	0x4e7
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x3c
	.byte	0x5
	.2byte	0x295
	.4byte	0x5b8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x297
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x29a
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x29c
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x29e
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x2a0
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x2a6
	.4byte	0x21
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x2a9
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x2ab
	.4byte	0x6c3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x2ad
	.4byte	0x6ce
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x2b0
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x2b2
	.4byte	0x6a7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x2b5
	.4byte	0x606
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x2ba
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x2bc
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x171
	.4byte	0x5c4
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x10
	.byte	0x5
	.2byte	0x2c2
	.4byte	0x606
	.uleb128 0xf
	.string	"tag"
	.byte	0x5
	.2byte	0x2c4
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x2c6
	.4byte	0x1b7
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x2c8
	.4byte	0x21
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2ca
	.4byte	0x659
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x17a
	.4byte	0x612
	.uleb128 0x6
	.byte	0x4
	.4byte	0x618
	.uleb128 0x10
	.4byte	0x623
	.uleb128 0x11
	.4byte	0x623
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49a
	.uleb128 0x12
	.4byte	0x88
	.4byte	0x63d
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x629
	.uleb128 0x10
	.4byte	0x653
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x643
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x10
	.4byte	0x674
	.uleb128 0x11
	.4byte	0x674
	.uleb128 0x11
	.4byte	0x21
	.uleb128 0x11
	.4byte	0x67a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x238
	.uleb128 0x6
	.byte	0x4
	.4byte	0x680
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x697
	.uleb128 0x7
	.4byte	0x33c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a2
	.uleb128 0x7
	.4byte	0x37d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x7
	.4byte	0x466
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x7
	.4byte	0x4db
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c9
	.uleb128 0x7
	.4byte	0x3b1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6d4
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1a
	.4byte	0x723
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF109
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x6
	.byte	0x24
	.4byte	0x6d9
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x7
	.byte	0x13
	.4byte	0x739
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x14
	.byte	0x7
	.byte	0x2c
	.4byte	0x75e
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x2e
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.byte	0x2f
	.4byte	0x204
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x7
	.byte	0x14
	.4byte	0x769
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x18
	.byte	0x7
	.byte	0x39
	.4byte	0x79a
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x3b
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.byte	0x3c
	.4byte	0x723
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.byte	0x3d
	.4byte	0x204
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x7
	.byte	0x15
	.4byte	0x7a5
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x14
	.byte	0x7
	.byte	0x47
	.4byte	0x7ca
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x49
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x7
	.byte	0x4a
	.4byte	0x204
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x7
	.byte	0x16
	.4byte	0x7d5
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x20
	.byte	0x7
	.byte	0x54
	.4byte	0x812
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x56
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x7
	.byte	0x57
	.4byte	0x723
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x7
	.byte	0x58
	.4byte	0x204
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x7
	.byte	0x59
	.4byte	0x204
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x7
	.byte	0x17
	.4byte	0x81d
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x18
	.byte	0x7
	.byte	0x6c
	.4byte	0x854
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x6e
	.4byte	0x49a
	.byte	0
	.uleb128 0x17
	.string	"msg"
	.byte	0x7
	.byte	0x72
	.4byte	0x886
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x7
	.byte	0x73
	.4byte	0x8c5
	.byte	0x10
	.uleb128 0x18
	.4byte	0x8d0
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x886
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF135
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x7
	.byte	0x25
	.4byte	0x854
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x60
	.4byte	0x8c5
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF142
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x7
	.byte	0x67
	.4byte	0x891
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.byte	0x74
	.4byte	0x905
	.uleb128 0x1a
	.string	"sc0"
	.byte	0x7
	.byte	0x78
	.4byte	0x905
	.uleb128 0x1a
	.string	"sr0"
	.byte	0x7
	.byte	0x7c
	.4byte	0x90b
	.uleb128 0x1a
	.string	"sc1"
	.byte	0x7
	.byte	0x80
	.4byte	0x911
	.uleb128 0x1a
	.string	"sr1"
	.byte	0x7
	.byte	0x84
	.4byte	0x917
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ca
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x923
	.uleb128 0x7
	.4byte	0x72e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92e
	.uleb128 0x7
	.4byte	0x75e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x939
	.uleb128 0x7
	.4byte	0x79a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x944
	.uleb128 0x7
	.4byte	0x7ca
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94f
	.uleb128 0x7
	.4byte	0x812
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.byte	0xa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x982
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb
	.4byte	0x911
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0xd
	.4byte	0x923
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x1
	.byte	0x37
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x38
	.4byte	0x917
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0x3a
	.4byte	0x92e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x1
	.byte	0x64
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9de
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x65
	.4byte	0x905
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0x67
	.4byte	0x939
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x91
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa27
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x92
	.4byte	0x90b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0x94
	.4byte	0x944
	.uleb128 0x1e
	.4byte	.LVL4
	.4byte	0x1961
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x1
	.byte	0xbe
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa55
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0xbf
	.4byte	0xa55
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0xc1
	.4byte	0x94f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x812
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0x1
	.byte	0x10
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaca
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x11
	.4byte	0x91d
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xada
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2510
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0x196a
	.4byte	0xac0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2510
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL8
	.4byte	0x1975
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xada
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5b
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x17
	.4byte	0x91d
	.4byte	.LLST1
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x18
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xb6b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2515
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0x196a
	.4byte	0xb51
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2515
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0x1981
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xb6b
	.uleb128 0x26
	.4byte	0x81
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xb5b
	.uleb128 0x20
	.4byte	.LASF154
	.byte	0x1
	.byte	0x1d
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1e
	.4byte	0x91d
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x1f
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xbfd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2520
	.uleb128 0x23
	.4byte	.LVL15
	.4byte	0x196a
	.4byte	0xbe3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2520
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0x198d
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xbfd
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x1
	.byte	0x25
	.4byte	0x911
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6a
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0x26
	.4byte	0x68b
	.4byte	.LLST3
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x28
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0x1999
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd1__descriptor
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce1
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x2f
	.4byte	0x911
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x30
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xcf1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2530
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x196a
	.4byte	0xcd7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2530
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL23
	.4byte	0x19a5
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xcf1
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0xce1
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x1
	.byte	0x3d
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd66
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x3e
	.4byte	0x928
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xd76
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2538
	.uleb128 0x23
	.4byte	.LVL25
	.4byte	0x196a
	.4byte	0xd5c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2538
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0x1975
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xd76
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0xd66
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0x1
	.byte	0x43
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf8
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x44
	.4byte	0x928
	.4byte	.LLST5
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x45
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xe08
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2543
	.uleb128 0x23
	.4byte	.LVL29
	.4byte	0x196a
	.4byte	0xdee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2543
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x1981
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xe08
	.uleb128 0x26
	.4byte	0x81
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xdf8
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.byte	0x4a
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8a
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4b
	.4byte	0x928
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4c
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xe8a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2548
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0x196a
	.4byte	0xe80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2548
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x198d
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x1
	.byte	0x52
	.4byte	0x917
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef7
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0x53
	.4byte	0x68b
	.4byte	.LLST7
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x54
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x55
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0x1999
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp1__descriptor
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6e
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x5c
	.4byte	0x917
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x5d
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xf6e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2558
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x196a
	.4byte	0xf64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2558
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x19a5
	.byte	0
	.uleb128 0x7
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0x1
	.byte	0x6a
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe3
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6b
	.4byte	0x933
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0xfe3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2566
	.uleb128 0x23
	.4byte	.LVL43
	.4byte	0x196a
	.4byte	0xfd9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2566
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x24
	.4byte	.LVL44
	.4byte	0x1975
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0x1
	.byte	0x70
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1065
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x71
	.4byte	0x933
	.4byte	.LLST9
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x72
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x1065
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2571
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0x196a
	.4byte	0x105b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2571
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x24
	.4byte	.LVL48
	.4byte	0x1981
	.byte	0
	.uleb128 0x7
	.4byte	0xb5b
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0x1
	.byte	0x77
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e7
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x78
	.4byte	0x933
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x79
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x10e7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2576
	.uleb128 0x23
	.4byte	.LVL51
	.4byte	0x196a
	.4byte	0x10dd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2576
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x24
	.4byte	.LVL52
	.4byte	0x198d
	.byte	0
	.uleb128 0x7
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF167
	.byte	0x1
	.byte	0x7f
	.4byte	0x905
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1154
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0x80
	.4byte	0x68b
	.4byte	.LLST11
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x81
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x82
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL55
	.4byte	0x1999
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd0__descriptor
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x1
	.byte	0x88
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11cb
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x89
	.4byte	0x905
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x8a
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x11cb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2586
	.uleb128 0x23
	.4byte	.LVL58
	.4byte	0x196a
	.4byte	0x11c1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2586
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0x19a5
	.byte	0
	.uleb128 0x7
	.4byte	0xce1
	.uleb128 0x20
	.4byte	.LASF169
	.byte	0x1
	.byte	0x97
	.4byte	0x21
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1240
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x98
	.4byte	0x93e
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x1240
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2594
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0x196a
	.4byte	0x1236
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2594
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x24
	.4byte	.LVL62
	.4byte	0x1975
	.byte	0
	.uleb128 0x7
	.4byte	0xd66
	.uleb128 0x20
	.4byte	.LASF170
	.byte	0x1
	.byte	0x9d
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c2
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x9e
	.4byte	0x93e
	.4byte	.LLST13
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x9f
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x12c2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2599
	.uleb128 0x23
	.4byte	.LVL65
	.4byte	0x196a
	.4byte	0x12b8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2599
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0x1981
	.byte	0
	.uleb128 0x7
	.4byte	0xdf8
	.uleb128 0x20
	.4byte	.LASF171
	.byte	0x1
	.byte	0xa4
	.4byte	0x21
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1344
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa5
	.4byte	0x93e
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0xa6
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x1344
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2604
	.uleb128 0x23
	.4byte	.LVL69
	.4byte	0x196a
	.4byte	0x133a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2604
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0x198d
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF172
	.byte	0x1
	.byte	0xac
	.4byte	0x90b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b1
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0xad
	.4byte	0x68b
	.4byte	.LLST15
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0xae
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0xaf
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL73
	.4byte	0x1999
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp0__descriptor
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1428
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb6
	.4byte	0x90b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0xb7
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x1428
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2614
	.uleb128 0x23
	.4byte	.LVL76
	.4byte	0x196a
	.4byte	0x141e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2614
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0x19a5
	.byte	0
	.uleb128 0x7
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF174
	.byte	0x1
	.byte	0xc4
	.4byte	0x21
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149d
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc5
	.4byte	0x949
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x149d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2622
	.uleb128 0x23
	.4byte	.LVL79
	.4byte	0x196a
	.4byte	0x1493
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2622
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x24
	.4byte	.LVL80
	.4byte	0x1975
	.byte	0
	.uleb128 0x7
	.4byte	0xaca
	.uleb128 0x20
	.4byte	.LASF175
	.byte	0x1
	.byte	0xca
	.4byte	0x21
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151f
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0xcb
	.4byte	0x949
	.4byte	.LLST17
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0xcc
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x151f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2627
	.uleb128 0x23
	.4byte	.LVL83
	.4byte	0x196a
	.4byte	0x1515
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xce
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2627
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x24
	.4byte	.LVL84
	.4byte	0x1981
	.byte	0
	.uleb128 0x7
	.4byte	0xb5b
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.byte	0xd1
	.4byte	0x21
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a1
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0xd2
	.4byte	0x949
	.4byte	.LLST18
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd3
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x15a1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2632
	.uleb128 0x23
	.4byte	.LVL87
	.4byte	0x196a
	.4byte	0x1597
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2632
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x24
	.4byte	.LVL88
	.4byte	0x198d
	.byte	0
	.uleb128 0x7
	.4byte	0xbed
	.uleb128 0x20
	.4byte	.LASF177
	.byte	0x1
	.byte	0xd9
	.4byte	0xa55
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160e
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0xda
	.4byte	0x68b
	.4byte	.LLST19
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0xdb
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0xdc
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LVL91
	.4byte	0x1999
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_payload__descriptor
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x1
	.byte	0xe2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1685
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0xe3
	.4byte	0xa55
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.byte	0xe4
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF151
	.4byte	0x1685
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2642
	.uleb128 0x23
	.4byte	.LVL94
	.4byte	0x196a
	.4byte	0x167b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2642
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.uleb128 0x24
	.4byte	.LVL95
	.4byte	0x19a5
	.byte	0
	.uleb128 0x7
	.4byte	0xce1
	.uleb128 0x25
	.4byte	0x3b1
	.4byte	0x169a
	.uleb128 0x26
	.4byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0xeb
	.4byte	0x16ab
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd1__field_descriptors
	.uleb128 0x7
	.4byte	0x168a
	.uleb128 0x25
	.4byte	0x2c
	.4byte	0x16c0
	.uleb128 0x26
	.4byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0xfa
	.4byte	0x16d1
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd1__field_indices_by_name
	.uleb128 0x7
	.4byte	0x16b0
	.uleb128 0x25
	.4byte	0x466
	.4byte	0x16e6
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x1
	.byte	0xfd
	.4byte	0x16f7
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd1__number_ranges
	.uleb128 0x7
	.4byte	0x16d6
	.uleb128 0x25
	.4byte	0x3b1
	.4byte	0x170c
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x111
	.4byte	0x171e
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp1__field_descriptors
	.uleb128 0x7
	.4byte	0x16fc
	.uleb128 0x25
	.4byte	0x2c
	.4byte	0x1733
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x12c
	.4byte	0x1745
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp1__field_indices_by_name
	.uleb128 0x7
	.4byte	0x1723
	.uleb128 0x25
	.4byte	0x466
	.4byte	0x175a
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x130
	.4byte	0x176c
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp1__number_ranges
	.uleb128 0x7
	.4byte	0x174a
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x145
	.4byte	0x1783
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd0__field_descriptors
	.uleb128 0x7
	.4byte	0x168a
	.uleb128 0x29
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x154
	.4byte	0x179a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd0__field_indices_by_name
	.uleb128 0x7
	.4byte	0x16b0
	.uleb128 0x29
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x157
	.4byte	0x17b1
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd0__number_ranges
	.uleb128 0x7
	.4byte	0x16d6
	.uleb128 0x25
	.4byte	0x3b1
	.4byte	0x17c6
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x16b
	.4byte	0x17d8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp0__field_descriptors
	.uleb128 0x7
	.4byte	0x17b6
	.uleb128 0x25
	.4byte	0x2c
	.4byte	0x17ed
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x192
	.4byte	0x17ff
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp0__field_indices_by_name
	.uleb128 0x7
	.4byte	0x17dd
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x197
	.4byte	0x1816
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp0__number_ranges
	.uleb128 0x7
	.4byte	0x16d6
	.uleb128 0x25
	.4byte	0x3b1
	.4byte	0x182b
	.uleb128 0x26
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x29
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x183d
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_payload__field_descriptors
	.uleb128 0x7
	.4byte	0x181b
	.uleb128 0x25
	.4byte	0x2c
	.4byte	0x1852
	.uleb128 0x26
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1864
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_payload__field_indices_by_name
	.uleb128 0x7
	.4byte	0x1842
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x187b
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_payload__number_ranges
	.uleb128 0x7
	.4byte	0x174a
	.uleb128 0x25
	.4byte	0x33c
	.4byte	0x1890
	.uleb128 0x26
	.4byte	0x81
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x206
	.4byte	0x18a2
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_msg_type__enum_values_by_number
	.uleb128 0x7
	.4byte	0x1880
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x20d
	.4byte	0x18b9
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_msg_type__value_ranges
	.uleb128 0x7
	.4byte	0x16d6
	.uleb128 0x25
	.4byte	0x37d
	.4byte	0x18ce
	.uleb128 0x26
	.4byte	0x81
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x210
	.4byte	0x18e0
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_msg_type__enum_values_by_name
	.uleb128 0x7
	.4byte	0x18be
	.uleb128 0x2a
	.4byte	.LASF197
	.byte	0x6
	.byte	0x30
	.4byte	0x18f0
	.uleb128 0x7
	.4byte	0x25f
	.uleb128 0x2b
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x217
	.4byte	0x18f0
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_msg_type__descriptor
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x102
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd1__descriptor
	.uleb128 0x2b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x136
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp1__descriptor
	.uleb128 0x2b
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x15c
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_cmd0__descriptor
	.uleb128 0x2b
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x19c
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_resp0__descriptor
	.uleb128 0x2b
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	sec1_payload__descriptor
	.uleb128 0x2c
	.4byte	.LASF212
	.4byte	.LASF212
	.uleb128 0x2d
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x8
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x5
	.2byte	0x37f
	.uleb128 0x2e
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x5
	.2byte	0x393
	.uleb128 0x2e
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x5
	.2byte	0x3a4
	.uleb128 0x2e
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x5
	.2byte	0x3bb
	.uleb128 0x2e
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x3cf
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB24
	.4byte	.LFE24
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"ProtobufCEnumValueIndex"
.LASF138:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC0"
.LASF140:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC1"
.LASF176:
	.string	"sec1_payload__pack_to_buffer"
.LASF32:
	.string	"PROTOBUF_C_TYPE_UINT64"
.LASF157:
	.string	"allocator"
.LASF19:
	.string	"PROTOBUF_C_LABEL_REQUIRED"
.LASF129:
	.string	"_Status"
.LASF185:
	.string	"session_cmd0__field_descriptors"
.LASF83:
	.string	"reserved_flags"
.LASF39:
	.string	"PROTOBUF_C_TYPE_BYTES"
.LASF208:
	.string	"protobuf_c_message_unpack"
.LASF146:
	.string	"message"
.LASF198:
	.string	"sec1_msg_type__descriptor"
.LASF155:
	.string	"buffer"
.LASF82:
	.string	"flags"
.LASF29:
	.string	"PROTOBUF_C_TYPE_SFIXED64"
.LASF204:
	.string	"__assert_func"
.LASF35:
	.string	"PROTOBUF_C_TYPE_DOUBLE"
.LASF136:
	.string	"Sec1MsgType"
.LASF186:
	.string	"session_cmd0__field_indices_by_name"
.LASF43:
	.string	"PROTOBUF_C_WIRE_TYPE_64BIT"
.LASF0:
	.string	"unsigned int"
.LASF110:
	.string	"Status"
.LASF91:
	.string	"sizeof_message"
.LASF143:
	.string	"Sec1Payload__PayloadCase"
.LASF167:
	.string	"session_cmd0__unpack"
.LASF119:
	.string	"SessionCmd0"
.LASF111:
	.string	"SessionCmd1"
.LASF97:
	.string	"message_init"
.LASF42:
	.string	"PROTOBUF_C_WIRE_TYPE_VARINT"
.LASF182:
	.string	"session_resp1__field_descriptors"
.LASF181:
	.string	"session_cmd1__number_ranges"
.LASF154:
	.string	"session_cmd1__pack_to_buffer"
.LASF21:
	.string	"PROTOBUF_C_LABEL_REPEATED"
.LASF69:
	.string	"reserved3"
.LASF87:
	.string	"ProtobufCMessage"
.LASF189:
	.string	"session_resp0__field_indices_by_name"
.LASF177:
	.string	"sec1_payload__unpack"
.LASF33:
	.string	"PROTOBUF_C_TYPE_FIXED64"
.LASF55:
	.string	"ProtobufCEnumDescriptor"
.LASF15:
	.string	"uint32_t"
.LASF161:
	.string	"session_resp1__pack_to_buffer"
.LASF85:
	.string	"start_value"
.LASF94:
	.string	"fields_sorted_by_name"
.LASF54:
	.string	"append"
.LASF113:
	.string	"base"
.LASF74:
	.string	"index"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"ProtobufCType"
.LASF92:
	.string	"n_fields"
.LASF118:
	.string	"device_verify_data"
.LASF96:
	.string	"field_ranges"
.LASF201:
	.string	"session_cmd0__descriptor"
.LASF108:
	.string	"STATUS__InvalidSession"
.LASF173:
	.string	"session_resp0__free_unpacked"
.LASF211:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/protocomm/proto-c/sec1.pb-c.c"
.LASF72:
	.string	"value"
.LASF210:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF109:
	.string	"_STATUS_IS_INT_SIZE"
.LASF127:
	.string	"_Sec1Payload"
.LASF191:
	.string	"sec1_payload__field_descriptors"
.LASF193:
	.string	"sec1_payload__number_ranges"
.LASF3:
	.string	"size_t"
.LASF64:
	.string	"values_by_name"
.LASF98:
	.string	"ProtobufCMessageUnknownField"
.LASF79:
	.string	"offset"
.LASF123:
	.string	"_SessionResp0"
.LASF165:
	.string	"session_cmd0__pack"
.LASF100:
	.string	"ProtobufCMessageInit"
.LASF121:
	.string	"client_pubkey"
.LASF131:
	.string	"SEC1_MSG_TYPE__Session_Command0"
.LASF133:
	.string	"SEC1_MSG_TYPE__Session_Command1"
.LASF122:
	.string	"SessionResp0"
.LASF115:
	.string	"SessionResp1"
.LASF16:
	.string	"PROTOBUF_C_FIELD_FLAG_PACKED"
.LASF49:
	.string	"free"
.LASF101:
	.string	"STATUS__Success"
.LASF80:
	.string	"descriptor"
.LASF128:
	.string	"payload_case"
.LASF156:
	.string	"session_cmd1__unpack"
.LASF187:
	.string	"session_cmd0__number_ranges"
.LASF152:
	.string	"session_cmd1__get_packed_size"
.LASF179:
	.string	"session_cmd1__field_descriptors"
.LASF47:
	.string	"ProtobufCAllocator"
.LASF197:
	.string	"status__descriptor"
.LASF170:
	.string	"session_resp0__pack"
.LASF61:
	.string	"n_values"
.LASF13:
	.string	"char"
.LASF144:
	.string	"session_cmd1__init"
.LASF175:
	.string	"sec1_payload__pack"
.LASF184:
	.string	"session_resp1__number_ranges"
.LASF93:
	.string	"fields"
.LASF137:
	.string	"SEC1_PAYLOAD__PAYLOAD__NOT_SET"
.LASF124:
	.string	"device_pubkey"
.LASF52:
	.string	"data"
.LASF89:
	.string	"unknown_fields"
.LASF147:
	.string	"init_value"
.LASF14:
	.string	"uint8_t"
.LASF117:
	.string	"status"
.LASF40:
	.string	"PROTOBUF_C_TYPE_MESSAGE"
.LASF190:
	.string	"session_resp0__number_ranges"
.LASF172:
	.string	"session_resp0__unpack"
.LASF95:
	.string	"n_field_ranges"
.LASF90:
	.string	"ProtobufCMessageDescriptor"
.LASF125:
	.string	"device_random"
.LASF18:
	.string	"PROTOBUF_C_FIELD_FLAG_ONEOF"
.LASF44:
	.string	"PROTOBUF_C_WIRE_TYPE_LENGTH_PREFIXED"
.LASF37:
	.string	"PROTOBUF_C_TYPE_ENUM"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"n_value_names"
.LASF88:
	.string	"n_unknown_fields"
.LASF196:
	.string	"sec1_msg_type__enum_values_by_name"
.LASF23:
	.string	"ProtobufCLabel"
.LASF59:
	.string	"c_name"
.LASF132:
	.string	"SEC1_MSG_TYPE__Session_Response0"
.LASF58:
	.string	"short_name"
.LASF114:
	.string	"client_verify_data"
.LASF180:
	.string	"session_cmd1__field_indices_by_name"
.LASF103:
	.string	"STATUS__InvalidProto"
.LASF212:
	.string	"memset"
.LASF22:
	.string	"PROTOBUF_C_LABEL_NONE"
.LASF126:
	.string	"Sec1Payload"
.LASF38:
	.string	"PROTOBUF_C_TYPE_STRING"
.LASF65:
	.string	"n_value_ranges"
.LASF116:
	.string	"_SessionResp1"
.LASF209:
	.string	"protobuf_c_message_free_unpacked"
.LASF163:
	.string	"session_resp1__free_unpacked"
.LASF99:
	.string	"wire_type"
.LASF104:
	.string	"STATUS__TooManySessions"
.LASF194:
	.string	"sec1_msg_type__enum_values_by_number"
.LASF62:
	.string	"values"
.LASF75:
	.string	"ProtobufCFieldDescriptor"
.LASF51:
	.string	"ProtobufCBinaryData"
.LASF34:
	.string	"PROTOBUF_C_TYPE_FLOAT"
.LASF164:
	.string	"session_cmd0__get_packed_size"
.LASF105:
	.string	"STATUS__InvalidArgument"
.LASF102:
	.string	"STATUS__InvalidSecScheme"
.LASF183:
	.string	"session_resp1__field_indices_by_name"
.LASF25:
	.string	"PROTOBUF_C_TYPE_SINT32"
.LASF46:
	.string	"ProtobufCWireType"
.LASF134:
	.string	"SEC1_MSG_TYPE__Session_Response1"
.LASF86:
	.string	"orig_index"
.LASF145:
	.string	"session_resp1__init"
.LASF48:
	.string	"alloc"
.LASF6:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF60:
	.string	"package_name"
.LASF195:
	.string	"sec1_msg_type__value_ranges"
.LASF203:
	.string	"sec1_payload__descriptor"
.LASF17:
	.string	"PROTOBUF_C_FIELD_FLAG_DEPRECATED"
.LASF20:
	.string	"PROTOBUF_C_LABEL_OPTIONAL"
.LASF71:
	.string	"ProtobufCEnumValue"
.LASF107:
	.string	"STATUS__CryptoError"
.LASF174:
	.string	"sec1_payload__get_packed_size"
.LASF50:
	.string	"allocator_data"
.LASF67:
	.string	"reserved1"
.LASF68:
	.string	"reserved2"
.LASF4:
	.string	"__uint8_t"
.LASF70:
	.string	"reserved4"
.LASF202:
	.string	"session_resp0__descriptor"
.LASF162:
	.string	"session_resp1__unpack"
.LASF135:
	.string	"_SEC1_MSG_TYPE_IS_INT_SIZE"
.LASF57:
	.string	"name"
.LASF120:
	.string	"_SessionCmd0"
.LASF112:
	.string	"_SessionCmd1"
.LASF24:
	.string	"PROTOBUF_C_TYPE_INT32"
.LASF36:
	.string	"PROTOBUF_C_TYPE_BOOL"
.LASF56:
	.string	"magic"
.LASF168:
	.string	"session_cmd0__free_unpacked"
.LASF84:
	.string	"ProtobufCIntRange"
.LASF142:
	.string	"_SEC1_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF11:
	.string	"sizetype"
.LASF171:
	.string	"session_resp0__pack_to_buffer"
.LASF12:
	.string	"long unsigned int"
.LASF199:
	.string	"session_cmd1__descriptor"
.LASF160:
	.string	"session_resp1__pack"
.LASF78:
	.string	"quantifier_offset"
.LASF81:
	.string	"default_value"
.LASF169:
	.string	"session_resp0__get_packed_size"
.LASF30:
	.string	"PROTOBUF_C_TYPE_UINT32"
.LASF77:
	.string	"type"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF66:
	.string	"value_ranges"
.LASF28:
	.string	"PROTOBUF_C_TYPE_SINT64"
.LASF166:
	.string	"session_cmd0__pack_to_buffer"
.LASF148:
	.string	"session_cmd0__init"
.LASF130:
	.string	"_Sec1MsgType"
.LASF26:
	.string	"PROTOBUF_C_TYPE_SFIXED32"
.LASF149:
	.string	"session_resp0__init"
.LASF207:
	.string	"protobuf_c_message_pack_to_buffer"
.LASF76:
	.string	"label"
.LASF206:
	.string	"protobuf_c_message_pack"
.LASF205:
	.string	"protobuf_c_message_get_packed_size"
.LASF153:
	.string	"session_cmd1__pack"
.LASF178:
	.string	"sec1_payload__free_unpacked"
.LASF192:
	.string	"sec1_payload__field_indices_by_name"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF151:
	.string	"__func__"
.LASF150:
	.string	"sec1_payload__init"
.LASF53:
	.string	"ProtobufCBuffer"
.LASF106:
	.string	"STATUS__InternalError"
.LASF200:
	.string	"session_resp1__descriptor"
.LASF158:
	.string	"session_cmd1__free_unpacked"
.LASF27:
	.string	"PROTOBUF_C_TYPE_INT64"
.LASF45:
	.string	"PROTOBUF_C_WIRE_TYPE_32BIT"
.LASF188:
	.string	"session_resp0__field_descriptors"
.LASF139:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR0"
.LASF141:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR1"
.LASF31:
	.string	"PROTOBUF_C_TYPE_FIXED32"
.LASF159:
	.string	"session_resp1__get_packed_size"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
