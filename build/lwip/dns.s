	.file	"dns.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"invalid response"
.LC7:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/dns.c"
	.section	.text.dns_call_found,"ax",@progbits
	.literal_position
	.literal .LC3, dns_table
	.literal .LC5, .LC4
	.literal .LC6, __func__$6702
	.literal .LC8, .LC7
	.literal .LC9, dns_requests
	.literal .LC10, dns_requests+48
	.literal .LC11, dns_pcbs
	.align	4
	.type	dns_call_found, @function
dns_call_found:
.LFB38:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/dns.c"
	.loc 1 953 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 959 0
	beqz.n	a3, .L2
	.loc 1 961 0
	l8ui	a5, a3, 16
	l32r	a4, .LC3
	slli	a8, a2, 3
	bnei	a5, 6, .L3
	.loc 1 962 0
	add.n	a9, a8, a2
	addx8	a9, a9, a2
	addx4	a8, a9, a4
	movi	a4, 0x120
	add.n	a8, a8, a4
	l8ui	a5, a8, 0
	movi	a4, 0xfd
	and	a4, a5, a4
	beqi	a4, 1, .L4
	.loc 1 962 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x3c2
	j	.L20
.L4:
	.loc 1 963 0 is_stmt 1
	s8i	a4, a8, 0
.L2:
.LVL1:
	.loc 1 974 0 discriminator 1
	addx8	a5, a2, a2
	l32r	a4, .LC9
	addx8	a5, a5, a2
	j	.L5
.LVL2:
.L3:
	.loc 1 965 0
	add.n	a8, a8, a2
	addx8	a8, a8, a2
	addx4	a8, a8, a4
	movi	a4, 0x120
	add.n	a8, a8, a4
	l8ui	a5, a8, 0
	movi	a4, 0xfd
	and	a4, a5, a4
	bnei	a4, 1, .L6
	.loc 1 965 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x3c5
.L20:
	l32r	a10, .LC8
	call8	__assert_func
.LVL3:
.L6:
	.loc 1 966 0 is_stmt 1
	movi.n	a4, 0
	j	.L4
.L5:
	.loc 1 973 0
	l32i.n	a9, a4, 0
	beqz.n	a9, .L7
	.loc 1 973 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 8
	bne	a8, a2, .L7
	.loc 1 974 0 is_stmt 1
	l32r	a10, .LC3
	slli	a8, a5, 2
	addi	a8, a8, 32
	l32i.n	a12, a4, 4
	add.n	a10, a10, a8
	mov.n	a11, a3
	callx8	a9
.LVL4:
	.loc 1 976 0
	movi.n	a8, 0
	s32i.n	a8, a4, 0
.L7:
	.loc 1 972 0 discriminator 2
	l32r	a6, .LC10
	addi.n	a4, a4, 12
	bne	a6, a4, .L5
	l32r	a4, .LC3
	.loc 1 992 0
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	addx4	a10, a8, a4
	.loc 1 972 0
	movi.n	a9, 0
	mov.n	a5, a4
	.loc 1 992 0
	addi	a10, a10, 31
	movi	a11, 0x124
	movi.n	a3, 4
.LVL5:
.L10:
	.loc 1 988 0
	beq	a2, a9, .L8
	.loc 1 991 0
	l8ui	a12, a4, 26
	bnei	a12, 2, .L8
	.loc 1 992 0
	l8ui	a13, a4, 31
	l8ui	a12, a10, 0
	bne	a13, a12, .L8
	.loc 1 994 0
	addx4	a8, a8, a5
	movi.n	a3, 4
	s8i	a3, a8, 31
	.loc 1 995 0
	j	.L9
.L8:
	.loc 1 987 0 discriminator 2
	addi.n	a9, a9, 1
.LVL6:
	extui	a9, a9, 0, 8
.LVL7:
	add.n	a4, a4, a11
	addi.n	a3, a3, -1
	bnez.n	a3, .L10
.LVL8:
.L9:
	.loc 1 999 0
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL9:
	addx4	a2, a2, a5
	l8ui	a4, a2, 31
	bgeui	a4, 4, .L1
	.loc 1 1001 0
	l32r	a5, .LC11
	addx4	a4, a4, a5
	l32i.n	a10, a4, 0
	.loc 1 1002 0
	movi.n	a4, 0
	.loc 1 1001 0
	call8	udp_remove
.LVL10:
	.loc 1 1002 0
	l8ui	a3, a2, 31
	addx4	a3, a3, a5
	s32i.n	a4, a3, 0
	.loc 1 1003 0
	movi.n	a3, 4
	s8i	a3, a2, 31
.L1:
	retw.n
.LFE38:
	.size	dns_call_found, .-dns_call_found
	.section	.text.unlikely.dns_correct_response,"ax",@progbits
	.literal_position
	.literal .LC12, dns_table
	.literal .LC13, 604800
	.align	4
	.type	dns_correct_response, @function
dns_correct_response:
.LFB42:
	.loc 1 1141 0
.LVL11:
	entry	sp, 32
.LCFI1:
.LVL12:
	.loc 1 1144 0
	l32r	a8, .LC12
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	addx4	a4, a4, a8
	movi.n	a8, 3
	s8i	a8, a4, 26
	.loc 1 1152 0
	l32r	a8, .LC13
	.loc 1 1141 0
	mov.n	a10, a2
	.loc 1 1151 0
	minu	a3, a3, a8
.LVL13:
	s32i.n	a3, a4, 0
	.loc 1 1155 0
	addi.n	a11, a4, 4
	call8	dns_call_found
.LVL14:
	.loc 1 1157 0
	l32i.n	a3, a4, 0
	bnez.n	a3, .L21
	.loc 1 1163 0
	l8ui	a8, a4, 26
	bnei	a8, 3, .L21
	.loc 1 1164 0
	s8i	a3, a4, 26
.L21:
	retw.n
.LFE42:
	.size	dns_correct_response, .-dns_correct_response
	.section	.rodata.str1.1
.LC15:
	.string	"dns server out of array"
	.section	.text.dns_send,"ax",@progbits
	.literal_position
	.literal .LC14, dns_table
	.literal .LC16, .LC15
	.literal .LC17, __func__$6668
	.literal .LC18, .LC7
	.literal .LC19, dns_servers
	.literal .LC20, 7168
	.literal .LC21, dns_pcbs
	.align	4
	.type	dns_send, @function
dns_send:
.LFB35:
	.loc 1 765 0
.LVL15:
	entry	sp, 64
.LCFI2:
.LVL16:
	.loc 1 778 0
	slli	a3, a2, 3
	l32r	a6, .LC14
	add.n	a4, a3, a2
	addx8	a4, a4, a2
	addx4	a4, a4, a6
	l8ui	a5, a4, 27
	bltui	a5, 3, .L26
	.loc 1 778 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	l32r	a10, .LC18
	movi	a11, 0x30a
	call8	__assert_func
.LVL17:
.L26:
	.loc 1 779 0 is_stmt 1
	l32r	a4, .LC19
	addx4	a5, a5, a5
	addx4	a5, a5, a4
	l8ui	a6, a5, 16
	bnei	a6, 6, .L27
	.loc 1 779 0 is_stmt 0 discriminator 1
	l32i.n	a6, a5, 0
	movi.n	a4, 0
	bne	a6, a4, .L29
	.loc 1 779 0 discriminator 3
	l32i.n	a6, a5, 4
	bne	a6, a4, .L29
	.loc 1 779 0 discriminator 5
	l32i.n	a6, a5, 8
	bne	a6, a4, .L29
	.loc 1 779 0 discriminator 7
	l32i.n	a6, a5, 12
	movi.n	a5, 1
	moveqz	a4, a5, a6
	j	.L29
.L27:
	.loc 1 779 0 discriminator 2
	l32i.n	a5, a5, 0
	movi.n	a4, 0
	movi.n	a6, 1
	moveqz	a4, a6, a5
	extui	a4, a4, 0, 8
.L29:
	.loc 1 779 0 discriminator 14
	beqz.n	a4, .L30
	.loc 1 786 0 is_stmt 1
	mov.n	a10, a2
	movi.n	a11, 0
	call8	dns_call_found
.LVL18:
	.loc 1 788 0
	add.n	a3, a3, a2
	addx8	a8, a3, a2
	l32r	a3, .LC14
	.loc 1 789 0
	movi.n	a10, 0
	.loc 1 788 0
	addx4	a2, a8, a3
.LVL19:
	movi.n	a3, 0
	s8i	a3, a2, 26
	.loc 1 789 0
	j	.L31
.LVL20:
.L30:
	.loc 1 793 0
	add.n	a5, a3, a2
	addx8	a5, a5, a2
	l32r	a8, .LC14
	slli	a5, a5, 2
	addi	a6, a5, 32
	add.n	a6, a8, a6
	mov.n	a10, a6
	call8	strlen
.LVL21:
	addi	a10, a10, 18
	extui	a11, a10, 0, 16
	mov.n	a12, a4
	mov.n	a10, a4
	call8	pbuf_alloc
.LVL22:
	mov.n	a7, a10
.LVL23:
	.loc 1 868 0
	movi	a10, 0xff
	.loc 1 795 0
	beqz.n	a7, .L31
.LBB3:
	.loc 1 799 0
	movi.n	a12, 0xc
	mov.n	a11, a4
	mov.n	a10, sp
	call8	memset
.LVL24:
	.loc 1 800 0
	l32r	a8, .LC14
	.loc 1 805 0
	addi.n	a6, a6, -1
	.loc 1 800 0
	add.n	a5, a8, a5
	l16ui	a10, a5, 24
	.loc 1 801 0
	movi.n	a5, 1
	.loc 1 800 0
	call8	lwip_htons
.LVL25:
	s16i	a10, sp, 0
	.loc 1 801 0
	s8i	a5, sp, 2
	.loc 1 803 0
	movi.n	a12, 0xc
	.loc 1 802 0
	movi	a5, 0x100
	.loc 1 803 0
	mov.n	a11, sp
	mov.n	a10, a7
	.loc 1 802 0
	s16i	a5, sp, 4
	.loc 1 803 0
	call8	pbuf_take
.LVL26:
	.loc 1 808 0
	movi.n	a9, 0xc
.LVL27:
.L35:
	.loc 1 810 0
	addi.n	a6, a6, 1
.LVL28:
	mov.n	a14, a6
	.loc 1 812 0
	movi.n	a5, 0
	movi.n	a12, 1
	j	.L32
.LVL29:
.L33:
	.loc 1 813 0 discriminator 3
	addi.n	a5, a5, 1
.LVL30:
	extui	a5, a5, 0, 8
.LVL31:
	.loc 1 812 0 discriminator 3
	addi.n	a6, a6, 1
.LVL32:
.L32:
	.loc 1 812 0 is_stmt 0 discriminator 1
	l8ui	a10, a6, 0
	mov.n	a8, a4
	addi	a11, a10, -46
	movnez	a8, a12, a11
	beqz.n	a8, .L42
	mov.n	a8, a4
	movnez	a8, a12, a10
	bnez.n	a8, .L33
.L42:
	.loc 1 815 0 is_stmt 1
	sub	a15, a6, a14
.LVL33:
	.loc 1 816 0
	mov.n	a12, a5
	mov.n	a11, a9
	mov.n	a10, a7
	s32i.n	a9, sp, 24
	s32i.n	a14, sp, 16
	s32i.n	a15, sp, 20
	call8	pbuf_put_at
.LVL34:
	.loc 1 817 0
	l32i.n	a9, sp, 24
	l32i.n	a15, sp, 20
	l32i.n	a14, sp, 16
	addi.n	a13, a9, 1
	extui	a12, a15, 0, 16
	extui	a13, a13, 0, 16
	mov.n	a11, a14
	mov.n	a10, a7
	call8	pbuf_take_at
.LVL35:
	.loc 1 818 0
	l32i.n	a9, sp, 24
	.loc 1 819 0
	l8ui	a12, a6, 0
	.loc 1 818 0
	add.n	a5, a9, a5
.LVL36:
	extui	a5, a5, 0, 16
	addi.n	a9, a5, 1
	extui	a9, a9, 0, 16
.LVL37:
	.loc 1 819 0
	bnez.n	a12, .L35
	.loc 1 820 0
	mov.n	a11, a9
	mov.n	a10, a7
	call8	pbuf_put_at
.LVL38:
	.loc 1 821 0
	addi.n	a5, a5, 2
.LVL39:
	extui	a13, a5, 0, 16
.LVL40:
	.loc 1 824 0
	add.n	a4, a3, a2
	l32r	a5, .LC14
.LVL41:
	addx8	a4, a4, a2
	addx4	a4, a4, a5
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a5, a4, 0
	movi	a4, 0xfd
	and	a4, a5, a4
	movi	a5, 0x100
	bnei	a4, 1, .L36
	.loc 1 825 0
	l32r	a8, .LC20
	s16i	a8, sp, 12
	j	.L37
.L36:
	.loc 1 827 0
	s16i	a5, sp, 12
.L37:
	.loc 1 830 0
	movi.n	a12, 4
	addi.n	a11, sp, 12
	mov.n	a10, a7
	.loc 1 861 0
	add.n	a3, a3, a2
	.loc 1 829 0
	s16i	a5, sp, 14
	.loc 1 830 0
	call8	pbuf_take_at
.LVL42:
	.loc 1 861 0
	addx8	a8, a3, a2
	l32r	a3, .LC14
	.loc 1 863 0
	l32r	a4, .LC19
	.loc 1 861 0
	addx4	a2, a8, a3
.LVL43:
	l8ui	a12, a2, 27
	.loc 1 863 0
	l32r	a3, .LC21
	l8ui	a2, a2, 31
	.loc 1 861 0
	addx4	a12, a12, a12
	.loc 1 863 0
	addx4	a2, a2, a3
	l32i.n	a10, a2, 0
	movi.n	a13, 0x35
	addx4	a12, a12, a4
	mov.n	a11, a7
	call8	udp_sendto
.LVL44:
	extui	a2, a10, 0, 8
.LVL45:
	.loc 1 866 0
	mov.n	a10, a7
.LVL46:
	call8	pbuf_free
.LVL47:
	.loc 1 863 0
	mov.n	a10, a2
.LVL48:
.L31:
.LBE3:
	.loc 1 872 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	dns_send, .-dns_send
	.section	.rodata.str1.1
.LC24:
	.string	"array index out of bounds"
.LC30:
	.string	"unknown dns_table entry state:"
	.section	.text.dns_check_entry,"ax",@progbits
	.literal_position
	.literal .LC25, .LC24
	.literal .LC26, __func__$6724
	.literal .LC27, .LC7
	.literal .LC28, dns_table
	.literal .LC29, dns_servers
	.literal .LC31, .LC30
	.align	4
	.type	dns_check_entry, @function
dns_check_entry:
.LFB40:
	.loc 1 1041 0
.LVL49:
	entry	sp, 32
.LCFI3:
.LVL50:
	.loc 1 1045 0
	bltui	a2, 4, .L48
	.loc 1 1045 0 is_stmt 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC26
	movi	a11, 0x415
	j	.L102
.L48:
	.loc 1 1047 0 is_stmt 1
	slli	a3, a2, 3
	l32r	a4, .LC28
	add.n	a8, a3, a2
	addx8	a8, a8, a2
	addx4	a8, a8, a4
	l8ui	a9, a8, 26
	beqi	a9, 1, .L50
	beqz.n	a9, .L47
	beqi	a9, 2, .L52
	beqi	a9, 3, .L53
	j	.L98
.L50:
.LBB6:
.LBB7:
	.loc 1 1016 0
	call8	esp_random
.LVL51:
	movi.n	a9, 4
	extui	a10, a10, 0, 16
.LVL52:
	mov.n	a8, a4
	movi	a12, 0x124
	mov.n	a11, a9
	loop	a11, .L55_LEND
.LVL53:
.L55:
	.loc 1 1020 0
	l8ui	a13, a8, 26
	bnei	a13, 2, .L54
	l16ui	a13, a8, 24
	beq	a13, a10, .L50
.L54:
.LVL54:
	addi.n	a9, a9, -1
.LVL55:
	extui	a9, a9, 0, 8
.LVL56:
	add.n	a8, a8, a12
	.L55_LEND:
.LBE7:
.LBE6:
	.loc 1 1050 0
	add.n	a3, a3, a2
	addx8	a3, a3, a2
	addx4	a8, a3, a4
	.loc 1 1051 0
	movi.n	a3, 2
	s8i	a3, a8, 26
	.loc 1 1053 0
	movi.n	a3, 1
	.loc 1 1052 0
	s8i	a9, a8, 27
	.loc 1 1054 0
	s8i	a9, a8, 29
	.loc 1 1050 0
	s16i	a10, a8, 24
	.loc 1 1053 0
	s8i	a3, a8, 28
	.loc 1 1056 0
	l32r	a9, .LC29
	addi	a8, a8, 27
	j	.L56
.LVL57:
.L59:
	.loc 1 1057 0
	addi.n	a4, a4, 1
	s8i	a4, a8, 0
.L56:
	.loc 1 1056 0
	l8ui	a4, a8, 0
	bgeui	a4, 3, .L68
	.loc 1 1056 0 is_stmt 0 discriminator 1
	addx4	a3, a4, a4
	addx4	a3, a3, a9
	l8ui	a10, a3, 16
	bnei	a10, 6, .L58
	.loc 1 1056 0 discriminator 2
	l32i.n	a10, a3, 0
	bnez.n	a10, .L68
	.loc 1 1056 0 discriminator 4
	l32i.n	a10, a3, 4
	bnez.n	a10, .L68
	.loc 1 1056 0 discriminator 6
	l32i.n	a10, a3, 8
	bnez.n	a10, .L68
	.loc 1 1056 0 discriminator 8
	l32i.n	a3, a3, 12
	j	.L101
.L58:
	.loc 1 1056 0 discriminator 3
	l32i.n	a3, a3, 0
.L101:
	beqz.n	a3, .L59
	j	.L68
.L52:
	.loc 1 1068 0 is_stmt 1
	l8ui	a9, a8, 28
	addi.n	a9, a9, -1
	extui	a9, a9, 0, 8
	s8i	a9, a8, 28
	bnez.n	a9, .L47
	.loc 1 1069 0
	l8ui	a9, a8, 29
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	s8i	a9, a8, 29
	bnei	a9, 4, .L99
	.loc 1 1072 0
	addi	a8, a8, 27
	l32r	a9, .LC29
	j	.L61
.L66:
	.loc 1 1073 0
	s8i	a11, a8, 0
.L61:
	.loc 1 1072 0
	l8ui	a11, a8, 0
	bgei	a11, 2, .L63
	.loc 1 1072 0 is_stmt 0 discriminator 1
	addi.n	a11, a11, 1
	slli	a10, a11, 2
	add.n	a12, a10, a11
	addx4	a12, a12, a9
	l8ui	a13, a12, 16
	bnei	a13, 6, .L64
	.loc 1 1072 0 discriminator 2
	l32i.n	a13, a12, 0
	bnez.n	a13, .L65
	.loc 1 1072 0 discriminator 4
	l32i.n	a13, a12, 4
	bnez.n	a13, .L65
	.loc 1 1072 0 discriminator 6
	l32i.n	a13, a12, 8
	bnez.n	a13, .L65
	.loc 1 1072 0 discriminator 8
	l32i.n	a12, a12, 12
	beqz.n	a12, .L66
	j	.L65
.L64:
	.loc 1 1072 0 discriminator 3
	l32i.n	a10, a12, 0
	beqz.n	a10, .L66
	j	.L67
.L100:
	.loc 1 1076 0 is_stmt 1 discriminator 5
	l32i.n	a8, a9, 4
	bnez.n	a8, .L67
	.loc 1 1076 0 is_stmt 0 discriminator 7
	l32i.n	a8, a9, 8
	bnez.n	a8, .L67
	.loc 1 1076 0 discriminator 9
	l32i.n	a8, a9, 12
	beqz.n	a8, .L63
.L67:
	.loc 1 1082 0 is_stmt 1
	add.n	a8, a3, a2
	addx8	a8, a8, a2
	addx4	a8, a8, a4
	.loc 1 1083 0
	movi.n	a3, 1
	s8i	a3, a8, 28
	.loc 1 1084 0
	movi.n	a3, 0
	.loc 1 1082 0
	s8i	a11, a8, 27
	.loc 1 1084 0
	s8i	a3, a8, 29
	j	.L68
.L63:
	.loc 1 1088 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL58:
	j	.L70
.L99:
	.loc 1 1095 0
	s8i	a9, a8, 28
.L68:
	.loc 1 1099 0
	mov.n	a10, a2
	call8	dns_send
.LVL59:
	retw.n
.L53:
	.loc 1 1108 0
	l32i.n	a9, a8, 0
	bnez.n	a9, .L69
.L70:
	.loc 1 1111 0
	add.n	a8, a3, a2
	addx8	a2, a8, a2
.LVL60:
	addx4	a8, a2, a4
	movi.n	a2, 0
	s8i	a2, a8, 26
	retw.n
.LVL61:
.L69:
	.loc 1 1108 0 discriminator 1
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 0
	beqz.n	a9, .L70
	retw.n
.L98:
	.loc 1 1118 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC26
	movi	a11, 0x45e
.L102:
	l32r	a10, .LC27
	call8	__assert_func
.LVL62:
.L65:
	.loc 1 1076 0
	add.n	a10, a10, a11
	addx4	a9, a10, a9
	l32i.n	a8, a9, 0
	bnez.n	a8, .L67
	j	.L100
.L47:
	retw.n
.LFE40:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_lookup,"ax",@progbits
	.literal_position
	.literal .LC32, dns_table
	.align	4
	.type	dns_lookup, @function
dns_lookup:
.LFB32:
	.loc 1 635 0
.LVL63:
	entry	sp, 32
.LCFI4:
.LVL64:
	l32r	a7, .LC32
	.loc 1 654 0
	movi.n	a8, -3
	and	a4, a4, a8
.LVL65:
	.loc 1 635 0
	movi.n	a5, 0
	mov.n	a6, a7
	.loc 1 654 0
	addi.n	a4, a4, -1
.LVL66:
.L109:
	.loc 1 652 0
	l8ui	a8, a7, 26
	bnei	a8, 3, .L104
	.loc 1 653 0 discriminator 1
	movi	a12, 0x100
	addi	a11, a7, 32
	mov.n	a10, a2
	call8	lwip_strnicmp
.LVL67:
	.loc 1 652 0 discriminator 1
	bnez.n	a10, .L104
	.loc 1 654 0
	l8ui	a8, a7, 20
	movi.n	a9, 1
	.loc 1 653 0
	bnei	a8, 6, .L105
	.loc 1 654 0 discriminator 1
	moveqz	a10, a9, a4
	j	.L115
.L105:
	.loc 1 654 0 is_stmt 0 discriminator 2
	movnez	a10, a9, a4
.L115:
	extui	a10, a10, 0, 8
	.loc 1 653 0 is_stmt 1 discriminator 2
	beqz.n	a10, .L104
	.loc 1 661 0
	mov.n	a2, a3
.LVL68:
	.loc 1 658 0
	beqz.n	a3, .L107
.LVL69:
	.loc 1 659 0
	addx8	a9, a5, a5
	s8i	a8, a3, 16
	addx8	a8, a9, a5
	addx4	a8, a8, a6
	l8ui	a2, a8, 20
.LVL70:
	bnei	a2, 6, .L108
	.loc 1 659 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 4
	s32i.n	a2, a3, 0
	l32i.n	a2, a8, 8
	s32i.n	a2, a3, 4
	l32i.n	a2, a8, 12
	s32i.n	a2, a3, 8
	l32i.n	a2, a8, 16
	s32i.n	a2, a3, 12
	j	.L116
.L108:
	.loc 1 659 0 discriminator 2
	l32i.n	a2, a8, 4
	s32i.n	a2, a3, 0
.L116:
	.loc 1 661 0 is_stmt 1 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL71:
.L104:
	movi	a8, 0x124
	addi.n	a5, a5, 1
.LVL72:
	add.n	a7, a7, a8
	.loc 1 651 0
	bnei	a5, 4, .L109
	.loc 1 665 0
	movi	a2, 0xf0
.LVL73:
.L107:
	.loc 1 666 0
	retw.n
.LFE32:
	.size	dns_lookup, .-dns_lookup
	.section	.text.dns_recv,"ax",@progbits
	.literal_position
	.literal .LC33, dns_table
	.literal .LC34, dns_servers
	.literal .LC35, 65535
	.literal .LC36, 7168
	.literal .LC37, 4096
	.align	4
	.type	dns_recv, @function
dns_recv:
.LFB43:
	.loc 1 1173 0
.LVL74:
	entry	sp, 96
.LCFI5:
	.loc 1 1187 0
	l16ui	a2, a4, 8
.LVL75:
	movi.n	a3, 0xf
.LVL76:
	bgeu	a3, a2, .L137
	.loc 1 1194 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	addi	a11, sp, 16
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL77:
	bnei	a10, 12, .L137
	.loc 1 1196 0
	l16ui	a10, sp, 16
	movi.n	a2, 0
	call8	lwip_htons
.LVL78:
	l32r	a3, .LC33
	movi	a8, 0x124
	mov.n	a6, a3
.LVL79:
	movi.n	a7, 4
.LVL80:
.L143:
.LBB16:
	.loc 1 1199 0
	l8ui	a9, a3, 26
	bnei	a9, 2, .L119
	.loc 1 1199 0 is_stmt 0 discriminator 1
	l16ui	a9, a3, 24
	bne	a9, a10, .L119
	.loc 1 1204 0 is_stmt 1
	l16ui	a10, sp, 20
.LVL81:
	.loc 1 1212 0
	movi.n	a3, -1
	.loc 1 1204 0
	call8	lwip_htons
.LVL82:
	mov.n	a7, a10
.LVL83:
	.loc 1 1205 0
	l16ui	a10, sp, 22
	call8	lwip_htons
.LVL84:
	.loc 1 1212 0
	l8ui	a8, sp, 18
	.loc 1 1205 0
	s32i.n	a10, sp, 48
.LVL85:
	.loc 1 1212 0
	xor	a3, a3, a8
	extui	a3, a3, 7, 1
	bnez.n	a3, .L137
	addi.n	a10, a7, -1
	movi.n	a9, 1
	movnez	a3, a9, a10
	mov.n	a10, a3
	bnez.n	a3, .L137
	.loc 1 1223 0
	slli	a3, a2, 3
	add.n	a8, a3, a2
	addx8	a8, a8, a2
	addx4	a8, a8, a6
	l8ui	a8, a8, 27
	l32r	a12, .LC34
	addx4	a8, a8, a8
	addx4	a8, a8, a12
	l8ui	a11, a5, 16
	l8ui	a12, a8, 16
	bne	a12, a11, .L137
	.loc 1 1223 0 is_stmt 0 discriminator 1
	bnei	a12, 6, .L120
	.loc 1 1223 0 discriminator 3
	l32i.n	a12, a5, 0
	l32i.n	a11, a8, 0
	bne	a12, a11, .L122
	.loc 1 1223 0 discriminator 6
	l32i.n	a12, a5, 4
	l32i.n	a11, a8, 4
	bne	a12, a11, .L122
	.loc 1 1223 0 discriminator 8
	l32i.n	a12, a5, 8
	l32i.n	a11, a8, 8
	bne	a12, a11, .L122
	.loc 1 1223 0 discriminator 10
	l32i.n	a5, a5, 12
.LVL86:
	l32i.n	a8, a8, 12
	sub	a5, a5, a8
	moveqz	a9, a10, a5
	j	.L122
.LVL87:
.L120:
	.loc 1 1223 0 discriminator 4
	l32i.n	a5, a5, 0
.LVL88:
	l32i.n	a8, a8, 0
	sub	a5, a5, a8
	moveqz	a9, a10, a5
.L122:
	.loc 1 1223 0 discriminator 18
	bnez.n	a9, .L137
	.loc 1 1230 0 is_stmt 1
	add.n	a9, a3, a2
	addx8	a9, a9, a2
	addx4	a9, a9, a6
	addi	a5, a9, 32
.LVL89:
.LBB17:
.LBB18:
	.loc 1 683 0
	movi.n	a7, 0xc
.LVL90:
.L126:
	.loc 1 686 0
	addi.n	a12, a7, 1
	extui	a12, a12, 0, 16
.LVL91:
	mov.n	a11, a7
	mov.n	a10, a4
	s32i.n	a12, sp, 56
	call8	pbuf_try_get_at
.LVL92:
	.loc 1 687 0
	l32i.n	a12, sp, 56
	bltz	a10, .L137
	.loc 1 691 0
	movi	a9, 0xc0
	and	a8, a10, a9
	beq	a8, a9, .L137
	add.n	a13, a5, a10
	mov.n	a7, a12
.LVL93:
	j	.L124
.LVL94:
.L125:
.LBB19:
	.loc 1 697 0
	mov.n	a11, a7
	mov.n	a10, a4
	s32i.n	a13, sp, 56
	call8	pbuf_try_get_at
.LVL95:
	.loc 1 698 0
	l32i.n	a13, sp, 56
	bltz	a10, .L137
	.loc 1 701 0
	l8ui	a11, a5, 0
	extui	a10, a10, 0, 8
.LVL96:
	bne	a11, a10, .L137
	.loc 1 704 0
	addi.n	a8, a7, 1
	extui	a7, a8, 0, 16
.LVL97:
	.loc 1 705 0
	addi.n	a5, a5, 1
.LVL98:
.L124:
.LBE19:
	.loc 1 696 0
	bne	a13, a5, .L125
	.loc 1 710 0
	mov.n	a11, a7
	mov.n	a10, a4
	.loc 1 708 0
	addi.n	a5, a13, 1
.LVL99:
	.loc 1 710 0
	call8	pbuf_try_get_at
.LVL100:
	.loc 1 711 0
	bltz	a10, .L137
	.loc 1 714 0
	bnez.n	a10, .L126
	.loc 1 716 0
	addi.n	a13, a7, 1
.LBE18:
.LBE17:
	.loc 1 1231 0
	l32r	a5, .LC35
.LVL101:
.LBB21:
.LBB20:
	.loc 1 716 0
	extui	a13, a13, 0, 16
.LBE20:
.LBE21:
	.loc 1 1231 0
	beq	a13, a5, .L137
	.loc 1 1237 0
	movi.n	a12, 4
	addi	a11, sp, 40
	mov.n	a10, a4
.LVL102:
	call8	pbuf_copy_partial
.LVL103:
	bnei	a10, 4, .L137
	.loc 1 1240 0
	l16ui	a5, sp, 42
	bnei	a5, 256, .L137
	.loc 1 1241 0 discriminator 1
	add.n	a5, a3, a2
	addx8	a5, a5, a2
	movi	a9, 0x120
	addx4	a5, a5, a6
	add.n	a5, a5, a9
	.loc 1 1240 0 discriminator 1
	l8ui	a9, a5, 0
	movi	a5, 0xfd
	and	a5, a9, a5
	l16ui	a9, sp, 40
	bnei	a5, 1, .L127
	.loc 1 1241 0
	l32r	a5, .LC36
	bne	a9, a5, .L137
	j	.L128
.L127:
	.loc 1 1242 0
	bnei	a9, 256, .L137
.L128:
	.loc 1 1250 0
	l8ui	a5, sp, 19
	.loc 1 1247 0
	addi.n	a8, a7, 5
	.loc 1 1250 0
	extui	a5, a5, 0, 4
	.loc 1 1247 0
	extui	a8, a8, 0, 16
.LVL104:
	.loc 1 1250 0
	bnez.n	a5, .L129
	.loc 1 1289 0
	add.n	a5, a3, a2
	addx8	a5, a5, a2
	slli	a5, a5, 2
	s32i.n	a5, sp, 52
	j	.L130
.LVL105:
.L140:
.LBB22:
.LBB23:
	.loc 1 738 0
	movi	a7, 0xc0
.LVL106:
.L132:
	.loc 1 733 0
	addi.n	a10, a8, 1
	extui	a5, a10, 0, 16
.LVL107:
	mov.n	a11, a8
	mov.n	a10, a4
.LVL108:
	call8	pbuf_try_get_at
.LVL109:
	.loc 1 734 0
	bltz	a10, .L137
	.loc 1 738 0
	and	a8, a10, a7
	beq	a8, a7, .L131
	.loc 1 743 0
	l16ui	a8, a4, 8
	add.n	a10, a5, a10
.LVL110:
	bge	a10, a8, .L137
	.loc 1 746 0
	extui	a8, a10, 0, 16
.LVL111:
	.loc 1 748 0
	mov.n	a11, a8
	mov.n	a10, a4
.LVL112:
	s32i.n	a8, sp, 56
	call8	pbuf_try_get_at
.LVL113:
	.loc 1 749 0
	l32i.n	a8, sp, 56
	bltz	a10, .L137
	.loc 1 752 0
	bnez.n	a10, .L132
	.loc 1 746 0
	mov.n	a5, a8
.L131:
.LVL114:
	.loc 1 754 0
	addi.n	a13, a5, 1
.LBE23:
.LBE22:
	.loc 1 1256 0
	l32r	a7, .LC35
.LBB25:
.LBB24:
	.loc 1 754 0
	extui	a13, a13, 0, 16
.LBE24:
.LBE25:
	.loc 1 1256 0
	beq	a13, a7, .L137
	.loc 1 1261 0
	movi.n	a12, 0xa
	addi	a11, sp, 28
	mov.n	a10, a4
.LVL115:
	call8	pbuf_copy_partial
.LVL116:
	bnei	a10, 10, .L137
	.loc 1 1266 0
	l16ui	a8, sp, 30
	.loc 1 1264 0
	addi.n	a5, a5, 11
.LVL117:
	extui	a5, a5, 0, 16
.LVL118:
	l16ui	a10, sp, 36
	.loc 1 1266 0
	bnei	a8, 256, .L133
	.loc 1 1268 0
	l16ui	a8, sp, 28
	bnei	a8, 256, .L134
	.loc 1 1268 0 is_stmt 0 discriminator 1
	movi	a8, 0x400
	bne	a10, a8, .L133
	.loc 1 1270 0 is_stmt 1
	l32i.n	a9, sp, 52
	l32r	a8, .LC33
	add.n	a8, a8, a9
	movi	a9, 0x120
	add.n	a9, a8, a9
	l8ui	a11, a9, 0
	movi	a9, 0xfd
	and	a9, a11, a9
	beqi	a9, 1, .L133
.LBB26:
	.loc 1 1275 0
	mov.n	a13, a5
	movi.n	a12, 4
	mov.n	a11, sp
	mov.n	a10, a4
	s32i.n	a8, sp, 56
	call8	pbuf_copy_partial
.LVL119:
	l32i.n	a8, sp, 56
	bnei	a10, 4, .L137
	.loc 1 1278 0
	l32i.n	a3, sp, 0
	s32i.n	a3, a8, 4
	movi.n	a3, 0
	j	.L157
.L134:
.LBE26:
	.loc 1 1287 0
	l32r	a9, .LC36
	bne	a8, a9, .L133
	.loc 1 1287 0 is_stmt 0 discriminator 1
	l32r	a8, .LC37
	bne	a10, a8, .L133
	.loc 1 1289 0 is_stmt 1
	l32i.n	a9, sp, 52
	l32r	a8, .LC33
	add.n	a8, a8, a9
	movi	a9, 0x120
	add.n	a9, a8, a9
	l8ui	a11, a9, 0
	movi	a9, 0xfd
	and	a9, a11, a9
	bnei	a9, 1, .L133
.LBB27:
	.loc 1 1294 0
	mov.n	a13, a5
	movi.n	a12, 0x10
	mov.n	a11, sp
	mov.n	a10, a4
	s32i.n	a8, sp, 56
	call8	pbuf_copy_partial
.LVL120:
	l32i.n	a8, sp, 56
	bnei	a10, 16, .L137
	.loc 1 1297 0
	l32i.n	a3, sp, 0
	s32i.n	a3, a8, 4
	l32i.n	a3, sp, 4
	s32i.n	a3, a8, 8
	l32i.n	a3, sp, 8
	s32i.n	a3, a8, 12
	l32i.n	a3, sp, 12
	s32i.n	a3, a8, 16
	movi.n	a3, 6
.L157:
	s8i	a3, a8, 20
	.loc 1 1298 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL121:
	.loc 1 1300 0
	l32i.n	a10, sp, 32
	call8	lwip_htonl
.LVL122:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	dns_correct_response
.LVL123:
	retw.n
.L133:
.LBE27:
	.loc 1 1307 0
	call8	lwip_htons
.LVL124:
	l32r	a8, .LC35
	add.n	a10, a5, a10
	blt	a8, a10, .L137
	.loc 1 1310 0
	l16ui	a10, sp, 36
	call8	lwip_htons
.LVL125:
	add.n	a10, a5, a10
	.loc 1 1311 0
	l32i.n	a5, sp, 48
.LVL126:
	.loc 1 1310 0
	extui	a8, a10, 0, 16
.LVL127:
	.loc 1 1311 0
	addi.n	a7, a5, -1
	extui	a9, a7, 0, 16
	s32i.n	a9, sp, 48
.LVL128:
.L130:
	.loc 1 1253 0
	l32i.n	a5, sp, 48
	beqz.n	a5, .L139
	.loc 1 1253 0 is_stmt 0 discriminator 1
	l16ui	a5, a4, 8
	bltu	a8, a5, .L140
.L139:
	.loc 1 1314 0 is_stmt 1
	add.n	a5, a3, a2
	addx8	a5, a5, a2
	addx4	a7, a5, a6
	movi	a5, 0x120
	add.n	a5, a7, a5
	l8ui	a8, a5, 0
.LVL129:
	addi	a7, a8, -2
	extui	a7, a7, 0, 8
	bgeui	a7, 2, .L129
	.loc 1 1318 0
	movi.n	a7, 1
	.loc 1 1316 0
	beqi	a8, 2, .L156
.L141:
	.loc 1 1321 0
	movi.n	a7, 0
.L156:
	.loc 1 1324 0
	add.n	a3, a3, a2
	addx8	a3, a3, a2
	.loc 1 1321 0
	s8i	a7, a5, 0
	.loc 1 1323 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL130:
	.loc 1 1324 0
	addx4	a6, a3, a6
	movi.n	a3, 1
	s8i	a3, a6, 26
	.loc 1 1325 0
	mov.n	a10, a2
	call8	dns_check_entry
.LVL131:
	.loc 1 1326 0
	retw.n
.L129:
	.loc 1 1332 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL132:
	.loc 1 1334 0
	add.n	a3, a3, a2
	.loc 1 1333 0
	mov.n	a10, a2
	movi.n	a11, 0
	.loc 1 1334 0
	addx8	a2, a3, a2
.LVL133:
	addx4	a6, a2, a6
	.loc 1 1333 0
	call8	dns_call_found
.LVL134:
	.loc 1 1334 0
	movi.n	a2, 0
	s8i	a2, a6, 26
	.loc 1 1335 0
	retw.n
.LVL135:
.L119:
	addi.n	a2, a2, 1
.LVL136:
	add.n	a3, a3, a8
	addi.n	a7, a7, -1
	bnez.n	a7, .L143
.LVL137:
.L137:
.LBE16:
	.loc 1 1342 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL138:
	retw.n
.LFE43:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_init,"ax",@progbits
	.align	4
	.global	dns_init
	.type	dns_init, @function
dns_init:
.LFB27:
	.loc 1 319 0
	entry	sp, 32
.LCFI6:
	retw.n
.LFE27:
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.literal_position
	.literal .LC38, dns_servers
	.literal .LC39, ip_addr_any
	.align	4
	.global	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB28:
	.loc 1 377 0
.LVL139:
	.loc 1 377 0
	entry	sp, 32
.LCFI7:
	.loc 1 377 0
	extui	a2, a2, 0, 8
	mov.n	a11, a3
	.loc 1 378 0
	bgeui	a2, 3, .L159
	slli	a8, a2, 2
	l32r	a10, .LC38
	.loc 1 380 0
	add.n	a2, a8, a2
.LVL140:
	movi.n	a12, 0x14
	.loc 1 379 0
	beqz.n	a3, .L161
	j	.L162
.L161:
.LVL141:
.LBB30:
.LBB31:
	.loc 1 382 0
	l32r	a11, .LC39
.LVL142:
.L162:
	addx4	a10, a2, a10
	call8	memcpy
.LVL143:
.L159:
	retw.n
.LBE31:
.LBE30:
.LFE28:
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_clear_servers,"ax",@progbits
	.align	4
	.global	dns_clear_servers
	.type	dns_clear_servers, @function
dns_clear_servers:
.LFB29:
	.loc 1 390 0
.LVL144:
	entry	sp, 32
.LCFI8:
.LVL145:
	.loc 1 390 0
	extui	a2, a2, 0, 8
	movi.n	a3, 0
.LVL146:
.L166:
	.loc 1 394 0
	extui	a8, a3, 0, 8
	bnei	a8, 2, .L167
	bnez.n	a2, .L164
.L167:
	.loc 1 398 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	dns_setserver
.LVL147:
.L164:
	addi.n	a3, a3, 1
.LVL148:
	.loc 1 393 0 discriminator 2
	bnei	a3, 3, .L166
	.loc 1 400 0
	retw.n
.LFE29:
	.size	dns_clear_servers, .-dns_clear_servers
	.section	.text.dns_getserver,"ax",@progbits
	.literal_position
	.literal .LC40, ip_addr_any
	.literal .LC41, dns_servers
	.align	4
	.global	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB30:
	.loc 1 413 0
.LVL149:
	entry	sp, 32
.LCFI9:
	.loc 1 413 0
	extui	a8, a2, 0, 8
	.loc 1 417 0
	l32r	a2, .LC40
.LVL150:
	.loc 1 414 0
	bgeui	a8, 3, .L173
	.loc 1 415 0
	l32r	a2, .LC41
	addx4	a8, a8, a8
.LVL151:
	addx4	a2, a8, a2
.L173:
	.loc 1 419 0
	retw.n
.LFE30:
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	4
	.global	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB31:
	.loc 1 428 0
	entry	sp, 32
.LCFI10:
.LVL152:
.LBB34:
.LBB35:
	.loc 1 1132 0
	movi.n	a10, 0
	call8	dns_check_entry
.LVL153:
	movi.n	a10, 1
	call8	dns_check_entry
.LVL154:
	movi.n	a10, 2
	call8	dns_check_entry
.LVL155:
	movi.n	a10, 3
	call8	dns_check_entry
.LVL156:
	retw.n
.LBE35:
.LBE34:
.LFE31:
	.size	dns_tmr, .-dns_tmr
	.section	.rodata.str1.1
.LC42:
	.string	"localhost"
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.literal_position
	.literal .LC43, .LC42
	.literal .LC44, 16777216
	.literal .LC45, 16777343
	.literal .LC46, dns_servers
	.literal .LC47, dns_table
	.literal .LC48, dns_requests
	.literal .LC49, dns_seqno
	.literal .LC50, dns_pcbs
	.literal .LC51, ip_addr_any_type
	.literal .LC52, dns_recv
	.literal .LC53, dns_last_pcb_idx
	.align	4
	.global	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB47:
	.loc 1 1543 0
.LVL157:
	entry	sp, 64
.LCFI11:
	.loc 1 1543 0
	mov.n	a7, a2
	s32i.n	a5, sp, 8
	mov.n	a2, a3
.LVL158:
	.loc 1 1550 0
	movi.n	a5, 0
.LVL159:
	movi.n	a3, 1
.LVL160:
	moveqz	a5, a3, a2
	.loc 1 1543 0
	s32i.n	a4, sp, 4
	.loc 1 1550 0
	extui	a5, a5, 0, 8
	.loc 1 1543 0
	extui	a6, a6, 0, 8
	.loc 1 1550 0
	bnez.n	a5, .L217
	moveqz	a5, a3, a7
	bnez.n	a5, .L217
	.loc 1 1551 0
	l8ui	a9, a7, 0
	.loc 1 1552 0
	movi	a10, 0xf0
	.loc 1 1551 0
	beqz.n	a9, .L241
	.loc 1 1559 0
	mov.n	a10, a7
	call8	strlen
.LVL161:
	s32i.n	a10, sp, 0
.LVL162:
	.loc 1 1560 0
	l32i.n	a4, sp, 0
.LVL163:
	movi	a9, 0xff
	.loc 1 1552 0
	movi	a10, 0xf0
.LVL164:
	.loc 1 1560 0
	bltu	a9, a4, .L241
	.loc 1 1567 0
	l32r	a11, .LC43
	mov.n	a10, a7
	call8	strcmp
.LVL165:
	bnez.n	a10, .L178
	.loc 1 1568 0
	movi.n	a3, -3
	and	a6, a6, a3
.LVL166:
	bnei	a6, 1, .L179
	.loc 1 1568 0 is_stmt 0 discriminator 1
	l32r	a3, .LC44
	s32i.n	a10, a2, 0
	s32i.n	a3, a2, 12
	.loc 1 1568 0 is_stmt 1 discriminator 1
	movi.n	a3, 6
	.loc 1 1568 0 discriminator 1
	s32i.n	a10, a2, 4
	s32i.n	a10, a2, 8
	.loc 1 1568 0 discriminator 1
	s8i	a3, a2, 16
	j	.L241
.L179:
	.loc 1 1568 0 is_stmt 0 discriminator 2
	l32r	a3, .LC45
	.loc 1 1568 0 is_stmt 1 discriminator 2
	s8i	a10, a2, 16
	.loc 1 1568 0 discriminator 2
	s32i.n	a3, a2, 0
	j	.L241
.L178:
	.loc 1 1574 0
	mov.n	a11, a2
	mov.n	a10, a7
	call8	ipaddr_aton
.LVL167:
	beqz.n	a10, .L180
	.loc 1 1576 0 discriminator 1
	mov.n	a9, a5
	movnez	a9, a3, a6
	l8ui	a10, a2, 16
	beqz.n	a9, .L181
	addi	a9, a10, -6
	moveqz	a5, a3, a9
	beqz.n	a5, .L181
.L182:
	.loc 1 1580 0
	movi.n	a10, 0
	j	.L241
.L181:
	.loc 1 1577 0
	beqi	a6, 1, .L180
	beqz.n	a10, .L182
.L180:
	.loc 1 1584 0
	mov.n	a12, a6
	mov.n	a11, a2
	mov.n	a10, a7
	call8	dns_lookup
.LVL168:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L182
	.loc 1 1588 0
	addi	a3, a6, -2
	extui	a5, a3, 0, 8
	bltui	a5, 2, .L184
.L186:
.LVL169:
.LBB47:
.LBB48:
	.loc 1 1517 0
	movi.n	a9, 0
	l32r	a8, .LC46
	movi.n	a10, 1
	.loc 1 1518 0
	mov.n	a11, a9
	j	.L185
.LVL170:
.L184:
.LBE48:
.LBE47:
.LBB51:
	.loc 1 1596 0
	movi.n	a5, 0
	movi.n	a12, 1
	movnez	a12, a5, a3
	mov.n	a11, a2
	mov.n	a10, a7
	call8	dns_lookup
.LVL171:
	extui	a10, a10, 0, 8
	bne	a10, a5, .L186
	j	.L182
.LVL172:
.L185:
.LBE51:
.LBB52:
.LBB49:
	.loc 1 1518 0
	l8ui	a3, a8, 16
	l32i.n	a5, a8, 0
	bnei	a3, 6, .L187
	movi.n	a3, 1
	bnez.n	a5, .L188
	l32i.n	a5, a8, 4
	bnez.n	a5, .L188
	l32i.n	a5, a8, 8
	bnez.n	a5, .L188
	l32i.n	a3, a8, 12
	movnez	a5, a10, a3
	mov.n	a3, a5
.L188:
	extui	a3, a3, 0, 1
	j	.L189
.L187:
	mov.n	a3, a11
	movnez	a3, a10, a5
	extui	a3, a3, 0, 8
.L189:
	bnez.n	a3, .L190
	.loc 1 1517 0
	addi.n	a9, a9, 1
.LVL173:
	addi	a8, a8, 20
	bnei	a9, 3, .L185
.LBE49:
.LBE52:
	.loc 1 1620 0
	movi	a10, 0xfa
	j	.L241
.L190:
	l32r	a5, .LC47
.LBB53:
.LBB50:
	.loc 1 1518 0
	movi.n	a4, 0
.LVL174:
	mov.n	a3, a5
	mov.n	a15, a5
.LBE50:
.LBE53:
.LBB54:
.LBB55:
	.loc 1 1372 0
	movi	a13, 0x120
.LVL175:
.L192:
	.loc 1 1369 0
	l8ui	a9, a3, 26
	beqi	a9, 2, .L191
.L194:
	.loc 1 1368 0
	addi.n	a8, a4, 1
	movi	a9, 0x124
	extui	a4, a8, 0, 8
.LVL176:
	add.n	a3, a3, a9
	bnei	a4, 4, .L192
	j	.L260
.LVL177:
.L191:
	.loc 1 1370 0
	movi	a12, 0x100
	addi	a11, a3, 32
	mov.n	a10, a7
	s32i.n	a13, sp, 20
	s32i.n	a15, sp, 16
	call8	lwip_strnicmp
.LVL178:
	.loc 1 1369 0
	l32i.n	a13, sp, 20
	l32i.n	a15, sp, 16
	bnez.n	a10, .L194
	.loc 1 1372 0
	add.n	a9, a3, a13
	l8ui	a9, a9, 0
	bne	a9, a6, .L194
	l32r	a9, .LC48
	movi.n	a11, 4
	mov.n	a12, a9
	loop	a11, .L196_LEND
.L196:
.LVL179:
	.loc 1 1381 0
	l32i.n	a14, a9, 0
	bnez.n	a14, .L195
	.loc 1 1382 0
	addx2	a10, a10, a10
.LVL180:
	l32i.n	a8, sp, 4
	.loc 1 1383 0
	l32i.n	a2, sp, 8
.LVL181:
	.loc 1 1382 0
	addx4	a12, a10, a12
	s32i.n	a8, a12, 0
	.loc 1 1383 0
	s32i.n	a2, a12, 4
	.loc 1 1384 0
	s8i	a4, a12, 8
	.loc 1 1385 0
	s8i	a6, a12, 9
	j	.L263
.LVL182:
.L195:
	addi.n	a10, a10, 1
.LVL183:
	addi.n	a9, a9, 12
	.L196_LEND:
	j	.L194
.LVL184:
.L260:
.LBB56:
	.loc 1 1406 0
	l32r	a10, .LC49
	movi.n	a3, 0
	l8ui	a11, a10, 0
	mov.n	a13, a3
	mov.n	a14, a9
	mov.n	a10, a4
	loop	a10, .L200_LEND
.LVL185:
.L200:
.LBE56:
	.loc 1 1401 0
	l8ui	a9, a5, 26
	extui	a12, a3, 0, 8
.LVL186:
	bnez.n	a9, .L197
	.loc 1 1399 0
	addx8	a5, a3, a3
	addx8	a3, a5, a3
.LVL187:
	addx4	a3, a3, a15
	mov.n	a4, a12
	j	.L198
.LVL188:
.L197:
	.loc 1 1405 0
	bnei	a9, 3, .L199
.LBB57:
	.loc 1 1406 0
	l8ui	a9, a5, 30
	sub	a9, a11, a9
	extui	a9, a9, 0, 8
.LVL189:
	.loc 1 1407 0
	bgeu	a13, a9, .L199
	mov.n	a4, a12
	mov.n	a13, a9
.LVL190:
.L199:
	addi.n	a3, a3, 1
.LVL191:
	add.n	a5, a5, a14
	.L200_LEND:
	j	.L261
.LVL192:
.L262:
.LBE57:
	.loc 1 1416 0
	addx8	a3, a4, a4
.LVL193:
	addx8	a3, a3, a4
	addx4	a3, a3, a15
	l8ui	a5, a3, 26
	bnei	a5, 3, .L241
.LVL194:
.L198:
	l32r	a10, .LC48
	.loc 1 1399 0
	movi.n	a5, 0
	movi.n	a12, 4
	loop	a12, .L204_LEND
.LVL195:
.L204:
	.loc 1 1431 0
	l32i.n	a9, a10, 0
	bnez.n	a9, .L202
.LVL196:
	.loc 1 1441 0
	slli	a8, a5, 1
	l32r	a2, .LC48
.LVL197:
	add.n	a10, a8, a5
	.loc 1 1451 0
	movi.n	a12, 1
	.loc 1 1441 0
	addx4	a10, a10, a2
	.loc 1 1451 0
	s8i	a12, a3, 26
	.loc 1 1452 0
	s8i	a11, a3, 30
	.loc 1 1456 0
	l32i.n	a2, sp, 8
	.loc 1 1453 0
	addmi	a11, a3, 0x100
	s8i	a6, a11, 32
	.loc 1 1454 0
	s8i	a6, a10, 9
	.loc 1 1457 0
	l32i.n	a6, sp, 0
	.loc 1 1456 0
	s32i.n	a2, a10, 4
	.loc 1 1441 0
	s32i.n	a8, sp, 12
	.loc 1 1457 0
	movi	a2, 0xff
	.loc 1 1455 0
	l32i.n	a8, sp, 4
	.loc 1 1457 0
	minu	a2, a6, a2
.LVL198:
	.loc 1 1441 0
	s8i	a4, a10, 8
	.loc 1 1455 0
	s32i.n	a8, a10, 0
	.loc 1 1458 0
	mov.n	a12, a2
	mov.n	a11, a7
	addi	a10, a3, 32
	s32i.n	a9, sp, 16
	call8	memcpy
.LVL199:
	.loc 1 1459 0
	l32i.n	a9, sp, 16
	add.n	a2, a3, a2
.LVL200:
	s8i	a9, a2, 32
.LVL201:
	l32r	a10, .LC50
	mov.n	a2, a9
	movi.n	a9, 4
	j	.L203
.LVL202:
.L202:
	addi.n	a5, a5, 1
.LVL203:
	addi.n	a10, a10, 12
	.L204_LEND:
	j	.L264
.LVL204:
.L203:
	extui	a8, a2, 0, 8
.LBB58:
.LBB59:
	.loc 1 916 0
	l32i.n	a7, a10, 0
	s32i.n	a8, sp, 0
.LVL205:
	beqz.n	a7, .L205
.LVL206:
	addi.n	a2, a2, 1
.LVL207:
	addi.n	a10, a10, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L203
	j	.L206
.LVL208:
.L207:
.LBB60:
.LBB61:
.LBB62:
	.loc 1 887 0
	call8	esp_random
.LVL209:
	.loc 1 888 0
	extui	a11, a10, 0, 16
	movi	a8, 0x3ff
	bgeu	a8, a11, .L207
	.loc 1 893 0
	mov.n	a12, a11
	l32r	a11, .LC51
	mov.n	a10, a6
.LVL210:
	call8	udp_bind
.LVL211:
	extui	a12, a10, 0, 8
.LVL212:
.LBE62:
	.loc 1 894 0
	sext	a11, a12, 7
	movi.n	a10, -8
.LVL213:
	beq	a11, a10, .L207
	.loc 1 895 0
	beqz.n	a12, .L209
	.loc 1 896 0
	mov.n	a10, a6
	call8	udp_remove
.LVL214:
	j	.L210
.LVL215:
.L209:
	.loc 1 899 0
	l32r	a11, .LC52
	mov.n	a10, a6
	call8	udp_recv
.LVL216:
	mov.n	a7, a6
.L210:
.LBE61:
.LBE60:
	.loc 1 921 0
	l32r	a6, .LC50
.LVL217:
	addx4	a2, a2, a6
	s32i.n	a7, a2, 0
	.loc 1 922 0
	beqz.n	a7, .L206
	.loc 1 924 0
	l32r	a2, .LC53
	l32i.n	a8, sp, 0
	s8i	a8, a2, 0
	mov.n	a2, a8
	j	.L211
.LVL218:
.L206:
	.loc 1 930 0
	l32r	a6, .LC53
	.loc 1 932 0
	movi.n	a7, 4
	.loc 1 930 0
	l8ui	a2, a6, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
.LVL219:
.L214:
	.loc 1 931 0
	bltui	a2, 4, .L212
	.loc 1 932 0
	movi.n	a2, 0
.LVL220:
.L212:
	.loc 1 934 0
	l32r	a8, .LC50
	addx4	a9, a2, a8
	l32i.n	a9, a9, 0
	beqz.n	a9, .L213
	.loc 1 935 0
	s8i	a2, a6, 0
	j	.L211
.L213:
	.loc 1 930 0
	addi.n	a2, a2, 1
.LVL221:
	extui	a2, a2, 0, 8
.LVL222:
	addi.n	a7, a7, -1
	bnez.n	a7, .L214
	.loc 1 939 0
	movi.n	a2, 4
.LVL223:
.L211:
.LBE59:
.LBE58:
	.loc 1 1462 0
	s8i	a2, a3, 31
	.loc 1 1463 0
	bnei	a2, 4, .L215
	.loc 1 1466 0
	movi.n	a2, 0
	s8i	a2, a3, 26
	.loc 1 1467 0
	l32i.n	a2, sp, 12
	l32r	a3, .LC48
.LVL224:
	add.n	a5, a2, a5
.LVL225:
	addx4	a5, a5, a3
	movi.n	a2, 0
	s32i.n	a2, a5, 0
.L264:
	.loc 1 1468 0
	movi	a10, 0xff
	j	.L241
.LVL226:
.L215:
	.loc 1 1477 0
	l32r	a6, .LC49
	.loc 1 1480 0
	mov.n	a10, a4
	.loc 1 1477 0
	l8ui	a2, a6, 0
	addi.n	a2, a2, 1
	s8i	a2, a6, 0
	.loc 1 1480 0
	call8	dns_check_entry
.LVL227:
.L263:
	.loc 1 1483 0
	movi	a10, 0xfb
	j	.L241
.LVL228:
.L217:
.LBE55:
.LBE54:
	.loc 1 1552 0
	movi	a10, 0xf0
	j	.L241
.LVL229:
.L261:
.LBB68:
.LBB67:
	.loc 1 1419 0
	movi	a10, 0xff
	.loc 1 1416 0
	bnei	a4, 4, .L262
	j	.L241
.LVL230:
.L205:
.LBB66:
.LBB65:
.LBB64:
.LBB63:
	.loc 1 881 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL231:
	mov.n	a6, a10
.LVL232:
	.loc 1 882 0
	beqz.n	a10, .L210
	j	.L207
.LVL233:
.L241:
.LBE63:
.LBE64:
.LBE65:
.LBE66:
.LBE67:
.LBE68:
	.loc 1 1627 0
	mov.n	a2, a10
	retw.n
.LFE47:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	4
	.global	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB45:
	.loc 1 1509 0
.LVL234:
	entry	sp, 32
.LCFI12:
	.loc 1 1510 0
	movi.n	a14, 2
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_gethostbyname_addrtype
.LVL235:
	.loc 1 1511 0
	extui	a2, a10, 0, 8
.LVL236:
	retw.n
.LFE45:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.rodata.__func__$6668,"a",@progbits
	.type	__func__$6668, @object
	.size	__func__$6668, 9
__func__$6668:
	.string	"dns_send"
	.section	.rodata.__func__$6702,"a",@progbits
	.type	__func__$6702, @object
	.size	__func__$6702, 15
__func__$6702:
	.string	"dns_call_found"
	.section	.rodata.__func__$6724,"a",@progbits
	.type	__func__$6724, @object
	.size	__func__$6724, 16
__func__$6724:
	.string	"dns_check_entry"
	.global	dns_mquery_v6group
	.section	.rodata.dns_mquery_v6group,"a",@progbits
	.align	4
	.type	dns_mquery_v6group, @object
	.size	dns_mquery_v6group, 20
dns_mquery_v6group:
	.word	767
	.word	0
	.word	0
	.word	-83886080
	.byte	6
	.zero	3
	.global	dns_mquery_v4group
	.section	.rodata.dns_mquery_v4group,"a",@progbits
	.align	4
	.type	dns_mquery_v4group, @object
	.size	dns_mquery_v4group, 20
dns_mquery_v4group:
	.word	-83885856
	.word	0
	.word	0
	.word	0
	.byte	0
	.zero	3
	.section	.bss.dns_servers,"aw",@nobits
	.align	4
	.type	dns_servers, @object
	.size	dns_servers, 60
dns_servers:
	.zero	60
	.section	.bss.dns_requests,"aw",@nobits
	.align	4
	.type	dns_requests, @object
	.size	dns_requests, 48
dns_requests:
	.zero	48
	.section	.bss.dns_table,"aw",@nobits
	.align	4
	.type	dns_table, @object
	.size	dns_table, 1168
dns_table:
	.zero	1168
	.section	.bss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_last_pcb_idx,"aw",@nobits
	.type	dns_last_pcb_idx, @object
	.size	dns_last_pcb_idx, 1
dns_last_pcb_idx:
	.zero	1
	.section	.bss.dns_pcbs,"aw",@nobits
	.align	4
	.type	dns_pcbs, @object
	.size	dns_pcbs, 16
dns_pcbs:
	.zero	16
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI3-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI5-.LFB43
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI10-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI11-.LFB47
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI12-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 12 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 13 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/dns.h"
	.file 14 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/prot/dns.h"
	.file 15 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/assert.h"
	.file 16 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 17 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 18 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b5b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF242
	.byte	0xc
	.4byte	.LASF243
	.4byte	.LASF244
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x9
	.4byte	0x117
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0xb
	.4byte	0xad
	.4byte	0x12e
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x39
	.4byte	0xcf
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3e
	.byte	0x5
	.byte	0x3d
	.4byte	0x1ac
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x48
	.4byte	0x1d7
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x65
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x18
	.byte	0x6
	.byte	0x8e
	.4byte	0x275
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x6
	.byte	0x90
	.4byte	0x275
	.byte	0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x6
	.byte	0x93
	.4byte	0xad
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9c
	.4byte	0xf0
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.byte	0x9f
	.4byte	0xf0
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa2
	.4byte	0xda
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa5
	.4byte	0xda
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0x6
	.byte	0xac
	.4byte	0xf0
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x6
	.byte	0xaf
	.4byte	0x413
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x6
	.byte	0xb0
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fc
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x7
	.byte	0xeb
	.4byte	0x413
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0xed
	.4byte	0x413
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x7
	.byte	0xf1
	.4byte	0x4d8
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x7
	.byte	0xf2
	.4byte	0x4d8
	.byte	0x18
	.uleb128 0x12
	.string	"gw"
	.byte	0x7
	.byte	0xf3
	.4byte	0x4d8
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x7
	.byte	0xf7
	.4byte	0x6bb
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x7
	.byte	0xfa
	.4byte	0x6cb
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfc
	.4byte	0x6eb
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x102
	.4byte	0x5a8
	.byte	0x84
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x108
	.4byte	0x5cd
	.byte	0x88
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x10d
	.4byte	0x637
	.byte	0x8c
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x113
	.4byte	0x602
	.byte	0x90
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x125
	.4byte	0xad
	.byte	0x94
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x127
	.4byte	0x11e
	.byte	0x98
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x12b
	.4byte	0x79a
	.byte	0xa4
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x12c
	.4byte	0x6b0
	.byte	0xa8
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x131
	.4byte	0xda
	.byte	0xac
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x135
	.4byte	0xda
	.byte	0xad
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x139
	.4byte	0xc4
	.byte	0xb0
	.uleb128 0x14
	.string	"mtu"
	.byte	0x7
	.2byte	0x13f
	.4byte	0xf0
	.byte	0xb4
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x141
	.4byte	0xda
	.byte	0xb6
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x143
	.4byte	0x7a0
	.byte	0xb7
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x145
	.4byte	0xda
	.byte	0xbd
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x147
	.4byte	0x7b0
	.byte	0xbe
	.uleb128 0x14
	.string	"num"
	.byte	0x7
	.2byte	0x149
	.4byte	0xda
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x157
	.4byte	0x65c
	.byte	0xc4
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x15c
	.4byte	0x686
	.byte	0xc8
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x163
	.4byte	0x275
	.byte	0xcc
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x164
	.4byte	0x275
	.byte	0xd0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x166
	.4byte	0xf0
	.byte	0xd4
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x16b
	.4byte	0x106
	.byte	0xd8
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x16c
	.4byte	0x4d8
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x432
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x8
	.byte	0x34
	.4byte	0xfb
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x8
	.byte	0x39
	.4byte	0x419
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x10
	.byte	0x9
	.byte	0x3a
	.4byte	0x456
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x9
	.byte	0x3b
	.4byte	0x456
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x466
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x9
	.byte	0x3f
	.4byte	0x43d
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x36
	.4byte	0x494
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x2e
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0xa
	.byte	0x46
	.4byte	0x4b3
	.uleb128 0x17
	.string	"ip6"
	.byte	0xa
	.byte	0x47
	.4byte	0x466
	.uleb128 0x17
	.string	"ip4"
	.byte	0xa
	.byte	0x48
	.4byte	0x432
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x14
	.byte	0xa
	.byte	0x45
	.4byte	0x4d8
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0xa
	.byte	0x49
	.4byte	0x494
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0xa
	.byte	0x4b
	.4byte	0xda
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xa
	.byte	0x4c
	.4byte	0x4b3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x34
	.4byte	0x562
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x70
	.4byte	0x58b
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x94
	.4byte	0x5a8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x7
	.byte	0xa7
	.4byte	0x5b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x5cd
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x413
	.byte	0
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x7
	.byte	0xb2
	.4byte	0x5d8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x5f7
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x5f7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x8
	.4byte	0x432
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x7
	.byte	0xbf
	.4byte	0x60d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x613
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x62c
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x62c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x632
	.uleb128 0x8
	.4byte	0x466
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x7
	.byte	0xc9
	.4byte	0x642
	.uleb128 0x6
	.byte	0x4
	.4byte	0x648
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x65c
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x7
	.byte	0xce
	.4byte	0x667
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66d
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x686
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x5f7
	.uleb128 0xa
	.4byte	0x58b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x7
	.byte	0xd3
	.4byte	0x691
	.uleb128 0x6
	.byte	0x4
	.4byte	0x697
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x6b0
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x62c
	.uleb128 0xa
	.4byte	0x58b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x7
	.byte	0xe5
	.4byte	0xb6
	.uleb128 0xb
	.4byte	0x4d8
	.4byte	0x6cb
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.4byte	0x6db
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x6eb
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0xda
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6db
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x58
	.byte	0xc
	.byte	0x51
	.4byte	0x79a
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xc
	.byte	0x53
	.4byte	0x4d8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xc
	.byte	0x53
	.4byte	0x4d8
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x28
	.uleb128 0x12
	.string	"tos"
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x29
	.uleb128 0x12
	.string	"ttl"
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x2a
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xc
	.byte	0x57
	.4byte	0x79a
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0xc
	.byte	0x59
	.4byte	0xda
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xc
	.byte	0x5b
	.4byte	0xf0
	.byte	0x32
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xc
	.byte	0x5b
	.4byte	0xf0
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xc
	.byte	0x5f
	.4byte	0x4d8
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xc
	.byte	0x61
	.4byte	0xda
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xc
	.byte	0x6a
	.4byte	0x7c0
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xc
	.byte	0x6c
	.4byte	0xad
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0xb
	.4byte	0xda
	.4byte	0x7b0
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0x7c0
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xc
	.byte	0x4d
	.4byte	0x7cb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d1
	.uleb128 0x9
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x79a
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7f6
	.uleb128 0x8
	.4byte	0x4d8
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xd
	.byte	0x67
	.4byte	0x806
	.uleb128 0x6
	.byte	0x4
	.4byte	0x80c
	.uleb128 0x9
	.4byte	0x821
	.uleb128 0xa
	.4byte	0xc4
	.uleb128 0xa
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xc
	.byte	0xe
	.byte	0x67
	.4byte	0x881
	.uleb128 0x12
	.string	"id"
	.byte	0xe
	.byte	0x68
	.4byte	0xf0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xe
	.byte	0x69
	.4byte	0xda
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xe
	.byte	0x6a
	.4byte	0xda
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xe
	.byte	0x6b
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xe
	.byte	0x6c
	.4byte	0xf0
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xe
	.byte	0x6d
	.4byte	0xf0
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xe
	.byte	0x6e
	.4byte	0xf0
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x4
	.byte	0x1
	.byte	0xc0
	.4byte	0x8a6
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc3
	.4byte	0xf0
	.byte	0
	.uleb128 0x12
	.string	"cls"
	.byte	0x1
	.byte	0xc4
	.4byte	0xf0
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xc
	.byte	0x1
	.byte	0xca
	.4byte	0x8e3
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xcd
	.4byte	0xf0
	.byte	0
	.uleb128 0x12
	.string	"cls"
	.byte	0x1
	.byte	0xce
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x12
	.string	"ttl"
	.byte	0x1
	.byte	0xcf
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xd0
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x1
	.byte	0xd7
	.4byte	0x908
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.2byte	0x124
	.byte	0x1
	.byte	0xdf
	.4byte	0x99b
	.uleb128 0x12
	.string	"ttl"
	.byte	0x1
	.byte	0xe0
	.4byte	0xfb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe1
	.4byte	0x4d8
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe2
	.4byte	0xf0
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0xe3
	.4byte	0xda
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x1
	.byte	0xe4
	.4byte	0xda
	.byte	0x1b
	.uleb128 0x12
	.string	"tmr"
	.byte	0x1
	.byte	0xe5
	.4byte	0xda
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x1
	.byte	0xe6
	.4byte	0xda
	.byte	0x1d
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe7
	.4byte	0xda
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x1
	.byte	0xe9
	.4byte	0xda
	.byte	0x1f
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0xeb
	.4byte	0x99b
	.byte	0x20
	.uleb128 0x1a
	.4byte	.LASF161
	.byte	0x1
	.byte	0xed
	.4byte	0xda
	.2byte	0x120
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0x9ab
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xc
	.byte	0x1
	.byte	0xf6
	.4byte	0x9e8
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.byte	0xf8
	.4byte	0x7fb
	.byte	0
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0xfa
	.4byte	0xad
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x1
	.byte	0xfc
	.4byte	0xda
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1
	.byte	0xff
	.4byte	0xda
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	0xa0e
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x178
	.4byte	0xda
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x178
	.4byte	0x7f0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xf0
	.byte	0x1
	.4byte	0xa64
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xc4
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x275
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x2a8
	.4byte	0xf0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x3e
	.uleb128 0x20
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2ab
	.4byte	0xf0
	.uleb128 0x21
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x3b8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf6
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.2byte	0x3b8
	.4byte	0xda
	.4byte	.LLST0
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x3b8
	.4byte	0xaf6
	.4byte	.LLST1
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x3bb
	.4byte	0xda
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LASF170
	.4byte	0xb0c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6702
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0x1a6e
	.4byte	0xace
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xaec
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL10
	.4byte	0x1a79
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xb0c
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xafc
	.uleb128 0x22
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x474
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb76
	.uleb128 0x2b
	.string	"idx"
	.byte	0x1
	.2byte	0x474
	.4byte	0xda
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.string	"ttl"
	.byte	0x1
	.2byte	0x474
	.4byte	0xfb
	.4byte	.LLST3
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x476
	.4byte	0xb76
	.uleb128 0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LVL14
	.4byte	0xa64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x908
	.uleb128 0x2e
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x12e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd9
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.2byte	0x2fc
	.4byte	0xda
	.4byte	.LLST4
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x12e
	.4byte	.LLST5
	.uleb128 0x2f
	.string	"hdr"
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x821
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"qry"
	.byte	0x1
	.2byte	0x300
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x301
	.4byte	0x275
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x302
	.4byte	0xf0
	.4byte	.LLST7
	.uleb128 0x30
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x302
	.4byte	0xf0
	.4byte	.LLST8
	.uleb128 0x30
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x303
	.4byte	0xc4
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x303
	.4byte	0xc4
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.2byte	0x304
	.4byte	0xda
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x305
	.4byte	0xda
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x306
	.4byte	0xb76
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LASF170
	.4byte	0xde9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6668
	.uleb128 0x31
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xd65
	.uleb128 0x25
	.string	"dst"
	.byte	0x1
	.2byte	0x31c
	.4byte	0x7f0
	.4byte	.LLST13
	.uleb128 0x30
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x31d
	.4byte	0xf0
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0x1a84
	.4byte	0xca7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL25
	.4byte	0x1a8d
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0x1a98
	.4byte	0xccf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL34
	.4byte	0x1aa3
	.4byte	0xce9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL35
	.4byte	0x1aaf
	.4byte	0xcfd
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0x1aa3
	.4byte	0xd1b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL42
	.4byte	0x1aaf
	.4byte	0xd3a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL44
	.4byte	0x1aba
	.4byte	0xd54
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL47
	.4byte	0x1ac5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x1a6e
	.4byte	0xd95
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x30a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6668
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xa64
	.4byte	0xdae
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x1ad0
	.4byte	0xdc2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL22
	.4byte	0x1adb
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xde9
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xdd9
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x3f2
	.4byte	0xf0
	.byte	0x1
	.4byte	0xe1e
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x3f4
	.4byte	0xf0
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x3f5
	.4byte	0xda
	.uleb128 0x32
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x3f7
	.byte	0
	.uleb128 0x22
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x410
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeed
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.2byte	0x410
	.4byte	0xda
	.4byte	.LLST15
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.2byte	0x412
	.4byte	0x12e
	.uleb128 0x30
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x413
	.4byte	0xb76
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF170
	.4byte	0xefd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6724
	.uleb128 0x33
	.4byte	0xdee
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x41a
	.4byte	0xeac
	.uleb128 0x34
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x35
	.4byte	0xdff
	.4byte	.LLST17
	.uleb128 0x35
	.4byte	0xe0b
	.4byte	.LLST18
	.uleb128 0x36
	.4byte	0xe15
	.uleb128 0x2a
	.4byte	.LVL51
	.4byte	0x1ae6
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL58
	.4byte	0xa64
	.4byte	0xec5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL59
	.4byte	0xb7c
	.4byte	0xed9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0x1a6e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xefd
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xeed
	.uleb128 0x2e
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x27a
	.4byte	0x12e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf78
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x27a
	.4byte	0xc4
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x27a
	.4byte	0xaf6
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x27a
	.4byte	0xda
	.4byte	.LLST21
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x27c
	.4byte	0xda
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LVL67
	.4byte	0x1af1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xf0
	.byte	0x1
	.4byte	0xfb6
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x275
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xf0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x3e
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x2da
	.4byte	0xf0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x494
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1371
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.2byte	0x494
	.4byte	0xad
	.4byte	.LLST23
	.uleb128 0x23
	.string	"pcb"
	.byte	0x1
	.2byte	0x494
	.4byte	0x79a
	.4byte	.LLST24
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x494
	.4byte	0x275
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x494
	.4byte	0x7f0
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x494
	.4byte	0xf0
	.4byte	.LLST26
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x496
	.4byte	0xda
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x497
	.4byte	0xf0
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x498
	.4byte	0xf0
	.4byte	.LLST29
	.uleb128 0x2f
	.string	"hdr"
	.byte	0x1
	.2byte	0x499
	.4byte	0x821
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"ans"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x8a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.string	"qry"
	.byte	0x1
	.2byte	0x49b
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x49c
	.4byte	0xf0
	.4byte	.LLST30
	.uleb128 0x30
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x49c
	.4byte	0xf0
	.4byte	.LLST31
	.uleb128 0x37
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x53c
	.4byte	.L137
	.uleb128 0x31
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x1332
	.uleb128 0x30
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x4ae
	.4byte	0x1371
	.4byte	.LLST32
	.uleb128 0x38
	.4byte	0xa0e
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x4ce
	.4byte	0x1163
	.uleb128 0x39
	.4byte	0xa35
	.4byte	.LLST33
	.uleb128 0x39
	.4byte	0xa2b
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	0xa1f
	.4byte	.LLST35
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x35
	.4byte	0xa41
	.4byte	.LLST36
	.uleb128 0x35
	.4byte	0xa4b
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x1131
	.uleb128 0x35
	.4byte	0xa58
	.4byte	.LLST38
	.uleb128 0x2d
	.4byte	.LVL95
	.4byte	0x1afc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL92
	.4byte	0x1afc
	.4byte	0x114b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL100
	.4byte	0x1afc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xf78
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x11be
	.uleb128 0x3b
	.4byte	0xf93
	.uleb128 0x3b
	.4byte	0xf89
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x35
	.4byte	0xf9f
	.4byte	.LLST39
	.uleb128 0x35
	.4byte	0xfa9
	.4byte	.LLST40
	.uleb128 0x27
	.4byte	.LVL109
	.4byte	0x1afc
	.4byte	0x11ac
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL113
	.4byte	0x1afc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x11fe
	.uleb128 0x2c
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x4f9
	.4byte	0x432
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.4byte	.LVL119
	.4byte	0x1b08
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x126f
	.uleb128 0x2c
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x50c
	.4byte	0x466
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LVL120
	.4byte	0x1b08
	.4byte	0x1241
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL121
	.4byte	0x1ac5
	.4byte	0x1255
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL122
	.4byte	0x1b13
	.uleb128 0x2d
	.4byte	.LVL123
	.4byte	0xb11
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL82
	.4byte	0x1a8d
	.uleb128 0x2a
	.4byte	.LVL84
	.4byte	0x1a8d
	.uleb128 0x27
	.4byte	.LVL103
	.4byte	0x1b08
	.4byte	0x12aa
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x77
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL116
	.4byte	0x1b08
	.4byte	0x12d4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL124
	.4byte	0x1a8d
	.uleb128 0x2a
	.4byte	.LVL125
	.4byte	0x1a8d
	.uleb128 0x27
	.4byte	.LVL130
	.4byte	0x1ac5
	.4byte	0x12fa
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL131
	.4byte	0xe1e
	.4byte	0x130e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL132
	.4byte	0x1ac5
	.4byte	0x1322
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL134
	.4byte	0xa64
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL77
	.4byte	0x1b08
	.4byte	0x1357
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL78
	.4byte	0x1a8d
	.uleb128 0x2d
	.4byte	.LVL138
	.4byte	0x1ac5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1377
	.uleb128 0x8
	.4byte	0x908
	.uleb128 0x3c
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139c
	.uleb128 0x3d
	.4byte	.LASF170
	.4byte	0x139c
	.byte	0
	.uleb128 0x8
	.4byte	0xdd9
	.uleb128 0x3e
	.4byte	0x9e8
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f9
	.uleb128 0x39
	.4byte	0x9f5
	.4byte	.LLST41
	.uleb128 0x3f
	.4byte	0xa01
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x39
	.4byte	0xa01
	.4byte	.LLST42
	.uleb128 0x39
	.4byte	0x9f5
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LVL143
	.4byte	0x1b1e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x185
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1443
	.uleb128 0x40
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x185
	.4byte	0x117
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x187
	.4byte	0xda
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LVL147
	.4byte	0x9e8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x19c
	.4byte	0x7f0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146e
	.uleb128 0x24
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x19c
	.4byte	0xda
	.4byte	.LLST45
	.byte	0
	.uleb128 0x42
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x467
	.byte	0x1
	.4byte	0x1486
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x469
	.4byte	0xda
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1509
	.uleb128 0x43
	.4byte	0x146e
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x1ae
	.uleb128 0x34
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x35
	.4byte	0x147b
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	.LVL153
	.4byte	0xe1e
	.4byte	0x14d1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL154
	.4byte	0xe1e
	.4byte	0x14e4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL155
	.4byte	0xe1e
	.4byte	0x14f7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL156
	.4byte	0xe1e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x5ea
	.4byte	0x117
	.byte	0x1
	.4byte	0x1525
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x5ec
	.4byte	0x3e
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x54c
	.4byte	0x12e
	.byte	0x1
	.4byte	0x15d1
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x54c
	.4byte	0xc4
	.uleb128 0x1c
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x54c
	.4byte	0x25
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x54c
	.4byte	0x7fb
	.uleb128 0x1c
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x54d
	.4byte	0xad
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x54d
	.4byte	0xda
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x54f
	.4byte	0xda
	.uleb128 0x20
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x550
	.4byte	0xda
	.uleb128 0x20
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x550
	.4byte	0xda
	.uleb128 0x20
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x551
	.4byte	0xb76
	.uleb128 0x20
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x552
	.4byte	0x25
	.uleb128 0x1f
	.string	"req"
	.byte	0x1
	.2byte	0x553
	.4byte	0x15d1
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.2byte	0x556
	.4byte	0xda
	.uleb128 0x21
	.uleb128 0x1f
	.string	"age"
	.byte	0x1
	.2byte	0x57e
	.4byte	0xda
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0x1d
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x38e
	.4byte	0xda
	.byte	0x1
	.4byte	0x15ff
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x390
	.4byte	0xda
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.2byte	0x391
	.4byte	0xda
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x36c
	.4byte	0x79a
	.byte	0x1
	.4byte	0x1637
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.2byte	0x36e
	.4byte	0x12e
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x36f
	.4byte	0x79a
	.uleb128 0x21
	.uleb128 0x20
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x377
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x605
	.4byte	0x12e
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191b
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x605
	.4byte	0xc4
	.4byte	.LLST47
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x605
	.4byte	0xaf6
	.4byte	.LLST48
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x605
	.4byte	0x7fb
	.4byte	.LLST49
	.uleb128 0x24
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x606
	.4byte	0xad
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x606
	.4byte	0xda
	.4byte	.LLST51
	.uleb128 0x30
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x608
	.4byte	0x25
	.4byte	.LLST52
	.uleb128 0x38
	.4byte	0x1509
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x650
	.4byte	0x16d5
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x35
	.4byte	0x151a
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x1719
	.uleb128 0x30
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x636
	.4byte	0xda
	.4byte	.LLST54
	.uleb128 0x2d
	.4byte	.LVL171
	.4byte	0xf02
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xc
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x1525
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x659
	.4byte	0x18b3
	.uleb128 0x3b
	.4byte	0x1566
	.uleb128 0x3b
	.4byte	0x155a
	.uleb128 0x3b
	.4byte	0x154e
	.uleb128 0x3b
	.4byte	0x1542
	.uleb128 0x3b
	.4byte	0x1536
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x35
	.4byte	0x1572
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	0x157c
	.4byte	.LLST56
	.uleb128 0x44
	.4byte	0x1588
	.uleb128 0x35
	.4byte	0x1594
	.4byte	.LLST57
	.uleb128 0x35
	.4byte	0x15a0
	.4byte	.LLST58
	.uleb128 0x35
	.4byte	0x15ac
	.4byte	.LLST59
	.uleb128 0x35
	.4byte	0x15b8
	.4byte	.LLST60
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1799
	.uleb128 0x35
	.4byte	0x15c3
	.4byte	.LLST61
	.byte	0
	.uleb128 0x38
	.4byte	0x15d7
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x5b6
	.4byte	0x1860
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x35
	.4byte	0x15e8
	.4byte	.LLST62
	.uleb128 0x35
	.4byte	0x15f2
	.4byte	.LLST63
	.uleb128 0x46
	.4byte	0x15ff
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x399
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x35
	.4byte	0x1610
	.4byte	.LLST64
	.uleb128 0x35
	.4byte	0x161c
	.4byte	.LLST65
	.uleb128 0x31
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.4byte	0x181b
	.uleb128 0x35
	.4byte	0x1629
	.4byte	.LLST66
	.uleb128 0x2a
	.4byte	.LVL209
	.4byte	0x1ae6
	.uleb128 0x2d
	.4byte	.LVL211
	.4byte	0x1b27
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL214
	.4byte	0x1a79
	.4byte	0x182f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL216
	.4byte	0x1b32
	.4byte	0x184c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_recv
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL231
	.4byte	0x1b3d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL178
	.4byte	0x1af1
	.4byte	0x1881
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x27
	.4byte	.LVL199
	.4byte	0x1b1e
	.4byte	0x18a1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL227
	.4byte	0xe1e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL161
	.4byte	0x1ad0
	.4byte	0x18c7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL165
	.4byte	0x1b48
	.4byte	0x18e4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0x27
	.4byte	.LVL167
	.4byte	0x1b53
	.4byte	0x18fe
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL168
	.4byte	0xf02
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x5e3
	.4byte	0x12e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1997
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x5e3
	.4byte	0xc4
	.4byte	.LLST67
	.uleb128 0x40
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x5e3
	.4byte	0xaf6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x5e3
	.4byte	0x7fb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x5e4
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LVL235
	.4byte	0x1637
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x79a
	.4byte	0x19a7
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x129
	.4byte	0x1997
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_pcbs
	.uleb128 0x2c
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x12b
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_last_pcb_idx
	.uleb128 0x2c
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x12d
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_seqno
	.uleb128 0xb
	.4byte	0x908
	.4byte	0x19ed
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x12e
	.4byte	0x19dd
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_table
	.uleb128 0xb
	.4byte	0x9ab
	.4byte	0x1a0f
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x12f
	.4byte	0x19ff
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_requests
	.uleb128 0x2c
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x130
	.4byte	0x6bb
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_servers
	.uleb128 0x47
	.4byte	.LASF216
	.byte	0xa
	.byte	0x4e
	.4byte	0x7f6
	.uleb128 0x48
	.4byte	.LASF217
	.byte	0xa
	.2byte	0x157
	.4byte	0x7f6
	.uleb128 0x49
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x133
	.4byte	0x7f6
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_mquery_v4group
	.uleb128 0x49
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x136
	.4byte	0x7f6
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_mquery_v6group
	.uleb128 0x4a
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.byte	0x29
	.uleb128 0x4a
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xc
	.byte	0x75
	.uleb128 0x4b
	.4byte	.LASF235
	.4byte	.LASF235
	.uleb128 0x4a
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x10
	.byte	0x55
	.uleb128 0x4a
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x6
	.byte	0xf5
	.uleb128 0x4c
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x6
	.2byte	0x103
	.uleb128 0x4a
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x6
	.byte	0xf6
	.uleb128 0x4a
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xc
	.byte	0x83
	.uleb128 0x4a
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x6
	.byte	0xee
	.uleb128 0x4a
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x11
	.byte	0x21
	.uleb128 0x4a
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x6
	.byte	0xe4
	.uleb128 0x4a
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x12
	.byte	0xa8
	.uleb128 0x4a
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x10
	.byte	0x7e
	.uleb128 0x4c
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x6
	.2byte	0x102
	.uleb128 0x4a
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x6
	.byte	0xf4
	.uleb128 0x4a
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x10
	.byte	0x5a
	.uleb128 0x4b
	.4byte	.LASF236
	.4byte	.LASF236
	.uleb128 0x4a
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xc
	.byte	0x76
	.uleb128 0x4a
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xc
	.byte	0x7b
	.uleb128 0x4a
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xc
	.byte	0x74
	.uleb128 0x4a
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x11
	.byte	0x1c
	.uleb128 0x4a
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xa
	.byte	0xe0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38-1
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table+31
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL43
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table+27
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
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
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL60
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE40
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x34
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x5
	.byte	0x35
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x35
	.byte	0x79
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL74
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL137
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL79
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL133
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0xd
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0xd
	.byte	0x72
	.sleb128 -1
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL89
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL89
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-1
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x75
	.sleb128 -11
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE29
	.2byte	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL151
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL204
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL230
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL157
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL228
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL229
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL159
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL157
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL166
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL177
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL186
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0xd
	.byte	0x73
	.sleb128 -1
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL208
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL202
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	dns_requests
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL225
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	dns_requests
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	dns_requests
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	dns_requests
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x3
	.byte	0x7a
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL218
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL231-1
	.4byte	.LVL233
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL219
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL213
	.4byte	.LVL214-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL215
	.4byte	.LVL216-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL208
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF2:
	.string	"size_t"
.LASF14:
	.string	"sizetype"
.LASF206:
	.string	"dns_getserver"
.LASF83:
	.string	"l2_buffer_free_notify"
.LASF96:
	.string	"MEMP_TCP_PCB"
.LASF78:
	.string	"igmp_mac_filter"
.LASF178:
	.string	"dns_compare_name"
.LASF244:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/lwip"
.LASF202:
	.string	"lseqi"
.LASF70:
	.string	"dhcps_pcb"
.LASF80:
	.string	"loop_first"
.LASF193:
	.string	"dns_init"
.LASF56:
	.string	"l2_buf"
.LASF132:
	.string	"so_options"
.LASF105:
	.string	"MEMP_SYS_TIMEOUT"
.LASF170:
	.string	"__func__"
.LASF68:
	.string	"state"
.LASF84:
	.string	"last_ip_addr"
.LASF163:
	.string	"found"
.LASF114:
	.string	"lwip_internal_netif_client_data_index"
.LASF53:
	.string	"type"
.LASF48:
	.string	"PBUF_REF"
.LASF126:
	.string	"netif_igmp_mac_filter_fn"
.LASF151:
	.string	"DNS_STATE_NEW"
.LASF5:
	.string	"__uint8_t"
.LASF243:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/lwip/lwip/src/core/dns.c"
.LASF241:
	.string	"ipaddr_aton"
.LASF155:
	.string	"ipaddr"
.LASF210:
	.string	"dns_pcbs"
.LASF72:
	.string	"ip6_autoconfig_enabled"
.LASF234:
	.string	"lwip_htonl"
.LASF13:
	.string	"long int"
.LASF222:
	.string	"lwip_htons"
.LASF201:
	.string	"lseq"
.LASF144:
	.string	"numquestions"
.LASF85:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF200:
	.string	"callback_arg"
.LASF30:
	.string	"ERR_VAL"
.LASF217:
	.string	"ip_addr_any"
.LASF224:
	.string	"pbuf_put_at"
.LASF174:
	.string	"query_idx"
.LASF66:
	.string	"linkoutput"
.LASF179:
	.string	"dns_create_txid"
.LASF75:
	.string	"hwaddr_len"
.LASF111:
	.string	"MEMP_PBUF_POOL"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"uint8_t"
.LASF203:
	.string	"namelen"
.LASF141:
	.string	"dns_hdr"
.LASF218:
	.string	"dns_mquery_v4group"
.LASF130:
	.string	"local_ip"
.LASF117:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF6:
	.string	"unsigned char"
.LASF216:
	.string	"ip_addr_any_type"
.LASF152:
	.string	"DNS_STATE_ASKING"
.LASF99:
	.string	"MEMP_NETBUF"
.LASF89:
	.string	"IPADDR_TYPE_V4"
.LASF90:
	.string	"IPADDR_TYPE_V6"
.LASF22:
	.string	"_Bool"
.LASF215:
	.string	"dns_servers"
.LASF49:
	.string	"PBUF_POOL"
.LASF183:
	.string	"dns_addrtype"
.LASF16:
	.string	"char"
.LASF177:
	.string	"dst_port"
.LASF172:
	.string	"dns_correct_response"
.LASF65:
	.string	"output"
.LASF57:
	.string	"pbuf"
.LASF109:
	.string	"MEMP_MLD6_GROUP"
.LASF94:
	.string	"MEMP_RAW_PCB"
.LASF9:
	.string	"__uint16_t"
.LASF242:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF129:
	.string	"udp_pcb"
.LASF133:
	.string	"local_port"
.LASF161:
	.string	"reqaddrtype"
.LASF54:
	.string	"flags"
.LASF171:
	.string	"dns_call_found"
.LASF240:
	.string	"strcmp"
.LASF59:
	.string	"ip_addr"
.LASF146:
	.string	"numauthrr"
.LASF91:
	.string	"IPADDR_TYPE_ANY"
.LASF64:
	.string	"input"
.LASF208:
	.string	"fallback"
.LASF247:
	.string	"memerr"
.LASF180:
	.string	"dns_check_entry"
.LASF33:
	.string	"ERR_ALREADY"
.LASF192:
	.string	"ip6addr"
.LASF101:
	.string	"MEMP_TCPIP_MSG_API"
.LASF100:
	.string	"MEMP_NETCONN"
.LASF238:
	.string	"udp_recv"
.LASF55:
	.string	"l2_owner"
.LASF62:
	.string	"ip6_addr_state"
.LASF204:
	.string	"dns_alloc_pcb"
.LASF220:
	.string	"__assert_func"
.LASF108:
	.string	"MEMP_IP6_REASSDATA"
.LASF225:
	.string	"pbuf_take_at"
.LASF35:
	.string	"ERR_CONN"
.LASF158:
	.string	"retries"
.LASF233:
	.string	"pbuf_copy_partial"
.LASF15:
	.string	"long unsigned int"
.LASF58:
	.string	"netif"
.LASF211:
	.string	"dns_last_pcb_idx"
.LASF47:
	.string	"PBUF_ROM"
.LASF76:
	.string	"hwaddr"
.LASF221:
	.string	"udp_remove"
.LASF181:
	.string	"dns_send"
.LASF92:
	.string	"u_addr"
.LASF219:
	.string	"dns_mquery_v6group"
.LASF51:
	.string	"payload"
.LASF199:
	.string	"hostnamelen"
.LASF119:
	.string	"netif_mac_filter_action"
.LASF82:
	.string	"loop_cnt_current"
.LASF165:
	.string	"numdns"
.LASF127:
	.string	"netif_mld_mac_filter_fn"
.LASF232:
	.string	"pbuf_try_get_at"
.LASF198:
	.string	"dns_enqueue"
.LASF10:
	.string	"__uint32_t"
.LASF128:
	.string	"dhcp_event_fn"
.LASF194:
	.string	"dns_clear_servers"
.LASF11:
	.string	"long long int"
.LASF116:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF25:
	.string	"ERR_MEM"
.LASF40:
	.string	"ERR_ARG"
.LASF87:
	.string	"ip4_addr_t"
.LASF63:
	.string	"ipv6_addr_cb"
.LASF60:
	.string	"netmask"
.LASF124:
	.string	"netif_output_ip6_fn"
.LASF166:
	.string	"dnsserver"
.LASF113:
	.string	"lwip_ip_addr_type"
.LASF176:
	.string	"hostname_part"
.LASF86:
	.string	"addr"
.LASF213:
	.string	"dns_table"
.LASF182:
	.string	"dns_lookup"
.LASF150:
	.string	"DNS_STATE_UNUSED"
.LASF36:
	.string	"ERR_IF"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"ERR_USE"
.LASF42:
	.string	"PBUF_IP"
.LASF205:
	.string	"dns_alloc_random_port"
.LASF73:
	.string	"rs_count"
.LASF186:
	.string	"dns_recv"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF122:
	.string	"netif_input_fn"
.LASF164:
	.string	"dns_table_idx"
.LASF223:
	.string	"pbuf_take"
.LASF226:
	.string	"udp_sendto"
.LASF145:
	.string	"numanswers"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF185:
	.string	"offset"
.LASF125:
	.string	"netif_linkoutput_fn"
.LASF246:
	.string	"again"
.LASF123:
	.string	"netif_output_fn"
.LASF137:
	.string	"recv"
.LASF52:
	.string	"tot_len"
.LASF167:
	.string	"query"
.LASF93:
	.string	"ip_addr_t"
.LASF142:
	.string	"flags1"
.LASF143:
	.string	"flags2"
.LASF209:
	.string	"dns_gethostbyname"
.LASF120:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF23:
	.string	"err_t"
.LASF156:
	.string	"txid"
.LASF207:
	.string	"dns_gethostbyname_addrtype"
.LASF139:
	.string	"udp_recv_fn"
.LASF67:
	.string	"output_ip6"
.LASF173:
	.string	"entry"
.LASF191:
	.string	"ip4addr"
.LASF245:
	.string	"dns_setserver"
.LASF3:
	.string	"__int8_t"
.LASF34:
	.string	"ERR_ISCONN"
.LASF81:
	.string	"loop_last"
.LASF12:
	.string	"long long unsigned int"
.LASF95:
	.string	"MEMP_UDP_PCB"
.LASF134:
	.string	"remote_port"
.LASF107:
	.string	"MEMP_ND6_QUEUE"
.LASF98:
	.string	"MEMP_TCP_SEG"
.LASF20:
	.string	"uint16_t"
.LASF184:
	.string	"dns_skip_name"
.LASF175:
	.string	"copy_len"
.LASF102:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF229:
	.string	"pbuf_alloc"
.LASF189:
	.string	"nquestions"
.LASF248:
	.string	"dns_check_entries"
.LASF61:
	.string	"ip6_addr"
.LASF159:
	.string	"seqno"
.LASF162:
	.string	"dns_req_entry"
.LASF118:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF138:
	.string	"recv_arg"
.LASF106:
	.string	"MEMP_NETDB"
.LASF74:
	.string	"hostname"
.LASF235:
	.string	"memset"
.LASF169:
	.string	"response_offset"
.LASF7:
	.string	"__int16_t"
.LASF231:
	.string	"lwip_strnicmp"
.LASF227:
	.string	"pbuf_free"
.LASF24:
	.string	"ERR_OK"
.LASF112:
	.string	"MEMP_MAX"
.LASF147:
	.string	"numextrarr"
.LASF131:
	.string	"remote_ip"
.LASF88:
	.string	"ip6_addr_t"
.LASF239:
	.string	"udp_new_ip_type"
.LASF121:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF195:
	.string	"keep_fallback"
.LASF77:
	.string	"name"
.LASF187:
	.string	"port"
.LASF110:
	.string	"MEMP_PBUF"
.LASF26:
	.string	"ERR_BUF"
.LASF135:
	.string	"multicast_ip"
.LASF190:
	.string	"nanswers"
.LASF136:
	.string	"mcast_ttl"
.LASF8:
	.string	"short int"
.LASF212:
	.string	"dns_seqno"
.LASF19:
	.string	"int16_t"
.LASF197:
	.string	"dns_server_is_set"
.LASF168:
	.string	"start_offset"
.LASF115:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF79:
	.string	"mld_mac_filter"
.LASF153:
	.string	"DNS_STATE_DONE"
.LASF237:
	.string	"udp_bind"
.LASF228:
	.string	"strlen"
.LASF44:
	.string	"PBUF_RAW_TX"
.LASF149:
	.string	"dns_answer"
.LASF236:
	.string	"memcpy"
.LASF104:
	.string	"MEMP_IGMP_GROUP"
.LASF21:
	.string	"uint32_t"
.LASF37:
	.string	"ERR_ABRT"
.LASF157:
	.string	"server_idx"
.LASF160:
	.string	"pcb_idx"
.LASF41:
	.string	"PBUF_TRANSPORT"
.LASF71:
	.string	"dhcp_event"
.LASF188:
	.string	"res_idx"
.LASF196:
	.string	"dns_tmr"
.LASF148:
	.string	"dns_query"
.LASF1:
	.string	"short unsigned int"
.LASF69:
	.string	"client_data"
.LASF39:
	.string	"ERR_CLSD"
.LASF214:
	.string	"dns_requests"
.LASF230:
	.string	"esp_random"
.LASF46:
	.string	"PBUF_RAM"
.LASF154:
	.string	"dns_table_entry"
.LASF45:
	.string	"PBUF_RAW"
.LASF38:
	.string	"ERR_RST"
.LASF50:
	.string	"next"
.LASF97:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF140:
	.string	"dns_found_callback"
.LASF43:
	.string	"PBUF_LINK"
.LASF103:
	.string	"MEMP_ARP_QUEUE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
