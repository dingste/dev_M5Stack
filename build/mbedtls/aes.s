	.file	"aes.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"dec"
.LC2:
	.string	"enc"
.LC6:
	.string	"  AES-ECB-%3d (%s): "
.LC10:
	.string	"skipped"
.LC12:
	.string	"passed"
.LC14:
	.string	"  AES-CBC-%3d (%s): "
.LC18:
	.string	"  AES-CFB128-%3d (%s): "
.LC23:
	.string	"  AES-CTR-128 (%s): "
.LC30:
	.string	"  AES-XTS-128 (%s): "
.LC36:
	.string	"failed"
	.section	.text.mbedtls_aes_self_test,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, 10000
	.literal .LC5, aes_test_cfb128_pt
	.literal .LC7, .LC6
	.literal .LC8, aes_test_ecb_dec
	.literal .LC9, aes_test_ecb_enc
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, aes_test_cbc_dec
	.literal .LC17, aes_test_cbc_enc
	.literal .LC19, .LC18
	.literal .LC20, aes_test_cfb128_iv
	.literal .LC21, aes_test_cfb128_key
	.literal .LC22, aes_test_cfb128_ct
	.literal .LC24, .LC23
	.literal .LC25, aes_test_ctr_nonce_counter
	.literal .LC26, aes_test_ctr_key
	.literal .LC27, aes_test_ctr_len
	.literal .LC28, aes_test_ctr_ct
	.literal .LC29, aes_test_ctr_pt
	.literal .LC31, .LC30
	.literal .LC32, aes_test_xts_key
	.literal .LC33, aes_test_xts_data_unit
	.literal .LC34, aes_test_xts_ct32
	.literal .LC35, aes_test_xts_pt32
	.literal .LC37, .LC36
	.align	4
	.global	mbedtls_aes_self_test
	.type	mbedtls_aes_self_test, @function
mbedtls_aes_self_test:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/aes.c"
	.loc 1 1701 0
.LVL0:
	entry	sp, 336
.LCFI0:
.LVL1:
	.loc 1 1726 0
	movi	a4, 0xb3
	add.n	a3, sp, a4
	movi.n	a12, 0x20
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL2:
	.loc 1 1727 0
	addi	a5, sp, 16
	movi	a10, 0x82
	add.n	a10, a5, a10
	call8	esp_aes_init
.LVL3:
	.loc 1 1732 0
	movi.n	a5, 0
.LVL4:
.L11:
	.loc 1 1734 0
	srai	a6, a5, 1
.LVL5:
	.loc 1 1735 0
	addi.n	a4, a6, 2
	slli	a4, a4, 6
.LVL6:
	.loc 1 1736 0
	extui	a7, a5, 0, 1
.LVL7:
	.loc 1 1738 0
	beqz.n	a2, .L2
	.loc 1 1739 0
	l32r	a12, .LC1
	l32r	a8, .LC3
	l32r	a10, .LC7
	movnez	a12, a8, a7
	mov.n	a11, a4
	call8	printf
.LVL8:
.L2:
	.loc 1 1742 0
	addi	a3, sp, 82
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL9:
	.loc 1 1746 0
	movi	a11, 0xb3
	movi	a10, 0x82
	slli	a6, a6, 4
.LVL10:
	mov.n	a12, a4
	add.n	a11, a11, sp
	.loc 1 1744 0
	bnez.n	a7, .L4
	.loc 1 1746 0
	addi	a9, sp, 16
	add.n	a10, a9, a10
	call8	esp_aes_setkey
.LVL11:
	mov.n	a8, a10
.LVL12:
	.loc 1 1747 0
	l32r	a9, .LC8
	j	.L130
.LVL13:
.L4:
	.loc 1 1751 0
	addi	a8, sp, 16
	add.n	a10, a8, a10
	call8	esp_aes_setkey
.LVL14:
	.loc 1 1752 0
	l32r	a9, .LC9
	.loc 1 1751 0
	mov.n	a8, a10
.LVL15:
.L130:
	.loc 1 1752 0
	add.n	a6, a9, a6
.LVL16:
	.loc 1 1760 0
	addi	a9, a8, 35
	bnez.n	a9, .L6
	movi	a9, -0xc0
	add.n	a4, a4, a9
.LVL17:
	.loc 1 1762 0
	l32r	a10, .LC11
	.loc 1 1760 0
	beqz.n	a4, .L131
.LVL18:
.L6:
	.loc 1 1765 0
	bnez.n	a8, .L8
	.loc 1 1772 0
	movi	a9, 0x82
	addi	a8, sp, 16
.LVL19:
	l32r	a4, .LC4
	add.n	a9, a8, a9
.L9:
.LVL20:
	mov.n	a10, a9
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a7
	s32i	a9, sp, 300
	call8	esp_aes_crypt_ecb
.LVL21:
	mov.n	a8, a10
.LVL22:
	.loc 1 1773 0
	l32i	a9, sp, 300
	bnez.n	a10, .L8
.LVL23:
	addi.n	a4, a4, -1
.LVL24:
	.loc 1 1770 0 discriminator 2
	bnez.n	a4, .L9
	.loc 1 1777 0
	movi.n	a12, 0x10
	mov.n	a11, a6
	mov.n	a10, a3
	call8	memcmp
.LVL25:
	beqz.n	a10, .L10
	j	.L53
.L10:
	.loc 1 1783 0
	beqz.n	a2, .L7
	.loc 1 1784 0
	l32r	a10, .LC13
.LVL26:
.L131:
	call8	puts
.LVL27:
.L7:
	.loc 1 1732 0 discriminator 2
	addi.n	a5, a5, 1
.LVL28:
	bnei	a5, 6, .L11
	.loc 1 1787 0
	beqz.n	a2, .L12
	.loc 1 1788 0
	movi.n	a10, 0xa
	call8	putchar
.LVL29:
.L12:
	.loc 1 1804 0 discriminator 1
	movi	a4, 0xf3
	addi	a9, sp, 16
	add.n	a9, a9, a4
	.loc 1 1805 0 discriminator 1
	addi	a5, sp, 16
.LVL30:
	movi	a4, 0xe3
	add.n	a5, a5, a4
	movi.n	a6, 0
.LVL31:
	.loc 1 1804 0 discriminator 1
	s32i	a9, sp, 296
	.loc 1 1805 0 discriminator 1
	s32i	a5, sp, 288
.LVL32:
.L22:
	.loc 1 1796 0
	srai	a4, a6, 1
.LVL33:
	.loc 1 1797 0
	addi.n	a5, a4, 2
	slli	a5, a5, 6
.LVL34:
	.loc 1 1798 0
	extui	a7, a6, 0, 1
.LVL35:
	.loc 1 1800 0
	beqz.n	a2, .L13
	.loc 1 1801 0
	l32r	a8, .LC1
	l32r	a12, .LC3
	l32r	a10, .LC15
	moveqz	a12, a8, a7
	mov.n	a11, a5
	call8	printf
.LVL36:
.L13:
	.loc 1 1804 0
	l32i	a10, sp, 296
	movi.n	a12, 0x10
	movi.n	a11, 0
	call8	memset
.LVL37:
	.loc 1 1805 0
	l32i	a10, sp, 288
	movi.n	a12, 0x10
	movi.n	a11, 0
	call8	memset
.LVL38:
	.loc 1 1806 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL39:
	movi	a11, 0xa3
	movi	a10, 0x82
	slli	a4, a4, 4
.LVL40:
	.loc 1 1810 0
	mov.n	a12, a5
	.loc 1 1808 0
	bnez.n	a7, .L15
	.loc 1 1810 0
	addi	a8, sp, 16
	add.n	a11, a8, a11
	add.n	a10, a8, a10
	call8	esp_aes_setkey
.LVL41:
	mov.n	a8, a10
.LVL42:
	.loc 1 1811 0
	l32r	a9, .LC16
	j	.L132
.LVL43:
.L15:
	.loc 1 1815 0
	addi	a9, sp, 16
	add.n	a11, a9, a11
	add.n	a10, a9, a10
	call8	esp_aes_setkey
.LVL44:
	.loc 1 1816 0
	l32r	a9, .LC17
	.loc 1 1815 0
	mov.n	a8, a10
.LVL45:
.L132:
	.loc 1 1816 0
	add.n	a4, a9, a4
	s32i	a4, sp, 292
.LVL46:
	.loc 1 1824 0
	addi	a9, a8, 35
	bnez.n	a9, .L17
	movi	a9, -0xc0
	add.n	a5, a5, a9
.LVL47:
	.loc 1 1826 0
	l32r	a10, .LC11
	.loc 1 1824 0
	beqz.n	a5, .L133
.LVL48:
.L17:
	.loc 1 1829 0
	bnez.n	a8, .L8
	.loc 1 1845 0
	movi	a5, 0x82
	addi	a8, sp, 16
.LVL49:
	l32r	a4, .LC4
.LVL50:
	add.n	a5, a8, a5
.L20:
.LVL51:
	.loc 1 1836 0
	bnei	a7, 1, .L19
.LBB2:
	.loc 1 1840 0
	movi.n	a12, 0x10
	l32i	a11, sp, 288
	add.n	a10, sp, a12
	call8	memcpy
.LVL52:
	.loc 1 1841 0
	l32i	a10, sp, 288
	movi.n	a12, 0x10
	mov.n	a11, a3
	call8	memcpy
.LVL53:
	.loc 1 1842 0
	movi.n	a12, 0x10
	add.n	a11, sp, a12
	mov.n	a10, a3
	call8	memcpy
.LVL54:
.L19:
.LBE2:
	.loc 1 1845 0
	l32i	a13, sp, 296
	mov.n	a15, a3
	mov.n	a14, a3
	movi.n	a12, 0x10
	mov.n	a11, a7
	mov.n	a10, a5
	call8	esp_aes_crypt_cbc
.LVL55:
	mov.n	a8, a10
.LVL56:
	.loc 1 1846 0
	bnez.n	a10, .L8
.LVL57:
	addi.n	a4, a4, -1
.LVL58:
	.loc 1 1834 0 discriminator 2
	bnez.n	a4, .L20
	.loc 1 1851 0
	l32i	a11, sp, 292
	movi.n	a12, 0x10
	mov.n	a10, a3
	call8	memcmp
.LVL59:
	bnez.n	a10, .L53
	.loc 1 1857 0
	beqz.n	a2, .L18
	.loc 1 1858 0
	l32r	a10, .LC13
.LVL60:
.L133:
	call8	puts
.LVL61:
.L18:
	.loc 1 1794 0 discriminator 2
	addi.n	a6, a6, 1
.LVL62:
	bnei	a6, 6, .L22
	.loc 1 1861 0
	beqz.n	a2, .L23
	.loc 1 1862 0
	movi.n	a10, 0xa
	call8	putchar
.LVL63:
.L23:
	.loc 1 1879 0 discriminator 1
	movi	a4, 0xf3
	addi	a9, sp, 16
	add.n	a9, a9, a4
	.loc 1 1880 0 discriminator 1
	addi	a5, sp, 16
	movi	a4, 0xa3
	add.n	a5, a5, a4
	.loc 1 1883 0 discriminator 1
	addi	a8, sp, 16
	movi	a4, 0x82
	add.n	a8, a8, a4
	movi.n	a6, 0
.LVL64:
	.loc 1 1879 0 discriminator 1
	s32i	a9, sp, 288
	.loc 1 1880 0 discriminator 1
	s32i	a5, sp, 292
.LVL65:
	.loc 1 1883 0 discriminator 1
	s32i	a8, sp, 296
.LVL66:
.L30:
	.loc 1 1871 0
	srai	a4, a6, 1
.LVL67:
	.loc 1 1872 0
	addi.n	a5, a4, 2
	slli	a5, a5, 6
.LVL68:
	.loc 1 1873 0
	extui	a7, a6, 0, 1
.LVL69:
	.loc 1 1875 0
	beqz.n	a2, .L24
	.loc 1 1876 0
	l32r	a12, .LC1
	l32r	a9, .LC3
	l32r	a10, .LC19
	movnez	a12, a9, a7
	mov.n	a11, a5
	call8	printf
.LVL70:
.L24:
	.loc 1 1879 0
	l32r	a11, .LC20
	l32i	a10, sp, 288
	movi.n	a12, 0x10
	call8	memcpy
.LVL71:
	.loc 1 1880 0
	l32r	a8, .LC21
	slli	a11, a4, 5
	l32i	a10, sp, 292
	add.n	a11, a8, a11
	srli	a12, a5, 3
	call8	memcpy
.LVL72:
	.loc 1 1883 0
	l32i	a11, sp, 292
	l32i	a10, sp, 296
	.loc 1 1882 0
	movi.n	a8, 0
	.loc 1 1883 0
	mov.n	a12, a5
	.loc 1 1882 0
	s32i	a8, sp, 276
	.loc 1 1883 0
	call8	esp_aes_setkey
.LVL73:
	.loc 1 1889 0
	addi	a9, a10, 35
	.loc 1 1883 0
	mov.n	a8, a10
.LVL74:
	.loc 1 1889 0
	bnez.n	a9, .L26
	movi	a9, -0xc0
	add.n	a5, a5, a9
.LVL75:
	.loc 1 1891 0
	l32r	a10, .LC11
	.loc 1 1889 0
	beqz.n	a5, .L134
.LVL76:
.L26:
	.loc 1 1894 0
	bnez.n	a8, .L8
	slli	a4, a4, 6
.LVL77:
	l32r	a5, .LC5
	.loc 1 1901 0
	movi.n	a12, 0x40
	.loc 1 1899 0
	bnez.n	a7, .L28
	.loc 1 1901 0
	l32r	a8, .LC22
.LVL78:
	mov.n	a10, a3
	add.n	a11, a8, a4
	call8	memcpy
.LVL79:
	j	.L29
.LVL80:
.L28:
	.loc 1 1906 0
	mov.n	a11, a5
	mov.n	a10, a3
	call8	memcpy
.LVL81:
	.loc 1 1907 0
	l32r	a9, .LC22
	add.n	a5, a9, a4
.LVL82:
.L29:
	.loc 1 1910 0
	l32i	a14, sp, 288
	movi	a13, 0x104
	addi	a4, sp, 16
	l32i	a10, sp, 296
	s32i.n	a3, sp, 0
	mov.n	a15, a3
	add.n	a13, a4, a13
	movi.n	a12, 0x40
	mov.n	a11, a7
	call8	esp_aes_crypt_cfb128
.LVL83:
	mov.n	a8, a10
.LVL84:
	.loc 1 1911 0
	bnez.n	a10, .L8
	.loc 1 1914 0
	movi.n	a12, 0x40
	mov.n	a11, a5
	mov.n	a10, a3
	call8	memcmp
.LVL85:
	bnez.n	a10, .L53
	.loc 1 1920 0
	beqz.n	a2, .L27
	.loc 1 1921 0
	l32r	a10, .LC13
.LVL86:
.L134:
	call8	puts
.LVL87:
.L27:
	.loc 1 1869 0 discriminator 2
	addi.n	a6, a6, 1
.LVL88:
	bnei	a6, 6, .L30
	.loc 1 1924 0
	beqz.n	a2, .L31
	.loc 1 1925 0
	movi.n	a10, 0xa
	call8	putchar
.LVL89:
.L31:
	.loc 1 2004 0 discriminator 1
	movi	a5, 0xd3
	addi	a6, sp, 16
.LVL90:
	add.n	a6, a6, a5
	.loc 1 2005 0 discriminator 1
	addi	a8, sp, 16
	movi	a5, 0xa3
	add.n	a8, a8, a5
	.loc 1 2008 0 discriminator 1
	addi	a9, sp, 16
	movi	a5, 0x82
	add.n	a9, a9, a5
	.loc 1 1902 0 discriminator 1
	movi.n	a4, 0
	.loc 1 2004 0 discriminator 1
	s32i	a6, sp, 288
	.loc 1 2005 0 discriminator 1
	s32i	a8, sp, 292
	.loc 1 2008 0 discriminator 1
	s32i	a9, sp, 296
.LVL91:
.L37:
	.loc 1 1997 0
	srai	a6, a4, 1
.LVL92:
	.loc 1 1998 0
	extui	a7, a4, 0, 1
.LVL93:
	.loc 1 2000 0
	beqz.n	a2, .L32
	.loc 1 2001 0
	l32r	a11, .LC1
	l32r	a5, .LC3
	l32r	a10, .LC24
	movnez	a11, a5, a7
	call8	printf
.LVL94:
.L32:
	.loc 1 2004 0
	l32r	a11, .LC25
	slli	a5, a6, 4
	l32i	a10, sp, 288
	add.n	a11, a11, a5
	movi.n	a12, 0x10
	call8	memcpy
.LVL95:
	.loc 1 2005 0
	l32r	a11, .LC26
	l32i	a10, sp, 292
	add.n	a11, a11, a5
	movi.n	a12, 0x10
	call8	memcpy
.LVL96:
	.loc 1 2008 0
	l32i	a11, sp, 292
	l32i	a10, sp, 296
	.loc 1 2007 0
	movi.n	a5, 0
	.loc 1 2008 0
	movi	a12, 0x80
	.loc 1 2007 0
	s32i	a5, sp, 276
	.loc 1 2008 0
	call8	esp_aes_setkey
.LVL97:
	mov.n	a8, a10
.LVL98:
	bne	a10, a5, .L8
	.loc 1 2011 0
	l32r	a5, .LC27
	slli	a8, a6, 1
.LVL99:
	addx4	a5, a6, a5
	l32i.n	a5, a5, 0
.LVL100:
	.loc 1 2015 0
	add.n	a9, a8, a6
	.loc 1 2013 0
	bnez.n	a7, .L34
	.loc 1 2015 0
	l32r	a6, .LC28
.LVL101:
	slli	a7, a9, 4
.LVL102:
	mov.n	a12, a5
	add.n	a11, a6, a7
	mov.n	a10, a3
.LVL103:
	call8	memcpy
.LVL104:
	.loc 1 2016 0
	l32r	a8, .LC29
	j	.L135
.LVL105:
.L34:
	.loc 1 2020 0
	slli	a7, a9, 4
.LVL106:
	l32r	a9, .LC29
	mov.n	a12, a5
	add.n	a11, a9, a7
	mov.n	a10, a3
.LVL107:
	call8	memcpy
.LVL108:
	.loc 1 2021 0
	l32r	a8, .LC28
.LVL109:
.L135:
	.loc 1 2024 0
	addi	a9, sp, 16
	movi	a14, 0xc3
	l32i	a13, sp, 288
	movi	a12, 0x104
	l32i	a10, sp, 296
	s32i.n	a3, sp, 0
	mov.n	a15, a3
	add.n	a14, a9, a14
	add.n	a12, a9, a12
	mov.n	a11, a5
	.loc 1 2021 0
	add.n	a6, a8, a7
.LVL110:
	.loc 1 2024 0
	call8	esp_aes_crypt_ctr
.LVL111:
	mov.n	a8, a10
.LVL112:
	.loc 1 2026 0
	bnez.n	a10, .L8
	.loc 1 2029 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a3
	call8	memcmp
.LVL113:
	bnez.n	a10, .L53
	.loc 1 2035 0
	beqz.n	a2, .L36
	.loc 1 2036 0
	l32r	a10, .LC13
	call8	puts
.LVL114:
.L36:
	.loc 1 1995 0 discriminator 2
	addi.n	a4, a4, 1
.LVL115:
	bnei	a4, 6, .L37
	.loc 1 2039 0
	beqz.n	a2, .L38
	.loc 1 2040 0
	movi.n	a10, 0xa
	call8	putchar
.LVL116:
.L38:
.LBB3:
	.loc 1 2052 0
	addi	a10, sp, 16
.LBB4:
	.loc 1 2065 0
	movi	a6, 0xa3
.LVL117:
	addi	a4, sp, 16
.LVL118:
.LBE4:
	.loc 1 2052 0
	call8	esp_aes_xts_init
.LVL119:
	.loc 1 2054 0
	movi.n	a5, 0
.LVL120:
.LBB5:
	.loc 1 2065 0
	add.n	a6, a4, a6
.LVL121:
.L45:
	.loc 1 2057 0
	srai	a8, a5, 1
	s32i	a8, sp, 288
.LVL122:
	.loc 1 2058 0
	extui	a7, a5, 0, 1
.LVL123:
	.loc 1 2060 0
	beqz.n	a2, .L39
	.loc 1 2061 0
	l32r	a4, .LC1
	l32r	a11, .LC3
	l32r	a10, .LC31
	moveqz	a11, a4, a7
	call8	printf
.LVL124:
.L39:
	.loc 1 2065 0
	l32i	a9, sp, 288
	l32r	a11, .LC32
	slli	a4, a9, 5
	movi.n	a12, 0x20
	add.n	a11, a11, a4
	mov.n	a10, a6
	call8	memcpy
.LVL125:
	.loc 1 2066 0
	l32i	a9, sp, 288
	.loc 1 2072 0
	movi	a12, 0x100
	.loc 1 2066 0
	slli	a8, a9, 4
	l32r	a9, .LC33
	.loc 1 2072 0
	mov.n	a11, a6
	.loc 1 2066 0
	add.n	a9, a8, a9
	s32i	a9, sp, 288
.LVL126:
	.loc 1 2072 0
	addi	a10, sp, 16
	.loc 1 2070 0
	bnez.n	a7, .L41
	.loc 1 2072 0
	call8	esp_aes_xts_setkey_dec
.LVL127:
	mov.n	a8, a10
.LVL128:
	.loc 1 2073 0
	bnez.n	a10, .L8
	.loc 1 2075 0
	l32r	a11, .LC34
	movi.n	a12, 0x20
	add.n	a11, a11, a4
	mov.n	a10, a3
	call8	memcpy
.LVL129:
	.loc 1 2076 0
	l32r	a8, .LC35
	j	.L136
.LVL130:
.L41:
	.loc 1 2080 0
	call8	esp_aes_xts_setkey_enc
.LVL131:
	mov.n	a8, a10
.LVL132:
	.loc 1 2081 0
	bnez.n	a10, .L8
	.loc 1 2083 0
	l32r	a11, .LC35
	movi.n	a12, 0x20
	add.n	a11, a11, a4
	mov.n	a10, a3
	call8	memcpy
.LVL133:
	.loc 1 2084 0
	l32r	a8, .LC34
.L136:
	.loc 1 2088 0
	l32i	a13, sp, 288
	mov.n	a15, a3
	mov.n	a14, a3
	movi.n	a12, 0x20
	mov.n	a11, a7
	addi	a10, sp, 16
	.loc 1 2084 0
	add.n	a4, a4, a8
.LVL134:
	.loc 1 2088 0
	call8	esp_aes_crypt_xts
.LVL135:
	mov.n	a8, a10
.LVL136:
	.loc 1 2090 0
	bnez.n	a10, .L8
	.loc 1 2093 0
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a3
	s32i	a8, sp, 300
	call8	memcmp
.LVL137:
	l32i	a8, sp, 300
.LVL138:
	bnez.n	a10, .L53
	.loc 1 2099 0
	beqz.n	a2, .L44
	.loc 1 2100 0
	l32r	a10, .LC13
	call8	puts
.LVL139:
	l32i	a8, sp, 300
.L44:
.LBE5:
	.loc 1 2054 0 discriminator 2
	addi.n	a5, a5, 1
.LVL140:
	bnei	a5, 6, .L45
	.loc 1 2103 0
	beqz.n	a2, .L46
	.loc 1 2104 0
	movi.n	a10, 0xa
	s32i	a8, sp, 300
	call8	putchar
.LVL141:
	l32i	a8, sp, 300
.L46:
	.loc 1 2106 0
	addi	a10, sp, 16
	s32i	a8, sp, 300
	call8	esp_aes_xts_free
.LVL142:
	l32i	a8, sp, 300
	j	.L8
.LVL143:
.L53:
.LBB6:
	.loc 1 2095 0
	movi.n	a8, 1
.LVL144:
.L8:
.LBE6:
.LBE3:
	.loc 1 2113 0
	beqz.n	a8, .L47
	beqz.n	a2, .L47
	.loc 1 2114 0
	l32r	a10, .LC37
	s32i	a8, sp, 300
	call8	puts
.LVL145:
	l32i	a8, sp, 300
.L47:
	.loc 1 2116 0
	addi	a2, sp, 16
.LVL146:
	movi	a10, 0x82
	add.n	a10, a2, a10
	s32i	a8, sp, 300
	call8	esp_aes_free
.LVL147:
	.loc 1 2119 0
	l32i	a8, sp, 300
	mov.n	a2, a8
	retw.n
.LFE0:
	.size	mbedtls_aes_self_test, .-mbedtls_aes_self_test
	.section	.rodata.aes_test_xts_data_unit,"a",@progbits
	.type	aes_test_xts_data_unit, @object
	.size	aes_test_xts_data_unit, 48
aes_test_xts_data_unit:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.aes_test_xts_ct32,"a",@progbits
	.type	aes_test_xts_ct32, @object
	.size	aes_test_xts_ct32, 96
aes_test_xts_ct32:
	.byte	-111
	.byte	124
	.byte	-10
	.byte	-98
	.byte	-67
	.byte	104
	.byte	-78
	.byte	-20
	.byte	-101
	.byte	-97
	.byte	-23
	.byte	-93
	.byte	-22
	.byte	-35
	.byte	-90
	.byte	-110
	.byte	-51
	.byte	67
	.byte	-46
	.byte	-11
	.byte	-107
	.byte	-104
	.byte	-19
	.byte	-123
	.byte	-116
	.byte	2
	.byte	-62
	.byte	101
	.byte	47
	.byte	-65
	.byte	-110
	.byte	46
	.byte	-60
	.byte	84
	.byte	24
	.byte	94
	.byte	106
	.byte	22
	.byte	-109
	.byte	110
	.byte	57
	.byte	51
	.byte	64
	.byte	56
	.byte	-84
	.byte	-17
	.byte	-125
	.byte	-117
	.byte	-5
	.byte	24
	.byte	111
	.byte	-1
	.byte	116
	.byte	-128
	.byte	-83
	.byte	-60
	.byte	40
	.byte	-109
	.byte	-126
	.byte	-20
	.byte	-42
	.byte	-45
	.byte	-108
	.byte	-16
	.byte	-81
	.byte	-123
	.byte	51
	.byte	107
	.byte	89
	.byte	122
	.byte	-4
	.byte	26
	.byte	-112
	.byte	11
	.byte	46
	.byte	-78
	.byte	30
	.byte	-55
	.byte	73
	.byte	-46
	.byte	-110
	.byte	-33
	.byte	76
	.byte	4
	.byte	126
	.byte	11
	.byte	33
	.byte	83
	.byte	33
	.byte	-122
	.byte	-91
	.byte	-105
	.byte	26
	.byte	34
	.byte	122
	.byte	-119
	.section	.rodata.aes_test_xts_pt32,"a",@progbits
	.type	aes_test_xts_pt32, @object
	.size	aes_test_xts_pt32, 96
aes_test_xts_pt32:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.section	.rodata.aes_test_xts_key,"a",@progbits
	.type	aes_test_xts_key, @object
	.size	aes_test_xts_key, 96
aes_test_xts_key:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-4
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-8
	.byte	-9
	.byte	-10
	.byte	-11
	.byte	-12
	.byte	-13
	.byte	-14
	.byte	-15
	.byte	-16
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.section	.rodata.aes_test_ctr_len,"a",@progbits
	.align	4
	.type	aes_test_ctr_len, @object
	.size	aes_test_ctr_len, 12
aes_test_ctr_len:
	.word	16
	.word	32
	.word	36
	.section	.rodata.aes_test_ctr_ct,"a",@progbits
	.type	aes_test_ctr_ct, @object
	.size	aes_test_ctr_ct, 144
aes_test_ctr_ct:
	.byte	-28
	.byte	9
	.byte	93
	.byte	79
	.byte	-73
	.byte	-89
	.byte	-77
	.byte	121
	.byte	45
	.byte	97
	.byte	117
	.byte	-93
	.byte	38
	.byte	19
	.byte	17
	.byte	-72
	.zero	32
	.byte	81
	.byte	4
	.byte	-95
	.byte	6
	.byte	22
	.byte	-118
	.byte	114
	.byte	-39
	.byte	121
	.byte	13
	.byte	65
	.byte	-18
	.byte	-114
	.byte	-38
	.byte	-45
	.byte	-120
	.byte	-21
	.byte	46
	.byte	30
	.byte	-4
	.byte	70
	.byte	-38
	.byte	87
	.byte	-56
	.byte	-4
	.byte	-26
	.byte	48
	.byte	-33
	.byte	-111
	.byte	65
	.byte	-66
	.byte	40
	.zero	16
	.byte	-63
	.byte	-49
	.byte	72
	.byte	-88
	.byte	-97
	.byte	47
	.byte	-3
	.byte	-39
	.byte	-49
	.byte	70
	.byte	82
	.byte	-23
	.byte	-17
	.byte	-37
	.byte	114
	.byte	-41
	.byte	69
	.byte	64
	.byte	-92
	.byte	43
	.byte	-34
	.byte	109
	.byte	120
	.byte	54
	.byte	-43
	.byte	-102
	.byte	92
	.byte	-22
	.byte	-82
	.byte	-13
	.byte	16
	.byte	83
	.byte	37
	.byte	-78
	.byte	7
	.byte	47
	.zero	12
	.section	.rodata.aes_test_ctr_pt,"a",@progbits
	.type	aes_test_ctr_pt, @object
	.size	aes_test_ctr_pt, 144
aes_test_ctr_pt:
	.byte	83
	.byte	105
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	32
	.byte	98
	.byte	108
	.byte	111
	.byte	99
	.byte	107
	.byte	32
	.byte	109
	.byte	115
	.byte	103
	.zero	32
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.zero	16
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.zero	12
	.section	.rodata.aes_test_ctr_nonce_counter,"a",@progbits
	.type	aes_test_ctr_nonce_counter, @object
	.size	aes_test_ctr_nonce_counter, 48
aes_test_ctr_nonce_counter:
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	108
	.byte	-74
	.byte	-37
	.byte	-64
	.byte	84
	.byte	59
	.byte	89
	.byte	-38
	.byte	72
	.byte	-39
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	-32
	.byte	1
	.byte	123
	.byte	39
	.byte	119
	.byte	127
	.byte	63
	.byte	74
	.byte	23
	.byte	-122
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.section	.rodata.aes_test_ctr_key,"a",@progbits
	.type	aes_test_ctr_key, @object
	.size	aes_test_ctr_key, 48
aes_test_ctr_key:
	.byte	-82
	.byte	104
	.byte	82
	.byte	-8
	.byte	18
	.byte	16
	.byte	103
	.byte	-52
	.byte	75
	.byte	-9
	.byte	-91
	.byte	118
	.byte	85
	.byte	119
	.byte	-13
	.byte	-98
	.byte	126
	.byte	36
	.byte	6
	.byte	120
	.byte	23
	.byte	-6
	.byte	-32
	.byte	-41
	.byte	67
	.byte	-42
	.byte	-50
	.byte	31
	.byte	50
	.byte	83
	.byte	-111
	.byte	99
	.byte	118
	.byte	-111
	.byte	-66
	.byte	3
	.byte	94
	.byte	80
	.byte	32
	.byte	-88
	.byte	-84
	.byte	110
	.byte	97
	.byte	-123
	.byte	41
	.byte	-7
	.byte	-96
	.byte	-36
	.section	.rodata.aes_test_cfb128_ct,"a",@progbits
	.type	aes_test_cfb128_ct, @object
	.size	aes_test_cfb128_ct, 192
aes_test_cfb128_ct:
	.byte	59
	.byte	63
	.byte	-39
	.byte	46
	.byte	-73
	.byte	45
	.byte	-83
	.byte	32
	.byte	51
	.byte	52
	.byte	73
	.byte	-8
	.byte	-24
	.byte	60
	.byte	-5
	.byte	74
	.byte	-56
	.byte	-90
	.byte	69
	.byte	55
	.byte	-96
	.byte	-77
	.byte	-87
	.byte	63
	.byte	-51
	.byte	-29
	.byte	-51
	.byte	-83
	.byte	-97
	.byte	28
	.byte	-27
	.byte	-117
	.byte	38
	.byte	117
	.byte	31
	.byte	103
	.byte	-93
	.byte	-53
	.byte	-79
	.byte	64
	.byte	-79
	.byte	-128
	.byte	-116
	.byte	-15
	.byte	-121
	.byte	-92
	.byte	-12
	.byte	-33
	.byte	-64
	.byte	75
	.byte	5
	.byte	53
	.byte	124
	.byte	93
	.byte	28
	.byte	14
	.byte	-22
	.byte	-60
	.byte	-58
	.byte	111
	.byte	-97
	.byte	-9
	.byte	-14
	.byte	-26
	.byte	-51
	.byte	-56
	.byte	13
	.byte	111
	.byte	-35
	.byte	-15
	.byte	-116
	.byte	-85
	.byte	52
	.byte	-62
	.byte	89
	.byte	9
	.byte	-55
	.byte	-102
	.byte	65
	.byte	116
	.byte	103
	.byte	-50
	.byte	127
	.byte	127
	.byte	-127
	.byte	23
	.byte	54
	.byte	33
	.byte	-106
	.byte	26
	.byte	43
	.byte	112
	.byte	23
	.byte	29
	.byte	61
	.byte	122
	.byte	46
	.byte	30
	.byte	-118
	.byte	29
	.byte	-43
	.byte	-101
	.byte	-120
	.byte	-79
	.byte	-56
	.byte	-26
	.byte	15
	.byte	-19
	.byte	30
	.byte	-6
	.byte	-60
	.byte	-55
	.byte	-64
	.byte	95
	.byte	-97
	.byte	-100
	.byte	-87
	.byte	-125
	.byte	79
	.byte	-96
	.byte	66
	.byte	-82
	.byte	-113
	.byte	-70
	.byte	88
	.byte	75
	.byte	9
	.byte	-1
	.byte	-36
	.byte	126
	.byte	-124
	.byte	-65
	.byte	-38
	.byte	121
	.byte	22
	.byte	75
	.byte	126
	.byte	-51
	.byte	-124
	.byte	-122
	.byte	-104
	.byte	93
	.byte	56
	.byte	96
	.byte	57
	.byte	-1
	.byte	-19
	.byte	20
	.byte	59
	.byte	40
	.byte	-79
	.byte	-56
	.byte	50
	.byte	17
	.byte	60
	.byte	99
	.byte	49
	.byte	-27
	.byte	64
	.byte	123
	.byte	-33
	.byte	16
	.byte	19
	.byte	36
	.byte	21
	.byte	-27
	.byte	75
	.byte	-110
	.byte	-95
	.byte	62
	.byte	-48
	.byte	-88
	.byte	38
	.byte	122
	.byte	-30
	.byte	-7
	.byte	117
	.byte	-93
	.byte	-123
	.byte	116
	.byte	26
	.byte	-71
	.byte	-50
	.byte	-8
	.byte	32
	.byte	49
	.byte	98
	.byte	61
	.byte	85
	.byte	-79
	.byte	-28
	.byte	113
	.section	.rodata.aes_test_cfb128_pt,"a",@progbits
	.type	aes_test_cfb128_pt, @object
	.size	aes_test_cfb128_pt, 64
aes_test_cfb128_pt:
	.byte	107
	.byte	-63
	.byte	-66
	.byte	-30
	.byte	46
	.byte	64
	.byte	-97
	.byte	-106
	.byte	-23
	.byte	61
	.byte	126
	.byte	17
	.byte	115
	.byte	-109
	.byte	23
	.byte	42
	.byte	-82
	.byte	45
	.byte	-118
	.byte	87
	.byte	30
	.byte	3
	.byte	-84
	.byte	-100
	.byte	-98
	.byte	-73
	.byte	111
	.byte	-84
	.byte	69
	.byte	-81
	.byte	-114
	.byte	81
	.byte	48
	.byte	-56
	.byte	28
	.byte	70
	.byte	-93
	.byte	92
	.byte	-28
	.byte	17
	.byte	-27
	.byte	-5
	.byte	-63
	.byte	25
	.byte	26
	.byte	10
	.byte	82
	.byte	-17
	.byte	-10
	.byte	-97
	.byte	36
	.byte	69
	.byte	-33
	.byte	79
	.byte	-101
	.byte	23
	.byte	-83
	.byte	43
	.byte	65
	.byte	123
	.byte	-26
	.byte	108
	.byte	55
	.byte	16
	.section	.rodata.aes_test_cfb128_iv,"a",@progbits
	.type	aes_test_cfb128_iv, @object
	.size	aes_test_cfb128_iv, 16
aes_test_cfb128_iv:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.section	.rodata.aes_test_cfb128_key,"a",@progbits
	.type	aes_test_cfb128_key, @object
	.size	aes_test_cfb128_key, 96
aes_test_cfb128_key:
	.byte	43
	.byte	126
	.byte	21
	.byte	22
	.byte	40
	.byte	-82
	.byte	-46
	.byte	-90
	.byte	-85
	.byte	-9
	.byte	21
	.byte	-120
	.byte	9
	.byte	-49
	.byte	79
	.byte	60
	.zero	16
	.byte	-114
	.byte	115
	.byte	-80
	.byte	-9
	.byte	-38
	.byte	14
	.byte	100
	.byte	82
	.byte	-56
	.byte	16
	.byte	-13
	.byte	43
	.byte	-128
	.byte	-112
	.byte	121
	.byte	-27
	.byte	98
	.byte	-8
	.byte	-22
	.byte	-46
	.byte	82
	.byte	44
	.byte	107
	.byte	123
	.zero	8
	.byte	96
	.byte	61
	.byte	-21
	.byte	16
	.byte	21
	.byte	-54
	.byte	113
	.byte	-66
	.byte	43
	.byte	115
	.byte	-82
	.byte	-16
	.byte	-123
	.byte	125
	.byte	119
	.byte	-127
	.byte	31
	.byte	53
	.byte	44
	.byte	7
	.byte	59
	.byte	97
	.byte	8
	.byte	-41
	.byte	45
	.byte	-104
	.byte	16
	.byte	-93
	.byte	9
	.byte	20
	.byte	-33
	.byte	-12
	.section	.rodata.aes_test_cbc_enc,"a",@progbits
	.type	aes_test_cbc_enc, @object
	.size	aes_test_cbc_enc, 48
aes_test_cbc_enc:
	.byte	-118
	.byte	5
	.byte	-4
	.byte	94
	.byte	9
	.byte	90
	.byte	-12
	.byte	-124
	.byte	-118
	.byte	8
	.byte	-45
	.byte	40
	.byte	-45
	.byte	104
	.byte	-114
	.byte	61
	.byte	123
	.byte	-39
	.byte	102
	.byte	-43
	.byte	58
	.byte	-40
	.byte	-63
	.byte	-69
	.byte	-123
	.byte	-46
	.byte	-83
	.byte	-6
	.byte	-24
	.byte	123
	.byte	-79
	.byte	4
	.byte	-2
	.byte	60
	.byte	83
	.byte	101
	.byte	62
	.byte	47
	.byte	69
	.byte	-75
	.byte	111
	.byte	-51
	.byte	-120
	.byte	-78
	.byte	-52
	.byte	-119
	.byte	-113
	.byte	-16
	.section	.rodata.aes_test_cbc_dec,"a",@progbits
	.type	aes_test_cbc_dec, @object
	.size	aes_test_cbc_dec, 48
aes_test_cbc_dec:
	.byte	-6
	.byte	-54
	.byte	55
	.byte	-32
	.byte	-80
	.byte	-56
	.byte	83
	.byte	115
	.byte	-33
	.byte	112
	.byte	110
	.byte	115
	.byte	-9
	.byte	-55
	.byte	-81
	.byte	-122
	.byte	93
	.byte	-10
	.byte	120
	.byte	-35
	.byte	23
	.byte	-70
	.byte	78
	.byte	117
	.byte	-74
	.byte	23
	.byte	104
	.byte	-58
	.byte	-83
	.byte	-17
	.byte	124
	.byte	123
	.byte	72
	.byte	4
	.byte	-31
	.byte	-127
	.byte	-113
	.byte	-26
	.byte	41
	.byte	117
	.byte	25
	.byte	-93
	.byte	-24
	.byte	-116
	.byte	87
	.byte	49
	.byte	4
	.byte	19
	.section	.rodata.aes_test_ecb_enc,"a",@progbits
	.type	aes_test_ecb_enc, @object
	.size	aes_test_ecb_enc, 48
aes_test_ecb_enc:
	.byte	-61
	.byte	76
	.byte	5
	.byte	44
	.byte	-64
	.byte	-38
	.byte	-115
	.byte	115
	.byte	69
	.byte	26
	.byte	-2
	.byte	95
	.byte	3
	.byte	-66
	.byte	41
	.byte	127
	.byte	-13
	.byte	-10
	.byte	117
	.byte	42
	.byte	-24
	.byte	-41
	.byte	-125
	.byte	17
	.byte	56
	.byte	-16
	.byte	65
	.byte	86
	.byte	6
	.byte	49
	.byte	-79
	.byte	20
	.byte	-117
	.byte	121
	.byte	-18
	.byte	-52
	.byte	-109
	.byte	-96
	.byte	-18
	.byte	93
	.byte	-1
	.byte	48
	.byte	-76
	.byte	-22
	.byte	33
	.byte	99
	.byte	109
	.byte	-92
	.section	.rodata.aes_test_ecb_dec,"a",@progbits
	.type	aes_test_ecb_dec, @object
	.size	aes_test_ecb_dec, 48
aes_test_ecb_dec:
	.byte	68
	.byte	65
	.byte	106
	.byte	-62
	.byte	-47
	.byte	-11
	.byte	60
	.byte	88
	.byte	51
	.byte	3
	.byte	-111
	.byte	126
	.byte	107
	.byte	-23
	.byte	-21
	.byte	-32
	.byte	72
	.byte	-29
	.byte	30
	.byte	-98
	.byte	37
	.byte	103
	.byte	24
	.byte	-14
	.byte	-110
	.byte	41
	.byte	49
	.byte	-100
	.byte	25
	.byte	-15
	.byte	91
	.byte	-92
	.byte	5
	.byte	-116
	.byte	-49
	.byte	-3
	.byte	-69
	.byte	-53
	.byte	56
	.byte	45
	.byte	31
	.byte	111
	.byte	86
	.byte	88
	.byte	93
	.byte	-118
	.byte	74
	.byte	-34
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
	.uleb128 0x150
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/esp32/include/hwcrypto/aes.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/port/include/aes_alt.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdio.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x21
	.byte	0x5
	.byte	0x31
	.4byte	0xbb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x32
	.4byte	0x8f
	.byte	0
	.uleb128 0x7
	.string	"key"
	.byte	0x5
	.byte	0x33
	.4byte	0xbb
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0xcb
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x34
	.4byte	0x9a
	.uleb128 0x5
	.byte	0x42
	.byte	0x5
	.byte	0x3a
	.4byte	0xf7
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x3c
	.4byte	0xcb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3e
	.4byte	0xcb
	.byte	0x21
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x40
	.4byte	0xd6
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x21
	.4byte	0xcb
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x33
	.4byte	0xf7
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x6a4
	.4byte	0x3e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x6a4
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0xc
	.string	"ret"
	.byte	0x1
	.2byte	0x6a6
	.4byte	0x3e
	.4byte	.LLST1
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.2byte	0x6a6
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.2byte	0x6a6
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0xc
	.string	"u"
	.byte	0x1
	.2byte	0x6a6
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x6a6
	.4byte	0x3e
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6a7
	.4byte	0x30
	.4byte	.LLST6
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.2byte	0x6a8
	.4byte	0x9c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.2byte	0x6a9
	.4byte	0x9d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -254
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x6aa
	.4byte	0x9e0
	.4byte	.LLST7
	.uleb128 0xe
	.string	"iv"
	.byte	0x1
	.2byte	0x6ac
	.4byte	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0xe
	.string	"prv"
	.byte	0x1
	.2byte	0x6af
	.4byte	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x6b3
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.2byte	0x6b6
	.4byte	0x3e
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x6b9
	.4byte	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x6ba
	.4byte	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -125
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x6bc
	.4byte	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -190
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x840
	.4byte	.L8
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x2c1
	.uleb128 0xe
	.string	"tmp"
	.byte	0x1
	.2byte	0x72e
	.4byte	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x12
	.4byte	.LVL52
	.4byte	0xbef
	.4byte	0x284
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL53
	.4byte	0xbef
	.4byte	0x2a4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.4byte	.LVL54
	.4byte	0xbef
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x46d
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x7fd
	.4byte	0x9fb
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x7ff
	.4byte	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x434
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x808
	.4byte	0x9e0
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LVL124
	.4byte	0xbf8
	.4byte	0x32f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x10
	.byte	0x3
	.4byte	.LC2
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL125
	.4byte	0xbef
	.4byte	0x355
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_xts_key
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL127
	.4byte	0xc03
	.4byte	0x377
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -163
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x12
	.4byte	.LVL129
	.4byte	0xbef
	.4byte	0x39d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_xts_ct32
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL131
	.4byte	0xc0e
	.uleb128 0x12
	.4byte	.LVL133
	.4byte	0xbef
	.4byte	0x3cc
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_xts_pt32
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL135
	.4byte	0xc19
	.4byte	0x400
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -163
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL137
	.4byte	0xc25
	.4byte	0x420
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL139
	.4byte	0xc30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL119
	.4byte	0xc3f
	.4byte	0x448
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL141
	.4byte	0xc4a
	.4byte	0x45b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x14
	.4byte	.LVL142
	.4byte	0xc59
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -163
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0xc64
	.4byte	0x48c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0xc6d
	.4byte	0x4a1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 130
	.byte	0
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0xbf8
	.4byte	0x4d5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.byte	0x3
	.4byte	.LC2
	.byte	0x3
	.4byte	.LC0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0xc64
	.4byte	0x4f3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL11
	.4byte	0xc78
	.4byte	0x515
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -190
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL14
	.4byte	0xc78
	.4byte	0x52a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -190
	.byte	0
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0xc83
	.4byte	0x54a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL25
	.4byte	0xc25
	.4byte	0x569
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0xc30
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0xc4a
	.4byte	0x585
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LVL36
	.4byte	0xbf8
	.4byte	0x5b9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.byte	0x3
	.4byte	.LC2
	.byte	0x3
	.4byte	.LC0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0xc64
	.4byte	0x5d8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL38
	.4byte	0xc64
	.4byte	0x5f7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL39
	.4byte	0xc64
	.4byte	0x615
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL41
	.4byte	0xc78
	.4byte	0x63d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x61
	.byte	0x1c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL44
	.4byte	0xc78
	.4byte	0x65f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x61
	.byte	0x1c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL55
	.4byte	0xc8e
	.4byte	0x691
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL59
	.4byte	0xc25
	.4byte	0x6b1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xc30
	.uleb128 0x12
	.4byte	.LVL63
	.4byte	0xc4a
	.4byte	0x6cd
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LVL70
	.4byte	0xbf8
	.4byte	0x701
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.byte	0x3
	.4byte	.LC2
	.byte	0x3
	.4byte	.LC0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL71
	.4byte	0xbef
	.4byte	0x724
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cfb128_iv
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL72
	.4byte	0xbef
	.4byte	0x74f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.4byte	aes_test_cfb128_key
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x12
	.4byte	.LVL73
	.4byte	0xc78
	.4byte	0x771
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL79
	.4byte	0xbef
	.4byte	0x797
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_cfb128_ct
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL81
	.4byte	0xbef
	.4byte	0x7b1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL83
	.4byte	0xc9a
	.4byte	0x7ed
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x74
	.sleb128 260
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL85
	.4byte	0xc25
	.4byte	0x80d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL87
	.4byte	0xc30
	.uleb128 0x12
	.4byte	.LVL89
	.4byte	0xc4a
	.4byte	0x829
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LVL94
	.4byte	0xbf8
	.4byte	0x854
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x10
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL95
	.4byte	0xbef
	.4byte	0x87a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_ctr_nonce_counter
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL96
	.4byte	0xbef
	.4byte	0x8a0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_ctr_key
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL97
	.4byte	0xc78
	.4byte	0x8c2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL104
	.4byte	0xbef
	.4byte	0x8e5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL108
	.4byte	0xbef
	.4byte	0x90b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	aes_test_ctr_pt
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL111
	.4byte	0xca6
	.4byte	0x94d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL113
	.4byte	0xc25
	.4byte	0x96d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL114
	.4byte	0xc30
	.4byte	0x984
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x12
	.4byte	.LVL116
	.4byte	0xc4a
	.4byte	0x997
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LVL145
	.4byte	0xc30
	.4byte	0x9ae
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x14
	.4byte	.LVL147
	.4byte	0xcb2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 130
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x9d0
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x9e0
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x9e6
	.uleb128 0x19
	.4byte	0x57
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x9fb
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.4byte	0x3e
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xa16
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x570
	.4byte	0xa28
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ecb_dec
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x57a
	.4byte	0xa3f
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ecb_enc
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x585
	.4byte	0xa56
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cbc_dec
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x58f
	.4byte	0xa6d
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cbc_enc
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xa88
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x5a0
	.4byte	0xa9a
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cfb128_key
	.uleb128 0x19
	.4byte	0xa72
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x5ad
	.4byte	0xab1
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cfb128_iv
	.uleb128 0x19
	.4byte	0x9eb
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x5b3
	.4byte	0xac8
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cfb128_pt
	.uleb128 0x19
	.4byte	0x9d0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xae3
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x5bf
	.4byte	0xaf5
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_cfb128_ct
	.uleb128 0x19
	.4byte	0xacd
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x625
	.4byte	0xb0c
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ctr_key
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x62f
	.4byte	0xb23
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ctr_nonce_counter
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xb3e
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x639
	.4byte	0xb50
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ctr_pt
	.uleb128 0x19
	.4byte	0xb28
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x64a
	.4byte	0xb67
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ctr_ct
	.uleb128 0x19
	.4byte	0xb28
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xb7c
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x659
	.4byte	0xb8e
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_ctr_len
	.uleb128 0x19
	.4byte	0xb6c
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x665
	.4byte	0xba5
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_xts_key
	.uleb128 0x19
	.4byte	0xa72
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x675
	.4byte	0xbbc
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_xts_pt32
	.uleb128 0x19
	.4byte	0xa72
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x685
	.4byte	0xbd3
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_xts_ct32
	.uleb128 0x19
	.4byte	0xa72
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x695
	.4byte	0xbea
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_test_xts_data_unit
	.uleb128 0x19
	.4byte	0xa00
	.uleb128 0x1a
	.4byte	.LASF58
	.4byte	.LASF58
	.uleb128 0x1b
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x7
	.byte	0xb2
	.uleb128 0x1b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x8
	.byte	0xd7
	.uleb128 0x1b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x8
	.byte	0xc5
	.uleb128 0x1c
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x146
	.uleb128 0x1b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.byte	0x16
	.uleb128 0x1d
	.4byte	.LASF53
	.4byte	.LASF55
	.byte	0xa
	.byte	0
	.4byte	.LASF53
	.uleb128 0x1b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.byte	0x8c
	.uleb128 0x1d
	.4byte	.LASF54
	.4byte	.LASF56
	.byte	0xa
	.byte	0
	.4byte	.LASF54
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x93
	.uleb128 0x1a
	.4byte	.LASF59
	.4byte	.LASF59
	.uleb128 0x1b
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x7a
	.uleb128 0x1b
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x8
	.byte	0xb3
	.uleb128 0x1b
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0xf0
	.uleb128 0x1c
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x11b
	.uleb128 0x1c
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x171
	.uleb128 0x1c
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x21a
	.uleb128 0x1b
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x8
	.byte	0x81
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL133-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x7
	.byte	0xa
	.2byte	0x2711
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x7
	.byte	0xa
	.2byte	0x2711
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10
	.4byte	.LVL28
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x75
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL62
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x5
	.byte	0x76
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL88
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x5
	.byte	0x76
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL124-1
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL126
	.4byte	.LVL140
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x5
	.byte	0x75
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x74
	.sleb128 -1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0x74
	.sleb128 192
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x9
	.byte	0x75
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0x75
	.sleb128 192
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL62
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x76
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0x75
	.sleb128 192
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x5
	.byte	0x74
	.sleb128 2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL88
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x9
	.byte	0x76
	.sleb128 -1
	.byte	0x31
	.byte	0x26
	.byte	0x23
	.uleb128 0x2
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x3
	.4byte	aes_test_cfb128_pt
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL110
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL100
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL127-1
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL131-1
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"printf"
.LASF3:
	.string	"size_t"
.LASF4:
	.string	"__uint8_t"
.LASF35:
	.string	"aes_test_cfb128_iv"
.LASF26:
	.string	"stream_block"
.LASF60:
	.string	"esp_aes_init"
.LASF8:
	.string	"long long unsigned int"
.LASF14:
	.string	"key_bytes"
.LASF29:
	.string	"data_unit"
.LASF69:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF66:
	.string	"esp_aes_free"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"esp_aes_crypt_cbc"
.LASF70:
	.string	"mbedtls_aes_self_test"
.LASF9:
	.string	"long int"
.LASF23:
	.string	"aes_tests"
.LASF16:
	.string	"crypt"
.LASF55:
	.string	"__builtin_puts"
.LASF54:
	.string	"putchar"
.LASF45:
	.string	"aes_test_xts_ct32"
.LASF44:
	.string	"aes_test_xts_pt32"
.LASF17:
	.string	"tweak"
.LASF37:
	.string	"aes_test_cfb128_ct"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF68:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/aes.c"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"aes_test_xts_data_unit"
.LASF56:
	.string	"__builtin_putchar"
.LASF30:
	.string	"aes_test_ecb_dec"
.LASF31:
	.string	"aes_test_ecb_enc"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"keybits"
.LASF61:
	.string	"esp_aes_setkey"
.LASF53:
	.string	"puts"
.LASF10:
	.string	"sizetype"
.LASF43:
	.string	"aes_test_xts_key"
.LASF40:
	.string	"aes_test_ctr_pt"
.LASF27:
	.string	"num_tests"
.LASF20:
	.string	"mbedtls_aes_xts_context"
.LASF25:
	.string	"nonce_counter"
.LASF18:
	.string	"esp_aes_xts_context"
.LASF65:
	.string	"esp_aes_crypt_ctr"
.LASF32:
	.string	"aes_test_cbc_dec"
.LASF33:
	.string	"aes_test_cbc_enc"
.LASF42:
	.string	"aes_test_ctr_len"
.LASF5:
	.string	"unsigned char"
.LASF64:
	.string	"esp_aes_crypt_cfb128"
.LASF6:
	.string	"short int"
.LASF39:
	.string	"aes_test_ctr_nonce_counter"
.LASF28:
	.string	"ctx_xts"
.LASF72:
	.string	"exit"
.LASF50:
	.string	"esp_aes_crypt_xts"
.LASF12:
	.string	"char"
.LASF21:
	.string	"mode"
.LASF38:
	.string	"aes_test_ctr_key"
.LASF71:
	.string	"verbose"
.LASF41:
	.string	"aes_test_ctr_ct"
.LASF24:
	.string	"offset"
.LASF58:
	.string	"memcpy"
.LASF52:
	.string	"esp_aes_xts_init"
.LASF15:
	.string	"esp_aes_context"
.LASF34:
	.string	"aes_test_cfb128_key"
.LASF59:
	.string	"memset"
.LASF57:
	.string	"esp_aes_xts_free"
.LASF13:
	.string	"uint8_t"
.LASF62:
	.string	"esp_aes_crypt_ecb"
.LASF19:
	.string	"mbedtls_aes_context"
.LASF48:
	.string	"esp_aes_xts_setkey_dec"
.LASF49:
	.string	"esp_aes_xts_setkey_enc"
.LASF51:
	.string	"memcmp"
.LASF36:
	.string	"aes_test_cfb128_pt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
