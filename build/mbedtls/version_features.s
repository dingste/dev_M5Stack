	.file	"version_features.c"
	.text
.Ltext0:
	.section	.text.mbedtls_version_check_feature,"ax",@progbits
	.literal_position
	.literal .LC0, features
	.align	4
	.global	mbedtls_version_check_feature
	.type	mbedtls_version_check_feature, @function
mbedtls_version_check_feature:
.LVL0:
.LFB0:
	.file 1 "/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/library/version_features.c"
	.loc 1 761 1 view -0
	.loc 1 761 1 is_stmt 0 view .LVU1
	entry	sp, 32
.LCFI0:
	.loc 1 762 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 764 5 view .LVU3
	.loc 1 764 9 is_stmt 0 view .LVU4
	l32r	a3, .LC0
	.loc 1 765 15 view .LVU5
	movi.n	a10, -2
	.loc 1 764 7 view .LVU6
	l32i.n	a8, a3, 0
	beqz.n	a8, .L1
	.loc 1 767 5 is_stmt 1 view .LVU7
	.loc 1 768 15 is_stmt 0 view .LVU8
	movi.n	a10, -1
	.loc 1 767 7 view .LVU9
	beqz.n	a2, .L1
	j	.L3
.LVL2:
.L4:
	.loc 1 772 9 is_stmt 1 view .LVU10
	.loc 1 772 14 is_stmt 0 view .LVU11
	mov.n	a11, a2
	call8	strcmp
.LVL3:
	.loc 1 772 11 view .LVU12
	beqz.n	a10, .L1
	.loc 1 774 9 is_stmt 1 view .LVU13
	.loc 1 774 12 is_stmt 0 view .LVU14
	addi.n	a3, a3, 4
.LVL4:
.L3:
	.loc 1 770 12 view .LVU15
	l32i.n	a10, a3, 0
	.loc 1 770 10 view .LVU16
	bnez.n	a10, .L4
	.loc 1 768 15 view .LVU17
	movi.n	a10, -1
.LVL5:
.L1:
	.loc 1 777 1 view .LVU18
	mov.n	a2, a10
.LVL6:
	.loc 1 777 1 view .LVU19
	retw.n
.LFE0:
	.size	mbedtls_version_check_feature, .-mbedtls_version_check_feature
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"MBEDTLS_HAVE_ASM"
.LC2:
	.string	"MBEDTLS_HAVE_TIME"
.LC3:
	.string	"MBEDTLS_PLATFORM_MEMORY"
.LC4:
	.string	"MBEDTLS_AES_ALT"
.LC5:
	.string	"MBEDTLS_SHA1_ALT"
.LC6:
	.string	"MBEDTLS_SHA256_ALT"
.LC7:
	.string	"MBEDTLS_SHA512_ALT"
.LC8:
	.string	"MBEDTLS_ENTROPY_HARDWARE_ALT"
.LC9:
	.string	"MBEDTLS_AES_ROM_TABLES"
.LC10:
	.string	"MBEDTLS_CIPHER_MODE_CBC"
.LC11:
	.string	"MBEDTLS_CIPHER_MODE_CFB"
.LC12:
	.string	"MBEDTLS_CIPHER_MODE_CTR"
.LC13:
	.string	"MBEDTLS_CIPHER_MODE_OFB"
.LC14:
	.string	"MBEDTLS_CIPHER_MODE_XTS"
.LC15:
	.string	"MBEDTLS_CIPHER_PADDING_PKCS7"
.LC16:
	.string	"MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS"
.LC17:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN"
.LC18:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS"
.LC19:
	.string	"MBEDTLS_REMOVE_ARC4_CIPHERSUITES"
.LC20:
	.string	"MBEDTLS_REMOVE_3DES_CIPHERSUITES"
.LC21:
	.string	"MBEDTLS_ECP_DP_SECP192R1_ENABLED"
.LC22:
	.string	"MBEDTLS_ECP_DP_SECP224R1_ENABLED"
.LC23:
	.string	"MBEDTLS_ECP_DP_SECP256R1_ENABLED"
.LC24:
	.string	"MBEDTLS_ECP_DP_SECP384R1_ENABLED"
.LC25:
	.string	"MBEDTLS_ECP_DP_SECP521R1_ENABLED"
.LC26:
	.string	"MBEDTLS_ECP_DP_SECP192K1_ENABLED"
.LC27:
	.string	"MBEDTLS_ECP_DP_SECP224K1_ENABLED"
.LC28:
	.string	"MBEDTLS_ECP_DP_SECP256K1_ENABLED"
.LC29:
	.string	"MBEDTLS_ECP_DP_BP256R1_ENABLED"
.LC30:
	.string	"MBEDTLS_ECP_DP_BP384R1_ENABLED"
.LC31:
	.string	"MBEDTLS_ECP_DP_BP512R1_ENABLED"
.LC32:
	.string	"MBEDTLS_ECP_DP_CURVE25519_ENABLED"
.LC33:
	.string	"MBEDTLS_ECP_NIST_OPTIM"
.LC34:
	.string	"MBEDTLS_ECDSA_DETERMINISTIC"
.LC35:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK_ENABLED"
.LC36:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK_ENABLED"
.LC37:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED"
.LC38:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED"
.LC39:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_ENABLED"
.LC40:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED"
.LC41:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED"
.LC42:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED"
.LC43:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED"
.LC44:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED"
.LC45:
	.string	"MBEDTLS_PK_PARSE_EC_EXTENDED"
.LC46:
	.string	"MBEDTLS_ERROR_STRERROR_DUMMY"
.LC47:
	.string	"MBEDTLS_GENPRIME"
.LC48:
	.string	"MBEDTLS_FS_IO"
.LC49:
	.string	"MBEDTLS_NO_PLATFORM_ENTROPY"
.LC50:
	.string	"MBEDTLS_PK_RSA_ALT_SUPPORT"
.LC51:
	.string	"MBEDTLS_PKCS1_V15"
.LC52:
	.string	"MBEDTLS_PKCS1_V21"
.LC53:
	.string	"MBEDTLS_SELF_TEST"
.LC54:
	.string	"MBEDTLS_SSL_ALL_ALERT_MESSAGES"
.LC55:
	.string	"MBEDTLS_SSL_ENCRYPT_THEN_MAC"
.LC56:
	.string	"MBEDTLS_SSL_EXTENDED_MASTER_SECRET"
.LC57:
	.string	"MBEDTLS_SSL_FALLBACK_SCSV"
.LC58:
	.string	"MBEDTLS_SSL_CBC_RECORD_SPLITTING"
.LC59:
	.string	"MBEDTLS_SSL_RENEGOTIATION"
.LC60:
	.string	"MBEDTLS_SSL_MAX_FRAGMENT_LENGTH"
.LC61:
	.string	"MBEDTLS_SSL_PROTO_TLS1"
.LC62:
	.string	"MBEDTLS_SSL_PROTO_TLS1_1"
.LC63:
	.string	"MBEDTLS_SSL_PROTO_TLS1_2"
.LC64:
	.string	"MBEDTLS_SSL_PROTO_DTLS"
.LC65:
	.string	"MBEDTLS_SSL_ALPN"
.LC66:
	.string	"MBEDTLS_SSL_DTLS_ANTI_REPLAY"
.LC67:
	.string	"MBEDTLS_SSL_DTLS_HELLO_VERIFY"
.LC68:
	.string	"MBEDTLS_SSL_DTLS_CLIENT_PORT_REUSE"
.LC69:
	.string	"MBEDTLS_SSL_DTLS_BADMAC_LIMIT"
.LC70:
	.string	"MBEDTLS_SSL_SESSION_TICKETS"
.LC71:
	.string	"MBEDTLS_SSL_EXPORT_KEYS"
.LC72:
	.string	"MBEDTLS_SSL_SERVER_NAME_INDICATION"
.LC73:
	.string	"MBEDTLS_SSL_TRUNCATED_HMAC"
.LC74:
	.string	"MBEDTLS_VERSION_FEATURES"
.LC75:
	.string	"MBEDTLS_X509_CHECK_KEY_USAGE"
.LC76:
	.string	"MBEDTLS_X509_CHECK_EXTENDED_KEY_USAGE"
.LC77:
	.string	"MBEDTLS_X509_RSASSA_PSS_SUPPORT"
.LC78:
	.string	"MBEDTLS_AESNI_C"
.LC79:
	.string	"MBEDTLS_AES_C"
.LC80:
	.string	"MBEDTLS_ASN1_PARSE_C"
.LC81:
	.string	"MBEDTLS_ASN1_WRITE_C"
.LC82:
	.string	"MBEDTLS_BASE64_C"
.LC83:
	.string	"MBEDTLS_BIGNUM_C"
.LC84:
	.string	"MBEDTLS_CCM_C"
.LC85:
	.string	"MBEDTLS_CERTS_C"
.LC86:
	.string	"MBEDTLS_CIPHER_C"
.LC87:
	.string	"MBEDTLS_CTR_DRBG_C"
.LC88:
	.string	"MBEDTLS_DHM_C"
.LC89:
	.string	"MBEDTLS_ECDH_C"
.LC90:
	.string	"MBEDTLS_ECDSA_C"
.LC91:
	.string	"MBEDTLS_ECP_C"
.LC92:
	.string	"MBEDTLS_ENTROPY_C"
.LC93:
	.string	"MBEDTLS_ERROR_C"
.LC94:
	.string	"MBEDTLS_GCM_C"
.LC95:
	.string	"MBEDTLS_HMAC_DRBG_C"
.LC96:
	.string	"MBEDTLS_MD_C"
.LC97:
	.string	"MBEDTLS_MD5_C"
.LC98:
	.string	"MBEDTLS_OID_C"
.LC99:
	.string	"MBEDTLS_PADLOCK_C"
.LC100:
	.string	"MBEDTLS_PEM_PARSE_C"
.LC101:
	.string	"MBEDTLS_PEM_WRITE_C"
.LC102:
	.string	"MBEDTLS_PK_C"
.LC103:
	.string	"MBEDTLS_PK_PARSE_C"
.LC104:
	.string	"MBEDTLS_PK_WRITE_C"
.LC105:
	.string	"MBEDTLS_PKCS5_C"
.LC106:
	.string	"MBEDTLS_PKCS12_C"
.LC107:
	.string	"MBEDTLS_PLATFORM_C"
.LC108:
	.string	"MBEDTLS_RSA_C"
.LC109:
	.string	"MBEDTLS_SHA1_C"
.LC110:
	.string	"MBEDTLS_SHA256_C"
.LC111:
	.string	"MBEDTLS_SHA512_C"
.LC112:
	.string	"MBEDTLS_SSL_CACHE_C"
.LC113:
	.string	"MBEDTLS_SSL_COOKIE_C"
.LC114:
	.string	"MBEDTLS_SSL_TICKET_C"
.LC115:
	.string	"MBEDTLS_SSL_CLI_C"
.LC116:
	.string	"MBEDTLS_SSL_SRV_C"
.LC117:
	.string	"MBEDTLS_SSL_TLS_C"
.LC118:
	.string	"MBEDTLS_VERSION_C"
.LC119:
	.string	"MBEDTLS_X509_USE_C"
.LC120:
	.string	"MBEDTLS_X509_CRT_PARSE_C"
.LC121:
	.string	"MBEDTLS_X509_CRL_PARSE_C"
.LC122:
	.string	"MBEDTLS_X509_CSR_PARSE_C"
.LC123:
	.string	"MBEDTLS_X509_CREATE_C"
.LC124:
	.string	"MBEDTLS_X509_CRT_WRITE_C"
.LC125:
	.string	"MBEDTLS_X509_CSR_WRITE_C"
	.section	.data.features,"aw"
	.align	4
	.type	features, @object
	.size	features, 504
features:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	.LC123
	.word	.LC124
	.word	.LC125
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
	.text
.Letext0:
	.file 2 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/lock.h"
	.file 3 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/_types.h"
	.file 4 "/home/dieter/Development/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/8.2.0/include/stddef.h"
	.file 5 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/sys/reent.h"
	.file 6 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/stdlib.h"
	.file 7 "/home/dieter/Development/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x99e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x75
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.byte	0xe
	.4byte	0x75
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.byte	0x3
	.4byte	0xc3
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0x94
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x13
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.byte	0x9
	.4byte	0xf7
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa5
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xaa
	.byte	0x5
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0xab
	.byte	0x3
	.4byte	0xd3
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x1b
	.4byte	0x69
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x111
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x17e
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x31
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x32
	.byte	0xb
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.4byte	0x41
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0x1b
	.4byte	0x41
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.byte	0xb
	.4byte	0x184
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x124
	.uleb128 0x8
	.4byte	0x118
	.4byte	0x194
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x217
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3a
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3b
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3c
	.byte	0x7
	.4byte	0x41
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3d
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x41
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF36
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	0x25c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x25c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x25c
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4e
	.byte	0xa
	.4byte	0x118
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.4byte	0x118
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x10f
	.4byte	0x26c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8c
	.byte	0x5
	.byte	0x55
	.byte	0x8
	.4byte	0x2ae
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x56
	.byte	0x12
	.4byte	0x2ae
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x58
	.byte	0x9
	.4byte	0x2b4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x59
	.byte	0x20
	.4byte	0x2cb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x26c
	.uleb128 0x8
	.4byte	0x2c4
	.4byte	0x2c4
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x217
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.byte	0x8
	.4byte	0x2f9
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x2f9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x77
	.byte	0x6
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x20
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x372
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0x9a
	.byte	0x12
	.4byte	0x2f9
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0x9b
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0x9c
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0x9f
	.byte	0x11
	.4byte	0x2d1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa2
	.byte	0x12
	.4byte	0x4d6
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0x2ff
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xf0
	.byte	0x5
	.2byte	0x174
	.byte	0x8
	.4byte	0x4d6
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x178
	.byte	0x7
	.4byte	0x41
	.byte	0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x17d
	.byte	0xb
	.4byte	0x729
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.byte	0x14
	.4byte	0x729
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17d
	.byte	0x1e
	.4byte	0x729
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17f
	.byte	0x7
	.4byte	0x41
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x181
	.byte	0x9
	.4byte	0x63d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x183
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x185
	.byte	0x7
	.4byte	0x41
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x186
	.byte	0x16
	.4byte	0x891
	.byte	0x20
	.uleb128 0x16
	.string	"_mp"
	.byte	0x5
	.2byte	0x188
	.byte	0x12
	.4byte	0x897
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x18a
	.byte	0xa
	.4byte	0x8a8
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18c
	.byte	0x7
	.4byte	0x41
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18f
	.byte	0x7
	.4byte	0x41
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x190
	.byte	0x9
	.4byte	0x63d
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x192
	.byte	0x13
	.4byte	0x8ae
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x193
	.byte	0x10
	.4byte	0x8b4
	.byte	0x3c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x194
	.byte	0x9
	.4byte	0x63d
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x197
	.byte	0xb
	.4byte	0x8c5
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x19b
	.byte	0x13
	.4byte	0x2ae
	.byte	0x48
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x19c
	.byte	0x12
	.4byte	0x26c
	.byte	0x4c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19f
	.byte	0x10
	.4byte	0x6ea
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x1a0
	.byte	0xb
	.4byte	0x729
	.byte	0xe4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x8d1
	.byte	0xe8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x63d
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x377
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x61f
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.byte	0x12
	.4byte	0x2f9
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.byte	0x11
	.4byte	0x2d1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x41
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbf
	.byte	0x12
	.4byte	0x4d6
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0xc3
	.byte	0xa
	.4byte	0x10f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x64f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x679
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xca
	.byte	0xd
	.4byte	0x69d
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b7
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.byte	0x11
	.4byte	0x2d1
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.byte	0x12
	.4byte	0x2f9
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.byte	0x7
	.4byte	0x41
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x6bd
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd4
	.byte	0x11
	.4byte	0x6cd
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.4byte	0x2d1
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xda
	.byte	0x7
	.4byte	0x41
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xdb
	.byte	0xa
	.4byte	0x7c
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xe2
	.byte	0xc
	.4byte	0x103
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe4
	.byte	0xe
	.4byte	0xf7
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe5
	.byte	0x7
	.4byte	0x41
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x63d
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x63d
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x643
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.uleb128 0x13
	.4byte	0x643
	.uleb128 0xf
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x673
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x64a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x655
	.uleb128 0x17
	.4byte	0x88
	.4byte	0x69d
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x18
	.4byte	0x88
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x17
	.4byte	0x41
	.4byte	0x6b7
	.uleb128 0x18
	.4byte	0x4d6
	.uleb128 0x18
	.4byte	0x10f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x6cd
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x6dd
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x11f
	.byte	0x18
	.4byte	0x4dc
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.byte	0x8
	.4byte	0x723
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x125
	.byte	0x11
	.4byte	0x723
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x126
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x127
	.byte	0xb
	.4byte	0x729
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ea
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6dd
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x18
	.byte	0x5
	.2byte	0x13f
	.byte	0x8
	.4byte	0x776
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x140
	.byte	0x12
	.4byte	0x776
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x141
	.byte	0x12
	.4byte	0x776
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x145
	.byte	0x24
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x786
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x10
	.byte	0x5
	.2byte	0x158
	.byte	0x8
	.4byte	0x7cd
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x15b
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15c
	.byte	0x7
	.4byte	0x41
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15d
	.byte	0x13
	.4byte	0x17e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15e
	.byte	0x14
	.4byte	0x7cd
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x50
	.byte	0x5
	.2byte	0x162
	.byte	0x8
	.4byte	0x87c
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x165
	.byte	0x9
	.4byte	0x63d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x166
	.byte	0xe
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x167
	.byte	0xe
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x168
	.byte	0xe
	.4byte	0xf7
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x169
	.byte	0x8
	.4byte	0x87c
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x16a
	.byte	0x7
	.4byte	0x41
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x16b
	.byte	0xe
	.4byte	0xf7
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16c
	.byte	0xe
	.4byte	0xf7
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16d
	.byte	0xe
	.4byte	0xf7
	.byte	0x38
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16e
	.byte	0xe
	.4byte	0xf7
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16f
	.byte	0xe
	.4byte	0xf7
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x643
	.4byte	0x88c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF124
	.uleb128 0xf
	.byte	0x4
	.4byte	0x88c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x786
	.uleb128 0x1a
	.4byte	0x8a8
	.uleb128 0x18
	.4byte	0x4d6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x89d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x72f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x194
	.uleb128 0x1a
	.4byte	0x8c5
	.uleb128 0x18
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8cb
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8ba
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d3
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x1a5
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x1a6
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x1a7
	.byte	0x22
	.4byte	0x372
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x30a
	.byte	0x18
	.4byte	0x4d6
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x63d
	.uleb128 0x8
	.4byte	0x673
	.4byte	0x927
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.4byte	0x917
	.uleb128 0x5
	.byte	0x3
	.4byte	features
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x2f8
	.byte	0x5
	.4byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98f
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x2f8
	.byte	0x30
	.4byte	0x673
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x2fa
	.byte	0x12
	.4byte	0x98f
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0x995
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x673
	.uleb128 0x23
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.byte	0x24
	.byte	0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU18
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x3
	.4byte	features
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"_dso_handle"
.LASF47:
	.string	"_size"
.LASF128:
	.string	"strcmp"
.LASF94:
	.string	"_rand48"
.LASF59:
	.string	"_emergency"
.LASF125:
	.string	"features"
.LASF52:
	.string	"_data"
.LASF114:
	.string	"_wcrtomb_state"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF6:
	.string	"long long unsigned int"
.LASF51:
	.string	"_lbfsize"
.LASF124:
	.string	"__locale_t"
.LASF112:
	.string	"_mbrtowc_state"
.LASF107:
	.string	"_wctomb_state"
.LASF27:
	.string	"__tm_sec"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF82:
	.string	"_ubuf"
.LASF46:
	.string	"_base"
.LASF29:
	.string	"__tm_hour"
.LASF73:
	.string	"__sf"
.LASF36:
	.string	"_on_exit_args"
.LASF77:
	.string	"_cookie"
.LASF72:
	.string	"__sglue"
.LASF9:
	.string	"long int"
.LASF99:
	.string	"_mprec"
.LASF49:
	.string	"_flags"
.LASF40:
	.string	"_is_cxa"
.LASF55:
	.string	"_stdin"
.LASF84:
	.string	"_blksize"
.LASF7:
	.string	"_lock_t"
.LASF66:
	.string	"_cvtbuf"
.LASF85:
	.string	"_offset"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF105:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbrlen_state"
.LASF37:
	.string	"_fnargs"
.LASF43:
	.string	"_fns"
.LASF23:
	.string	"_sign"
.LASF18:
	.string	"_flock_t"
.LASF57:
	.string	"_stderr"
.LASF25:
	.string	"_Bigint"
.LASF64:
	.string	"_gamma_signgam"
.LASF78:
	.string	"_read"
.LASF101:
	.string	"_result_k"
.LASF26:
	.string	"__tm"
.LASF44:
	.string	"_on_exit_args_ptr"
.LASF4:
	.string	"unsigned int"
.LASF14:
	.string	"__wchb"
.LASF56:
	.string	"_stdout"
.LASF65:
	.string	"_cvtlen"
.LASF19:
	.string	"long unsigned int"
.LASF48:
	.string	"__sFILE_fake"
.LASF127:
	.string	"feature"
.LASF92:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"_atexit0"
.LASF75:
	.string	"_signal_buf"
.LASF69:
	.string	"_asctime_buf"
.LASF100:
	.string	"_result"
.LASF13:
	.string	"__wch"
.LASF12:
	.string	"wint_t"
.LASF86:
	.string	"_lock"
.LASF88:
	.string	"_flags2"
.LASF79:
	.string	"_write"
.LASF32:
	.string	"__tm_year"
.LASF74:
	.string	"_misc"
.LASF116:
	.string	"__sf_fake_stdin"
.LASF117:
	.string	"__sf_fake_stdout"
.LASF31:
	.string	"__tm_mon"
.LASF41:
	.string	"_atexit"
.LASF120:
	.string	"suboptarg"
.LASF60:
	.string	"__sdidinit"
.LASF10:
	.string	"_off_t"
.LASF103:
	.string	"_freelist"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF122:
	.string	"/home/dieter/Development/esp-idf/components/mbedtls/mbedtls/library/version_features.c"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"_iobs"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"__tm_yday"
.LASF45:
	.string	"__sbuf"
.LASF90:
	.string	"__FILE"
.LASF17:
	.string	"_mbstate_t"
.LASF76:
	.string	"__sFILE"
.LASF87:
	.string	"_mbstate"
.LASF98:
	.string	"_rand_next"
.LASF106:
	.string	"_mblen_state"
.LASF58:
	.string	"_inc"
.LASF42:
	.string	"_ind"
.LASF62:
	.string	"_locale"
.LASF63:
	.string	"__cleanup"
.LASF61:
	.string	"_unspecified_locale_info"
.LASF22:
	.string	"_maxwds"
.LASF53:
	.string	"_reent"
.LASF95:
	.string	"_seed"
.LASF15:
	.string	"__count"
.LASF16:
	.string	"__value"
.LASF80:
	.string	"_seek"
.LASF11:
	.string	"_fpos_t"
.LASF54:
	.string	"_errno"
.LASF89:
	.string	"char"
.LASF28:
	.string	"__tm_min"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"_next"
.LASF121:
	.string	"GNU C99 8.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"_fntypes"
.LASF104:
	.string	"_misc_reent"
.LASF97:
	.string	"_add"
.LASF20:
	.string	"__ULong"
.LASF110:
	.string	"_getdate_err"
.LASF119:
	.string	"_global_impure_ptr"
.LASF123:
	.string	"/home/dieter/Development/ProjektEi/build/mbedtls"
.LASF126:
	.string	"mbedtls_version_check_feature"
.LASF50:
	.string	"_file"
.LASF24:
	.string	"_wds"
.LASF33:
	.string	"__tm_wday"
.LASF91:
	.string	"_glue"
.LASF109:
	.string	"_l64a_buf"
.LASF70:
	.string	"_sig_func"
.LASF83:
	.string	"_nbuf"
.LASF35:
	.string	"__tm_isdst"
.LASF68:
	.string	"_localtime_buf"
.LASF81:
	.string	"_close"
.LASF118:
	.string	"__sf_fake_stderr"
.LASF67:
	.string	"_r48"
.LASF108:
	.string	"_mbtowc_state"
.LASF102:
	.string	"_p5s"
.LASF30:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG esp-2019r2) 8.2.0"
