	.file	"version_features.c"
	.text
.Ltext0:
	.section	.text.mbedtls_version_check_feature,"ax",@progbits
	.literal_position
	.literal .LC2, features
	.align	4
	.global	mbedtls_version_check_feature
	.type	mbedtls_version_check_feature, @function
mbedtls_version_check_feature:
.LFB0:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/version_features.c"
	.loc 1 752 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 755 0
	l32r	a3, .LC2
	.loc 1 756 0
	movi.n	a10, -2
	.loc 1 755 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L2
	.loc 1 759 0
	movi.n	a10, -1
	.loc 1 758 0
	beqz.n	a2, .L2
	j	.L3
.LVL2:
.L4:
	.loc 1 763 0
	mov.n	a11, a2
	call8	strcmp
.LVL3:
	beqz.n	a10, .L2
	.loc 1 765 0
	addi.n	a3, a3, 4
.LVL4:
.L3:
	.loc 1 761 0
	l32i.n	a10, a3, 0
	bnez.n	a10, .L4
	.loc 1 759 0
	movi.n	a10, -1
.LVL5:
.L2:
	.loc 1 768 0
	mov.n	a2, a10
.LVL6:
	retw.n
.LFE0:
	.size	mbedtls_version_check_feature, .-mbedtls_version_check_feature
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"MBEDTLS_HAVE_ASM"
.LC4:
	.string	"MBEDTLS_HAVE_TIME"
.LC5:
	.string	"MBEDTLS_PLATFORM_MEMORY"
.LC6:
	.string	"MBEDTLS_AES_ALT"
.LC7:
	.string	"MBEDTLS_SHA1_ALT"
.LC8:
	.string	"MBEDTLS_SHA256_ALT"
.LC9:
	.string	"MBEDTLS_SHA512_ALT"
.LC10:
	.string	"MBEDTLS_ENTROPY_HARDWARE_ALT"
.LC11:
	.string	"MBEDTLS_AES_ROM_TABLES"
.LC12:
	.string	"MBEDTLS_CIPHER_MODE_CBC"
.LC13:
	.string	"MBEDTLS_CIPHER_MODE_CFB"
.LC14:
	.string	"MBEDTLS_CIPHER_MODE_CTR"
.LC15:
	.string	"MBEDTLS_CIPHER_MODE_XTS"
.LC16:
	.string	"MBEDTLS_CIPHER_PADDING_PKCS7"
.LC17:
	.string	"MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS"
.LC18:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN"
.LC19:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS"
.LC20:
	.string	"MBEDTLS_ECP_DP_SECP192R1_ENABLED"
.LC21:
	.string	"MBEDTLS_ECP_DP_SECP224R1_ENABLED"
.LC22:
	.string	"MBEDTLS_ECP_DP_SECP256R1_ENABLED"
.LC23:
	.string	"MBEDTLS_ECP_DP_SECP384R1_ENABLED"
.LC24:
	.string	"MBEDTLS_ECP_DP_SECP521R1_ENABLED"
.LC25:
	.string	"MBEDTLS_ECP_DP_SECP192K1_ENABLED"
.LC26:
	.string	"MBEDTLS_ECP_DP_SECP224K1_ENABLED"
.LC27:
	.string	"MBEDTLS_ECP_DP_SECP256K1_ENABLED"
.LC28:
	.string	"MBEDTLS_ECP_DP_BP256R1_ENABLED"
.LC29:
	.string	"MBEDTLS_ECP_DP_BP384R1_ENABLED"
.LC30:
	.string	"MBEDTLS_ECP_DP_BP512R1_ENABLED"
.LC31:
	.string	"MBEDTLS_ECP_DP_CURVE25519_ENABLED"
.LC32:
	.string	"MBEDTLS_ECP_NIST_OPTIM"
.LC33:
	.string	"MBEDTLS_ECDSA_DETERMINISTIC"
.LC34:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK_ENABLED"
.LC35:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK_ENABLED"
.LC36:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED"
.LC37:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED"
.LC38:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_ENABLED"
.LC39:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED"
.LC40:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED"
.LC41:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED"
.LC42:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED"
.LC43:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED"
.LC44:
	.string	"MBEDTLS_PK_PARSE_EC_EXTENDED"
.LC45:
	.string	"MBEDTLS_ERROR_STRERROR_DUMMY"
.LC46:
	.string	"MBEDTLS_GENPRIME"
.LC47:
	.string	"MBEDTLS_FS_IO"
.LC48:
	.string	"MBEDTLS_NO_PLATFORM_ENTROPY"
.LC49:
	.string	"MBEDTLS_PK_RSA_ALT_SUPPORT"
.LC50:
	.string	"MBEDTLS_PKCS1_V15"
.LC51:
	.string	"MBEDTLS_PKCS1_V21"
.LC52:
	.string	"MBEDTLS_SELF_TEST"
.LC53:
	.string	"MBEDTLS_SSL_ALL_ALERT_MESSAGES"
.LC54:
	.string	"MBEDTLS_SSL_ENCRYPT_THEN_MAC"
.LC55:
	.string	"MBEDTLS_SSL_EXTENDED_MASTER_SECRET"
.LC56:
	.string	"MBEDTLS_SSL_FALLBACK_SCSV"
.LC57:
	.string	"MBEDTLS_SSL_RENEGOTIATION"
.LC58:
	.string	"MBEDTLS_SSL_MAX_FRAGMENT_LENGTH"
.LC59:
	.string	"MBEDTLS_SSL_PROTO_TLS1"
.LC60:
	.string	"MBEDTLS_SSL_PROTO_TLS1_1"
.LC61:
	.string	"MBEDTLS_SSL_PROTO_TLS1_2"
.LC62:
	.string	"MBEDTLS_SSL_PROTO_DTLS"
.LC63:
	.string	"MBEDTLS_SSL_ALPN"
.LC64:
	.string	"MBEDTLS_SSL_DTLS_ANTI_REPLAY"
.LC65:
	.string	"MBEDTLS_SSL_DTLS_HELLO_VERIFY"
.LC66:
	.string	"MBEDTLS_SSL_DTLS_CLIENT_PORT_REUSE"
.LC67:
	.string	"MBEDTLS_SSL_DTLS_BADMAC_LIMIT"
.LC68:
	.string	"MBEDTLS_SSL_SESSION_TICKETS"
.LC69:
	.string	"MBEDTLS_SSL_EXPORT_KEYS"
.LC70:
	.string	"MBEDTLS_SSL_SERVER_NAME_INDICATION"
.LC71:
	.string	"MBEDTLS_SSL_TRUNCATED_HMAC"
.LC72:
	.string	"MBEDTLS_VERSION_FEATURES"
.LC73:
	.string	"MBEDTLS_X509_CHECK_KEY_USAGE"
.LC74:
	.string	"MBEDTLS_X509_CHECK_EXTENDED_KEY_USAGE"
.LC75:
	.string	"MBEDTLS_X509_RSASSA_PSS_SUPPORT"
.LC76:
	.string	"MBEDTLS_AESNI_C"
.LC77:
	.string	"MBEDTLS_AES_C"
.LC78:
	.string	"MBEDTLS_ASN1_PARSE_C"
.LC79:
	.string	"MBEDTLS_ASN1_WRITE_C"
.LC80:
	.string	"MBEDTLS_BASE64_C"
.LC81:
	.string	"MBEDTLS_BIGNUM_C"
.LC82:
	.string	"MBEDTLS_CCM_C"
.LC83:
	.string	"MBEDTLS_CERTS_C"
.LC84:
	.string	"MBEDTLS_CIPHER_C"
.LC85:
	.string	"MBEDTLS_CTR_DRBG_C"
.LC86:
	.string	"MBEDTLS_DHM_C"
.LC87:
	.string	"MBEDTLS_ECDH_C"
.LC88:
	.string	"MBEDTLS_ECDSA_C"
.LC89:
	.string	"MBEDTLS_ECP_C"
.LC90:
	.string	"MBEDTLS_ENTROPY_C"
.LC91:
	.string	"MBEDTLS_ERROR_C"
.LC92:
	.string	"MBEDTLS_GCM_C"
.LC93:
	.string	"MBEDTLS_HMAC_DRBG_C"
.LC94:
	.string	"MBEDTLS_MD_C"
.LC95:
	.string	"MBEDTLS_MD5_C"
.LC96:
	.string	"MBEDTLS_OID_C"
.LC97:
	.string	"MBEDTLS_PADLOCK_C"
.LC98:
	.string	"MBEDTLS_PEM_PARSE_C"
.LC99:
	.string	"MBEDTLS_PEM_WRITE_C"
.LC100:
	.string	"MBEDTLS_PK_C"
.LC101:
	.string	"MBEDTLS_PK_PARSE_C"
.LC102:
	.string	"MBEDTLS_PK_WRITE_C"
.LC103:
	.string	"MBEDTLS_PKCS5_C"
.LC104:
	.string	"MBEDTLS_PKCS12_C"
.LC105:
	.string	"MBEDTLS_PLATFORM_C"
.LC106:
	.string	"MBEDTLS_RSA_C"
.LC107:
	.string	"MBEDTLS_SHA1_C"
.LC108:
	.string	"MBEDTLS_SHA256_C"
.LC109:
	.string	"MBEDTLS_SHA512_C"
.LC110:
	.string	"MBEDTLS_SSL_CACHE_C"
.LC111:
	.string	"MBEDTLS_SSL_COOKIE_C"
.LC112:
	.string	"MBEDTLS_SSL_TICKET_C"
.LC113:
	.string	"MBEDTLS_SSL_CLI_C"
.LC114:
	.string	"MBEDTLS_SSL_SRV_C"
.LC115:
	.string	"MBEDTLS_SSL_TLS_C"
.LC116:
	.string	"MBEDTLS_VERSION_C"
.LC117:
	.string	"MBEDTLS_X509_USE_C"
.LC118:
	.string	"MBEDTLS_X509_CRT_PARSE_C"
.LC119:
	.string	"MBEDTLS_X509_CRL_PARSE_C"
.LC120:
	.string	"MBEDTLS_X509_CSR_PARSE_C"
.LC121:
	.string	"MBEDTLS_X509_CREATE_C"
.LC122:
	.string	"MBEDTLS_X509_CRT_WRITE_C"
.LC123:
	.string	"MBEDTLS_X509_CSR_WRITE_C"
	.section	.data.features,"aw",@progbits
	.align	4
	.type	features, @object
	.size	features, 488
features:
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
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7b
	.uleb128 0x5
	.4byte	0x6e
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x2f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x75
	.4byte	.LLST0
	.uleb128 0x8
	.string	"idx"
	.byte	0x1
	.2byte	0x2f1
	.4byte	0xcb
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LVL3
	.4byte	0xf2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x75
	.uleb128 0xb
	.4byte	0x75
	.4byte	0xe1
	.uleb128 0xc
	.4byte	0x60
	.byte	0x79
	.byte	0
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x22
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x3
	.4byte	features
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.byte	0x1c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xe
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
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"mbedtls_version_check_feature"
.LASF13:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/version_features.c"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF12:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"feature"
.LASF11:
	.string	"features"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"strcmp"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
