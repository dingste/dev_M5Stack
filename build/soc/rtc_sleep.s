	.file	"rtc_sleep.c"
	.text
.Ltext0:
	.section	.text.rtc_sleep_init,"ax",@progbits
	.literal_position
	.literal .LC0, 2048
	.literal .LC1, 1072988188
	.literal .LC2, 16777215
	.literal .LC3, 33554432
	.literal .LC4, -16760833
	.literal .LC5, 32768
	.literal .LC6, -16321
	.literal .LC7, 1072988204
	.literal .LC8, -65281
	.literal .LC9, 1072988196
	.literal .LC10, 33554431
	.literal .LC11, -33488897
	.literal .LC12, 65536
	.literal .LC13, -65025
	.literal .LC14, 1072988200
	.literal .LC15, 1072988292
	.literal .LC16, 1072988288
	.literal .LC17, -2049
	.literal .LC18, 1072693388
	.literal .LC19, 1073016996
	.literal .LC20, 1073074260
	.literal .LC21, 1073073364
	.literal .LC22, 1072980112
	.literal .LC23, 1072976112
	.literal .LC24, 73728
	.literal .LC25, -73729
	.literal .LC26, 16384
	.literal .LC27, -8193
	.literal .LC28, -16385
	.literal .LC29, 8192
	.literal .LC30, -4194305
	.literal .LC31, 131072
	.literal .LC32, -65537
	.literal .LC33, -131073
	.literal .LC34, 1048576
	.literal .LC35, -1048577
	.literal .LC36, 1073741824
	.literal .LC37, -1073741825
	.literal .LC38, 1056964608
	.literal .LC39, -1056964609
	.literal .LC40, 1072988296
	.literal .LC41, -12289
	.literal .LC42, -2147483648
	.literal .LC43, -1572865
	.literal .LC44, 1072988160
	.literal .LC45, 1072988208
	.literal .LC46, 671088639
	.literal .LC47, 2147483647
	.literal .LC48, 1072988280
	.literal .LC49, -50331649
	.literal .LC50, 1072988272
	.literal .LC51, 67108864
	.literal .LC52, -67108865
	.literal .LC53, 1072988276
	.literal .LC54, -2097153
	.literal .LC55, 1072988284
	.literal .LC56, -29360129
	.literal .LC57, -234881025
	.literal .LC58, -14337
	.align	4
	.global	rtc_sleep_init
	.type	rtc_sleep_init, @function
rtc_sleep_init:
.LFB4:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_sleep.c"
	.loc 1 101 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 103 0
	l32r	a9, .LC1
	l32r	a3, .LC2
	memw
	l32i.n	a4, a9, 0
	l32r	a13, .LC3
	and	a3, a4, a3
	or	a3, a3, a13
	memw
	s32i.n	a3, a9, 0
	.loc 1 104 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC4
	.loc 1 105 0
	movi	a12, 0x100
	.loc 1 104 0
	and	a4, a4, a3
	l32r	a3, .LC5
	.loc 1 108 0
	l32r	a10, .LC7
	.loc 1 104 0
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 105 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC6
	.loc 1 108 0
	movi	a6, 0x200
	.loc 1 105 0
	and	a3, a4, a3
	or	a3, a3, a12
	memw
	s32i.n	a3, a9, 0
	.loc 1 108 0
	memw
	l32i.n	a4, a10, 0
	l32r	a3, .LC8
	.loc 1 111 0
	l32r	a9, .LC9
	.loc 1 108 0
	and	a3, a4, a3
	or	a3, a3, a6
	memw
	s32i.n	a3, a10, 0
	.loc 1 111 0
	memw
	l32i.n	a3, a9, 0
	l32r	a5, .LC10
	.loc 1 112 0
	l32r	a4, .LC11
	.loc 1 111 0
	and	a3, a3, a5
	or	a3, a3, a13
	memw
	s32i.n	a3, a9, 0
	.loc 1 112 0
	memw
	l32i.n	a7, a9, 0
	l32r	a3, .LC12
	and	a7, a7, a4
	or	a7, a7, a3
	memw
	s32i.n	a7, a9, 0
	.loc 1 114 0
	memw
	l32i.n	a7, a9, 0
	l32r	a15, .LC13
	.loc 1 115 0
	movi	a14, -0x200
	.loc 1 114 0
	and	a7, a7, a15
	or	a7, a7, a6
	memw
	s32i.n	a7, a9, 0
	.loc 1 115 0
	memw
	l32i.n	a7, a9, 0
	movi.n	a11, 1
	and	a7, a7, a14
	or	a7, a7, a11
	memw
	s32i.n	a7, a9, 0
	.loc 1 117 0
	l32r	a9, .LC14
	extui	a8, a2, 22, 1
	memw
	l32i.n	a7, a9, 0
	and	a15, a7, a15
	or	a6, a15, a6
	memw
	s32i.n	a6, a9, 0
	.loc 1 118 0
	memw
	l32i.n	a6, a9, 0
.LBB8:
.LBB9:
	.loc 1 90 0
	movi.n	a15, 2
.LBE9:
.LBE8:
	.loc 1 118 0
	and	a14, a6, a14
	or	a14, a14, a11
	memw
	s32i.n	a14, a9, 0
	.loc 1 120 0
	memw
	l32i.n	a6, a9, 0
	and	a6, a6, a5
	or	a6, a6, a13
	memw
	s32i.n	a6, a9, 0
	.loc 1 121 0
	memw
	l32i.n	a6, a9, 0
	and	a6, a6, a4
	or	a6, a6, a3
	memw
	s32i.n	a6, a9, 0
	.loc 1 123 0
	memw
	l32i.n	a6, a10, 0
.LBB16:
.LBB14:
	.loc 1 86 0
	l32r	a9, .LC16
.LBE14:
.LBE16:
	.loc 1 123 0
	and	a5, a6, a5
	or	a13, a5, a13
	memw
	s32i.n	a13, a10, 0
	.loc 1 124 0
	memw
	l32i.n	a5, a10, 0
	.loc 1 126 0
	and	a6, a2, a11
	.loc 1 124 0
	and	a4, a5, a4
	or	a3, a4, a3
	.loc 1 126 0
	l32r	a5, .LC15
	.loc 1 124 0
	memw
	s32i.n	a3, a10, 0
	.loc 1 126 0
	memw
	l32i.n	a4, a5, 0
	movi.n	a3, -0x11
	slli	a6, a6, 4
	and	a4, a4, a3
	or	a4, a6, a4
	memw
	s32i.n	a4, a5, 0
.LVL1:
.LBB17:
.LBB15:
	.loc 1 85 0
	memw
	l32i.n	a4, a5, 0
	movi.n	a10, 0
	and	a4, a4, a3
	movi.n	a3, 0x10
	movnez	a3, a10, a8
	or	a3, a4, a3
	memw
	s32i.n	a3, a5, 0
	.loc 1 86 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC17
	.loc 1 87 0
	movnez	a12, a10, a8
	.loc 1 86 0
	and	a4, a4, a3
	l32r	a3, .LC0
	.loc 1 88 0
	xor	a11, a8, a11
	.loc 1 86 0
	movnez	a3, a10, a8
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 87 0
	memw
	l32i.n	a4, a9, 0
	movi	a3, -0x101
	and	a3, a4, a3
	or	a12, a3, a12
.LBB10:
.LBB11:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 77 0
	l32r	a4, .LC18
.LBE11:
.LBE10:
	.loc 1 87 0
	memw
	s32i.n	a12, a9, 0
.LVL2:
.LBB13:
.LBB12:
	.loc 2 77 0
	memw
	l32i.n	a5, a4, 0
.LBE12:
.LBE13:
	.loc 1 88 0
	movi.n	a3, -2
	and	a3, a5, a3
	.loc 1 89 0
	l32r	a6, .LC19
	.loc 1 88 0
	or	a11, a3, a11
	memw
	s32i.n	a11, a4, 0
	.loc 1 89 0
	memw
	l32i.n	a3, a6, 0
	movi.n	a12, -9
	movi.n	a11, 8
	movnez	a11, a10, a8
	and	a3, a3, a12
	or	a3, a3, a11
	memw
	s32i.n	a3, a6, 0
	.loc 1 90 0
	memw
	l32i.n	a5, a6, 0
	movi.n	a4, -3
	mov.n	a3, a10
	moveqz	a3, a15, a8
	and	a5, a5, a4
	or	a5, a5, a3
	memw
	s32i.n	a5, a6, 0
	.loc 1 91 0
	l32r	a6, .LC20
	.loc 1 93 0
	movi.n	a13, 0x20
	.loc 1 91 0
	memw
	l32i.n	a5, a6, 0
	.loc 1 93 0
	movnez	a13, a10, a8
	.loc 1 91 0
	and	a5, a5, a12
	or	a5, a5, a11
	memw
	s32i.n	a5, a6, 0
	.loc 1 92 0
	memw
	l32i.n	a5, a6, 0
	.loc 1 93 0
	l32r	a14, .LC21
	.loc 1 92 0
	and	a5, a5, a4
	or	a5, a5, a3
	memw
	s32i.n	a5, a6, 0
	.loc 1 93 0
	memw
	l32i.n	a6, a14, 0
	movi	a5, -0x21
	and	a6, a6, a5
	or	a6, a6, a13
	memw
	s32i.n	a6, a14, 0
	.loc 1 94 0
	memw
	l32i.n	a6, a14, 0
	and	a12, a6, a12
	or	a12, a12, a11
	memw
	s32i.n	a12, a14, 0
	.loc 1 95 0
	memw
	l32i.n	a11, a14, 0
	and	a11, a11, a4
	or	a11, a11, a3
	.loc 1 96 0
	l32r	a3, .LC22
	.loc 1 95 0
	memw
	s32i.n	a11, a14, 0
	.loc 1 96 0
	memw
	l32i.n	a4, a3, 0
	.loc 1 97 0
	movi	a11, 0x400
	.loc 1 96 0
	and	a5, a4, a5
	or	a13, a5, a13
	.loc 1 97 0
	l32r	a4, .LC23
	.loc 1 96 0
	memw
	s32i.n	a13, a3, 0
	.loc 1 97 0
	memw
	l32i.n	a5, a4, 0
	movi	a3, -0x401
	and	a3, a5, a3
	moveqz	a10, a11, a8
	or	a10, a3, a10
	memw
	s32i.n	a10, a4, 0
.LBE15:
.LBE17:
	.loc 1 132 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC24
	or	a3, a4, a3
	.loc 1 131 0
	bany	a2, a15, .L44
.L14:
	.loc 1 134 0
	l32r	a3, .LC25
	and	a3, a4, a3
.L44:
	memw
	s32i.n	a3, a9, 0
	l32r	a3, .LC16
	.loc 1 138 0
	movi	a4, 0x240
	memw
	l32i.n	a5, a3, 0
	or	a4, a5, a4
	.loc 1 137 0
	bbsi	a2, 2, .L45
.L16:
	.loc 1 140 0
	movi	a4, -0x241
	and	a4, a5, a4
.L45:
	l32r	a9, .LC16
	memw
	s32i.n	a4, a3, 0
	.loc 1 144 0
	memw
	l32i.n	a4, a9, 0
	.loc 1 143 0
	bbci	a2, 3, .L18
	.loc 1 144 0
	l32r	a3, .LC26
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 145 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC27
	and	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 146 0
	memw
	l32i.n	a4, a9, 0
	movi.n	a3, -2
	and	a3, a4, a3
	j	.L46
.L18:
	.loc 1 148 0
	l32r	a3, .LC28
	and	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 149 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC29
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 150 0
	memw
	l32i.n	a4, a9, 0
	movi.n	a3, 1
	or	a3, a4, a3
.L46:
	memw
	s32i.n	a3, a9, 0
	.loc 1 153 0
	l32r	a3, .LC30
	extui	a8, a8, 0, 1
	l32r	a9, .LC16
	slli	a4, a8, 22
	and	a2, a2, a3
.LVL3:
	or	a2, a2, a4
	.loc 1 154 0
	memw
	l32i.n	a4, a9, 0
.LVL4:
	.loc 1 153 0
	bbci	a2, 4, .L20
	.loc 1 154 0
	l32r	a3, .LC31
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 155 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC32
	and	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 156 0
	memw
	l32i.n	a4, a9, 0
	movi.n	a3, -5
	and	a3, a4, a3
	j	.L47
.L20:
	.loc 1 158 0
	l32r	a3, .LC33
	and	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 159 0
	memw
	l32i.n	a4, a9, 0
	l32r	a3, .LC12
	or	a3, a4, a3
	memw
	s32i.n	a3, a9, 0
	.loc 1 160 0
	memw
	l32i.n	a4, a9, 0
	movi.n	a3, 4
	or	a3, a4, a3
.L47:
	memw
	s32i.n	a3, a9, 0
	.loc 1 163 0
	l32r	a3, .LC30
	slli	a8, a8, 22
	and	a2, a2, a3
.LVL5:
	l32r	a3, .LC16
	.loc 1 164 0
	l32r	a4, .LC34
	memw
	l32i.n	a5, a3, 0
	.loc 1 163 0
	or	a2, a2, a8
	.loc 1 164 0
	or	a4, a5, a4
.LVL6:
	.loc 1 163 0
	bbsi	a2, 5, .L48
.L22:
	.loc 1 166 0
	l32r	a4, .LC35
	and	a4, a5, a4
.L48:
	memw
	s32i.n	a4, a3, 0
	l32r	a3, .LC15
	.loc 1 170 0
	l32r	a4, .LC36
	memw
	l32i.n	a5, a3, 0
	or	a4, a5, a4
	.loc 1 169 0
	bbsi	a2, 6, .L49
.L24:
	.loc 1 172 0
	l32r	a4, .LC37
	and	a4, a5, a4
.L49:
	memw
	s32i.n	a4, a3, 0
	l32r	a3, .LC15
	.loc 1 176 0
	l32r	a4, .LC38
	memw
	l32i.n	a5, a3, 0
	or	a4, a5, a4
	.loc 1 175 0
	bbsi	a2, 7, .L50
.L26:
	.loc 1 178 0
	l32r	a4, .LC39
	and	a4, a5, a4
.L50:
	memw
	s32i.n	a4, a3, 0
	l32r	a8, .LC15
	.loc 1 181 0
	bbci	a2, 8, .L28
	.loc 1 182 0
	l32r	a4, .LC40
	l32r	a3, .LC41
	memw
	l32i.n	a5, a4, 0
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 184 0
	memw
	l32i.n	a4, a8, 0
	l32r	a3, .LC42
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
	.loc 1 185 0
	memw
	l32i.n	a4, a8, 0
	l32r	a3, .LC43
	and	a3, a4, a3
	.loc 1 187 0
	l32r	a4, .LC44
	.loc 1 185 0
	memw
	s32i.n	a3, a8, 0
	.loc 1 187 0
	memw
	l32i.n	a5, a4, 0
	l32r	a3, .LC32
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 190 0
	l32r	a4, .LC45
	l32r	a3, .LC46
	memw
	l32i.n	a5, a4, 0
	j	.L51
.L28:
	.loc 1 194 0
	memw
	l32i.n	a4, a8, 0
	l32r	a3, .LC47
	and	a3, a4, a3
	.loc 1 195 0
	l32r	a4, .LC48
	.loc 1 194 0
	memw
	s32i.n	a3, a8, 0
	.loc 1 195 0
	memw
	l32i.n	a5, a4, 0
	l32r	a3, .LC49
.L51:
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
	.loc 1 198 0
	l32r	a4, .LC44
	l32r	a9, .LC27
	memw
	l32i.n	a8, a4, 0
	extui	a3, a2, 24, 1
	slli	a3, a3, 13
	and	a8, a8, a9
	or	a8, a3, a8
	memw
	s32i.n	a8, a4, 0
	.loc 1 200 0
	l32r	a8, .LC50
	memw
	l32i.n	a3, a8, 0
	.loc 1 201 0
	memw
	l32i.n	a4, a8, 0
	.loc 1 200 0
	extui	a3, a3, 30, 2
	bnei	a3, 2, .L30
	.loc 1 201 0
	l32r	a3, .LC51
	or	a3, a4, a3
	j	.L52
.L30:
	.loc 1 203 0
	l32r	a3, .LC52
	and	a3, a4, a3
.L52:
	memw
	s32i.n	a3, a8, 0
	.loc 1 207 0
	l32r	a3, .LC53
	l32r	a4, .LC30
	memw
	l32i.n	a5, a3, 0
	.loc 1 208 0
	l32r	a9, .LC54
	.loc 1 207 0
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
	.loc 1 208 0
	memw
	l32i.n	a8, a3, 0
	extui	a4, a2, 23, 1
	and	a8, a8, a9
	slli	a4, a4, 21
	or	a8, a4, a8
	memw
	s32i.n	a8, a3, 0
	.loc 1 210 0
	l32r	a8, .LC55
	l32r	a10, .LC56
	memw
	l32i.n	a9, a8, 0
	extui	a3, a2, 19, 3
	slli	a3, a3, 22
	and	a9, a9, a10
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 211 0
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC57
	extui	a3, a2, 16, 3
	slli	a3, a3, 25
	and	a9, a9, a10
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 212 0
	memw
	l32i.n	a9, a8, 0
	l32r	a10, .LC58
	extui	a3, a2, 10, 3
	slli	a3, a3, 11
	and	a9, a9, a10
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 213 0
	memw
	l32i.n	a3, a8, 0
	extui	a2, a2, 13, 3
.LVL7:
	movi	a9, -0x701
	slli	a2, a2, 8
	and	a9, a3, a9
	or	a2, a2, a9
	memw
	s32i.n	a2, a8, 0
	retw.n
.LFE4:
	.size	rtc_sleep_init, .-rtc_sleep_init
	.section	.text.rtc_sleep_set_wakeup_time,"ax",@progbits
	.literal_position
	.literal .LC59, 1072988164
	.literal .LC60, 1072988168
	.align	4
	.global	rtc_sleep_set_wakeup_time
	.type	rtc_sleep_set_wakeup_time, @function
rtc_sleep_set_wakeup_time:
.LFB5:
	.loc 1 217 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 218 0
	l32r	a8, .LC59
	memw
	s32i.n	a2, a8, 0
	.loc 1 219 0
	l32r	a8, .LC60
	memw
	s32i.n	a3, a8, 0
	retw.n
.LFE5:
	.size	rtc_sleep_set_wakeup_time, .-rtc_sleep_set_wakeup_time
	.section	.text.rtc_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC61, 1072988216
	.literal .LC62, -4192257
	.literal .LC63, 1072988260
	.literal .LC64, 1072988184
	.literal .LC65, -2147483648
	.literal .LC66, 1072988224
	.literal .LC67, 1072988232
	.literal .LC68, 1072988280
	.literal .LC69, 50331648
	.align	4
	.global	rtc_sleep_start
	.type	rtc_sleep_start, @function
rtc_sleep_start:
.LFB6:
	.loc 1 223 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 224 0
	l32r	a9, .LC61
	l32r	a8, .LC62
	memw
	l32i.n	a10, a9, 0
	extui	a2, a2, 0, 11
.LVL10:
	and	a8, a10, a8
	slli	a2, a2, 11
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
	.loc 1 225 0
	l32r	a2, .LC63
	.loc 1 228 0
	l32r	a8, .LC64
	.loc 1 225 0
	memw
	s32i.n	a3, a2, 0
	.loc 1 228 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC65
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
	.loc 1 230 0
	l32r	a8, .LC66
.L55:
	.loc 1 230 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a2, a8, 0
	extui	a2, a2, 0, 2
	beqz.n	a2, .L55
	.loc 1 236 0 is_stmt 1
	l32r	a9, .LC67
	.loc 1 235 0
	memw
	l32i.n	a2, a8, 0
.LVL11:
	.loc 1 236 0
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 3
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 240 0
	l32r	a9, .LC68
	l32r	a8, .LC69
	memw
	l32i.n	a10, a9, 0
	.loc 1 242 0
	extui	a2, a2, 1, 1
.LVL12:
	.loc 1 240 0
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 242 0
	retw.n
.LFE6:
	.size	rtc_sleep_start, .-rtc_sleep_start
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0x38
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f
	.byte	0x5
	.byte	0x65
	.4byte	0xc0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.2byte	0x21a
	.4byte	0x1da
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x21b
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x21c
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x21d
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x21e
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x21f
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x220
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x221
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x222
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x223
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x224
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x225
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x226
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x227
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x228
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x229
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x22a
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x22b
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x22c
	.4byte	0xc0
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.4byte	0x258
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x39
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3a
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3b
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3c
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3d
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3e
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3f
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x1
	.byte	0x40
	.4byte	0x1e6
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0x4a
	.4byte	0x6f
	.byte	0x3
	.4byte	0x27f
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x6f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	0x297
	.uleb128 0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x53
	.4byte	0x258
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x64
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f9
	.uleb128 0x10
	.string	"cfg"
	.byte	0x1
	.byte	0x64
	.4byte	0x1da
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x80
	.4byte	0x258
	.uleb128 0x12
	.4byte	0x27f
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x81
	.uleb128 0x13
	.4byte	0x28b
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	0x263
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.4byte	0x273
	.4byte	0x3ff0008c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31f
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xd8
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xde
	.4byte	0x6f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0xde
	.4byte	0x6f
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0xde
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0xeb
	.4byte	0x6f
	.4byte	.LLST3
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x40
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x19
	.uleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"pd_cfg"
.LASF36:
	.string	"dig_pd"
.LASF47:
	.string	"wakeup_opt"
.LASF50:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/soc/esp32/rtc_sleep.c"
.LASF38:
	.string	"cpu_pd"
.LASF21:
	.string	"rtc_fastmem_pd_en"
.LASF10:
	.string	"uint64_t"
.LASF26:
	.string	"deep_slp"
.LASF30:
	.string	"rtc_dbias_wak"
.LASF16:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF37:
	.string	"rtc_pd"
.LASF46:
	.string	"rtc_sleep_start"
.LASF32:
	.string	"lslp_meminf_pd"
.LASF23:
	.string	"rtc_peri_pd_en"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"rtc_sleep_init"
.LASF13:
	.string	"long unsigned int"
.LASF43:
	.string	"rtc_sleep_pd_config_t"
.LASF3:
	.string	"short unsigned int"
.LASF40:
	.string	"bb_pd"
.LASF54:
	.string	"reject"
.LASF42:
	.string	"fe_pd"
.LASF33:
	.string	"vddsdio_pd_en"
.LASF6:
	.string	"__uint32_t"
.LASF19:
	.string	"rtc_mem_inf_fpu"
.LASF35:
	.string	"rtc_sleep_config_t"
.LASF28:
	.string	"dig_dbias_wak"
.LASF4:
	.string	"unsigned int"
.LASF27:
	.string	"wdt_flashboot_mod_en"
.LASF8:
	.string	"long long unsigned int"
.LASF48:
	.string	"reject_opt"
.LASF25:
	.string	"rom_mem_pd_en"
.LASF52:
	.string	"rtc_sleep_pd"
.LASF24:
	.string	"wifi_pd_en"
.LASF49:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"rtc_dbias_slp"
.LASF34:
	.string	"xtal_fpu"
.LASF12:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF39:
	.string	"i2s_pd"
.LASF14:
	.string	"char"
.LASF45:
	.string	"rtc_sleep_set_wakeup_time"
.LASF20:
	.string	"rtc_mem_inf_follow_cpu"
.LASF18:
	.string	"lslp_mem_inf_fpu"
.LASF2:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF15:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF17:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF9:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF51:
	.string	"DPORT_REG_READ"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"rtc_slowmem_pd_en"
.LASF41:
	.string	"nrx_pd"
.LASF29:
	.string	"dig_dbias_slp"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
