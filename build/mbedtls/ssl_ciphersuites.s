	.file	"ssl_ciphersuites.c"
	.text
.Ltext0:
	.section	.text.mbedtls_ssl_ciphersuite_from_string,"ax",@progbits
	.literal_position
	.literal .LC2, ciphersuite_definitions
	.align	4
	.global	mbedtls_ssl_ciphersuite_from_string
	.type	mbedtls_ssl_ciphersuite_from_string, @function
mbedtls_ssl_ciphersuite_from_string:
.LFB19:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ssl_ciphersuites.c"
	.loc 1 2238 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 2242 0
	mov.n	a3, a2
	.loc 1 2241 0
	beqz.n	a2, .L2
	l32r	a3, .LC2
	j	.L3
.LVL2:
.L4:
	.loc 1 2246 0
	l32i.n	a10, a3, 4
	mov.n	a11, a2
	call8	strcmp
.LVL3:
	beqz.n	a10, .L2
	.loc 1 2249 0
	addi	a3, a3, 40
.LVL4:
.L3:
	.loc 1 2244 0
	l32i.n	a8, a3, 0
	bnez.n	a8, .L4
	.loc 1 2242 0
	mov.n	a3, a8
.LVL5:
.L2:
	.loc 1 2253 0
	mov.n	a2, a3
.LVL6:
	retw.n
.LFE19:
	.size	mbedtls_ssl_ciphersuite_from_string, .-mbedtls_ssl_ciphersuite_from_string
	.section	.text.mbedtls_ssl_ciphersuite_from_id,"ax",@progbits
	.literal_position
	.literal .LC3, ciphersuite_definitions
	.align	4
	.global	mbedtls_ssl_ciphersuite_from_id
	.type	mbedtls_ssl_ciphersuite_from_id, @function
mbedtls_ssl_ciphersuite_from_id:
.LFB20:
	.loc 1 2256 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 2257 0
	l32r	a8, .LC3
	.loc 1 2259 0
	j	.L8
.LVL9:
.L10:
	.loc 1 2261 0
	beq	a9, a2, .L11
	.loc 1 2264 0
	addi	a8, a8, 40
.LVL10:
.L8:
	.loc 1 2259 0
	l32i.n	a9, a8, 0
	bnez.n	a9, .L10
	.loc 1 2267 0
	mov.n	a2, a9
.LVL11:
	retw.n
.LVL12:
.L11:
	mov.n	a2, a8
.LVL13:
	.loc 1 2268 0
	retw.n
.LFE20:
	.size	mbedtls_ssl_ciphersuite_from_id, .-mbedtls_ssl_ciphersuite_from_id
	.section	.text.mbedtls_ssl_list_ciphersuites,"ax",@progbits
	.literal_position
	.literal .LC4, supported_ciphersuites
	.literal .LC5, ciphersuite_preference
	.literal .LC6, supported_init
	.literal .LC7, supported_ciphersuites+312
	.align	4
	.global	mbedtls_ssl_list_ciphersuites
	.type	mbedtls_ssl_list_ciphersuites, @function
mbedtls_ssl_list_ciphersuites:
.LFB18:
	.loc 1 2206 0
	entry	sp, 32
.LCFI2:
	.loc 1 2211 0
	l32r	a3, .LC6
	l32r	a2, .LC4
	l32i.n	a5, a3, 0
	mov.n	a4, a3
	bnez.n	a5, .L13
	mov.n	a3, a2
	l32r	a5, .LC5
	j	.L14
.LVL14:
.L23:
.LBB6:
.LBB7:
	.loc 1 2221 0
	mov.n	a10, a6
	call8	mbedtls_ssl_ciphersuite_from_id
.LVL15:
	beqz.n	a10, .L15
.LVL16:
	.loc 1 2224 0
	s32i.n	a6, a3, 0
	addi.n	a3, a3, 4
.LVL17:
.L15:
.LBE7:
	.loc 1 2218 0
	addi.n	a5, a5, 4
.LVL18:
.L14:
	.loc 1 2217 0 discriminator 1
	l32i.n	a6, a5, 0
	beqz.n	a6, .L19
	l32r	a8, .LC7
	bltu	a3, a8, .L23
.L19:
	.loc 1 2227 0
	movi.n	a5, 0
.LVL19:
	s32i.n	a5, a3, 0
	.loc 1 2229 0
	movi.n	a3, 1
.LVL20:
	s32i.n	a3, a4, 0
.L13:
.LBE6:
	.loc 1 2233 0
	retw.n
.LFE18:
	.size	mbedtls_ssl_list_ciphersuites, .-mbedtls_ssl_list_ciphersuites
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"unknown"
	.section	.text.mbedtls_ssl_get_ciphersuite_name,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.align	4
	.global	mbedtls_ssl_get_ciphersuite_name
	.type	mbedtls_ssl_get_ciphersuite_name, @function
mbedtls_ssl_get_ciphersuite_name:
.LFB21:
	.loc 1 2271 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 2274 0
	mov.n	a10, a2
	call8	mbedtls_ssl_ciphersuite_from_id
.LVL22:
	.loc 1 2277 0
	l32r	a2, .LC9
.LVL23:
	.loc 1 2276 0
	beqz.n	a10, .L29
	.loc 1 2279 0
	l32i.n	a2, a10, 4
.L29:
	.loc 1 2280 0
	retw.n
.LFE21:
	.size	mbedtls_ssl_get_ciphersuite_name, .-mbedtls_ssl_get_ciphersuite_name
	.section	.text.mbedtls_ssl_get_ciphersuite_id,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_get_ciphersuite_id
	.type	mbedtls_ssl_get_ciphersuite_id, @function
mbedtls_ssl_get_ciphersuite_id:
.LFB22:
	.loc 1 2283 0
.LVL24:
	entry	sp, 32
.LCFI4:
	.loc 1 2286 0
	mov.n	a10, a2
	call8	mbedtls_ssl_ciphersuite_from_string
.LVL25:
	.loc 1 2289 0
	mov.n	a2, a10
.LVL26:
	.loc 1 2288 0
	beqz.n	a10, .L32
	.loc 1 2291 0
	l32i.n	a2, a10, 0
.L32:
	.loc 1 2292 0
	retw.n
.LFE22:
	.size	mbedtls_ssl_get_ciphersuite_id, .-mbedtls_ssl_get_ciphersuite_id
	.section	.text.mbedtls_ssl_get_ciphersuite_sig_pk_alg,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_get_ciphersuite_sig_pk_alg
	.type	mbedtls_ssl_get_ciphersuite_sig_pk_alg, @function
mbedtls_ssl_get_ciphersuite_sig_pk_alg:
.LFB23:
	.loc 1 2296 0
.LVL27:
	entry	sp, 32
.LCFI5:
	.loc 1 2297 0
	l32i.n	a8, a2, 16
	movi.n	a9, 0xa
	.loc 1 2313 0
	movi.n	a2, 0
.LVL28:
	bltu	a9, a8, .L35
	movi.n	a2, 1
	ssl	a8
	sll	a8, a2
	movi	a9, 0x8e
	bany	a8, a9, .L35
	movi	a9, 0x600
	and	a9, a8, a9
	.loc 1 2310 0
	movi.n	a2, 2
	bnez.n	a9, .L35
	extui	a8, a8, 4, 1
	.loc 1 2306 0
	movi.n	a2, 4
	moveqz	a2, a9, a8
.L35:
	.loc 1 2315 0
	retw.n
.LFE23:
	.size	mbedtls_ssl_get_ciphersuite_sig_pk_alg, .-mbedtls_ssl_get_ciphersuite_sig_pk_alg
	.section	.text.mbedtls_ssl_get_ciphersuite_sig_alg,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_get_ciphersuite_sig_alg
	.type	mbedtls_ssl_get_ciphersuite_sig_alg, @function
mbedtls_ssl_get_ciphersuite_sig_alg:
.LFB24:
	.loc 1 2318 0
.LVL29:
	entry	sp, 32
.LCFI6:
	.loc 1 2319 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L41
	.loc 1 2324 0
	movi.n	a2, 1
.LVL30:
	.loc 1 2319 0
	bltui	a8, 4, .L42
	.loc 1 2327 0
	movi.n	a2, 4
	.loc 1 2319 0
	beq	a8, a2, .L42
.L41:
	.loc 1 2330 0
	movi.n	a2, 0
.L42:
	.loc 1 2332 0
	retw.n
.LFE24:
	.size	mbedtls_ssl_get_ciphersuite_sig_alg, .-mbedtls_ssl_get_ciphersuite_sig_alg
	.section	.text.mbedtls_ssl_ciphersuite_uses_ec,"ax",@progbits
	.literal_position
	.literal .LC10, 3864
	.align	4
	.global	mbedtls_ssl_ciphersuite_uses_ec
	.type	mbedtls_ssl_ciphersuite_uses_ec, @function
mbedtls_ssl_ciphersuite_uses_ec:
.LFB25:
	.loc 1 2339 0
.LVL31:
	entry	sp, 32
.LCFI7:
	.loc 1 2340 0
	l32i.n	a8, a2, 16
	movi.n	a9, 0xb
	.loc 1 2351 0
	movi.n	a2, 0
.LVL32:
	bltu	a9, a8, .L50
	.loc 1 2348 0
	movi.n	a10, 1
	l32r	a9, .LC10
	ssl	a8
	sll	a8, a10
	and	a8, a8, a9
	movnez	a2, a10, a8
.L50:
	.loc 1 2353 0
	retw.n
.LFE25:
	.size	mbedtls_ssl_ciphersuite_uses_ec, .-mbedtls_ssl_ciphersuite_uses_ec
	.section	.text.mbedtls_ssl_ciphersuite_uses_psk,"ax",@progbits
	.align	4
	.global	mbedtls_ssl_ciphersuite_uses_psk
	.type	mbedtls_ssl_ciphersuite_uses_psk, @function
mbedtls_ssl_ciphersuite_uses_psk:
.LFB26:
	.loc 1 2358 0
.LVL33:
	entry	sp, 32
.LCFI8:
	.loc 1 2359 0
	l32i.n	a8, a2, 16
	.loc 1 2368 0
	movi.n	a2, 0
.LVL34:
	.loc 1 2359 0
	addi	a8, a8, -5
	bgeui	a8, 4, .L54
	.loc 1 2365 0
	movi.n	a2, 1
.L54:
	.loc 1 2370 0
	retw.n
.LFE26:
	.size	mbedtls_ssl_ciphersuite_uses_psk, .-mbedtls_ssl_ciphersuite_uses_psk
	.section	.bss.supported_init,"aw",@nobits
	.align	4
	.type	supported_init, @object
	.size	supported_init, 4
supported_init:
	.zero	4
	.section	.bss.supported_ciphersuites,"aw",@nobits
	.align	4
	.type	supported_ciphersuites, @object
	.size	supported_ciphersuites, 316
supported_ciphersuites:
	.zero	316
	.section	.rodata.str1.1
.LC11:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA"
.LC12:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA"
.LC13:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256"
.LC14:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256"
.LC15:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384"
.LC16:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384"
.LC17:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CCM"
.LC18:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-256-CCM-8"
.LC19:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CCM"
.LC20:
	.string	"TLS-ECDHE-ECDSA-WITH-AES-128-CCM-8"
.LC21:
	.string	"TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA"
.LC22:
	.string	"TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA"
.LC23:
	.string	"TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256"
.LC24:
	.string	"TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256"
.LC25:
	.string	"TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384"
.LC26:
	.string	"TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384"
.LC27:
	.string	"TLS-DHE-RSA-WITH-AES-256-GCM-SHA384"
.LC28:
	.string	"TLS-DHE-RSA-WITH-AES-128-GCM-SHA256"
.LC29:
	.string	"TLS-DHE-RSA-WITH-AES-128-CBC-SHA256"
.LC30:
	.string	"TLS-DHE-RSA-WITH-AES-256-CBC-SHA256"
.LC31:
	.string	"TLS-DHE-RSA-WITH-AES-128-CBC-SHA"
.LC32:
	.string	"TLS-DHE-RSA-WITH-AES-256-CBC-SHA"
.LC33:
	.string	"TLS-DHE-RSA-WITH-AES-256-CCM"
.LC34:
	.string	"TLS-DHE-RSA-WITH-AES-256-CCM-8"
.LC35:
	.string	"TLS-DHE-RSA-WITH-AES-128-CCM"
.LC36:
	.string	"TLS-DHE-RSA-WITH-AES-128-CCM-8"
.LC37:
	.string	"TLS-RSA-WITH-AES-256-GCM-SHA384"
.LC38:
	.string	"TLS-RSA-WITH-AES-128-GCM-SHA256"
.LC39:
	.string	"TLS-RSA-WITH-AES-128-CBC-SHA256"
.LC40:
	.string	"TLS-RSA-WITH-AES-256-CBC-SHA256"
.LC41:
	.string	"TLS-RSA-WITH-AES-128-CBC-SHA"
.LC42:
	.string	"TLS-RSA-WITH-AES-256-CBC-SHA"
.LC43:
	.string	"TLS-RSA-WITH-AES-256-CCM"
.LC44:
	.string	"TLS-RSA-WITH-AES-256-CCM-8"
.LC45:
	.string	"TLS-RSA-WITH-AES-128-CCM"
.LC46:
	.string	"TLS-RSA-WITH-AES-128-CCM-8"
.LC47:
	.string	"TLS-ECDH-RSA-WITH-AES-128-CBC-SHA"
.LC48:
	.string	"TLS-ECDH-RSA-WITH-AES-256-CBC-SHA"
.LC49:
	.string	"TLS-ECDH-RSA-WITH-AES-128-CBC-SHA256"
.LC50:
	.string	"TLS-ECDH-RSA-WITH-AES-128-GCM-SHA256"
.LC51:
	.string	"TLS-ECDH-RSA-WITH-AES-256-CBC-SHA384"
.LC52:
	.string	"TLS-ECDH-RSA-WITH-AES-256-GCM-SHA384"
.LC53:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA"
.LC54:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA"
.LC55:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA256"
.LC56:
	.string	"TLS-ECDH-ECDSA-WITH-AES-128-GCM-SHA256"
.LC57:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA384"
.LC58:
	.string	"TLS-ECDH-ECDSA-WITH-AES-256-GCM-SHA384"
.LC59:
	.string	"TLS-PSK-WITH-AES-128-GCM-SHA256"
.LC60:
	.string	"TLS-PSK-WITH-AES-256-GCM-SHA384"
.LC61:
	.string	"TLS-PSK-WITH-AES-128-CBC-SHA256"
.LC62:
	.string	"TLS-PSK-WITH-AES-256-CBC-SHA384"
.LC63:
	.string	"TLS-PSK-WITH-AES-128-CBC-SHA"
.LC64:
	.string	"TLS-PSK-WITH-AES-256-CBC-SHA"
.LC65:
	.string	"TLS-PSK-WITH-AES-256-CCM"
.LC66:
	.string	"TLS-PSK-WITH-AES-256-CCM-8"
.LC67:
	.string	"TLS-PSK-WITH-AES-128-CCM"
.LC68:
	.string	"TLS-PSK-WITH-AES-128-CCM-8"
.LC69:
	.string	"TLS-DHE-PSK-WITH-AES-128-GCM-SHA256"
.LC70:
	.string	"TLS-DHE-PSK-WITH-AES-256-GCM-SHA384"
.LC71:
	.string	"TLS-DHE-PSK-WITH-AES-128-CBC-SHA256"
.LC72:
	.string	"TLS-DHE-PSK-WITH-AES-256-CBC-SHA384"
.LC73:
	.string	"TLS-DHE-PSK-WITH-AES-128-CBC-SHA"
.LC74:
	.string	"TLS-DHE-PSK-WITH-AES-256-CBC-SHA"
.LC75:
	.string	"TLS-DHE-PSK-WITH-AES-256-CCM"
.LC76:
	.string	"TLS-DHE-PSK-WITH-AES-256-CCM-8"
.LC77:
	.string	"TLS-DHE-PSK-WITH-AES-128-CCM"
.LC78:
	.string	"TLS-DHE-PSK-WITH-AES-128-CCM-8"
.LC79:
	.string	"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA256"
.LC80:
	.string	"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA384"
.LC81:
	.string	"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA"
.LC82:
	.string	"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA"
.LC83:
	.string	"TLS-RSA-PSK-WITH-AES-128-GCM-SHA256"
.LC84:
	.string	"TLS-RSA-PSK-WITH-AES-256-GCM-SHA384"
.LC85:
	.string	"TLS-RSA-PSK-WITH-AES-128-CBC-SHA256"
.LC86:
	.string	"TLS-RSA-PSK-WITH-AES-256-CBC-SHA384"
.LC87:
	.string	"TLS-RSA-PSK-WITH-AES-128-CBC-SHA"
.LC88:
	.string	"TLS-RSA-PSK-WITH-AES-256-CBC-SHA"
.LC89:
	.string	""
	.section	.rodata.ciphersuite_definitions,"a",@progbits
	.align	4
	.type	ciphersuite_definitions, @object
	.size	ciphersuite_definitions, 3160
ciphersuite_definitions:
	.word	49161
	.word	.LC11
	.word	5
	.word	4
	.word	4
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49162
	.word	.LC12
	.word	7
	.word	4
	.word	4
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49187
	.word	.LC13
	.word	5
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49195
	.word	.LC14
	.word	14
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49188
	.word	.LC15
	.word	7
	.word	7
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49196
	.word	.LC16
	.word	16
	.word	7
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49325
	.word	.LC17
	.word	45
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49327
	.word	.LC18
	.word	45
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49324
	.word	.LC19
	.word	43
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49326
	.word	.LC20
	.word	43
	.word	6
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49171
	.word	.LC21
	.word	5
	.word	4
	.word	3
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49172
	.word	.LC22
	.word	7
	.word	4
	.word	3
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49191
	.word	.LC23
	.word	5
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49199
	.word	.LC24
	.word	14
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49192
	.word	.LC25
	.word	7
	.word	7
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49200
	.word	.LC26
	.word	16
	.word	7
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	159
	.word	.LC27
	.word	16
	.word	7
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	158
	.word	.LC28
	.word	14
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	103
	.word	.LC29
	.word	5
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	107
	.word	.LC30
	.word	7
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	51
	.word	.LC31
	.word	5
	.word	4
	.word	2
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	57
	.word	.LC32
	.word	7
	.word	4
	.word	2
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49311
	.word	.LC33
	.word	45
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49315
	.word	.LC34
	.word	45
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49310
	.word	.LC35
	.word	43
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49314
	.word	.LC36
	.word	43
	.word	6
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	157
	.word	.LC37
	.word	16
	.word	7
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	156
	.word	.LC38
	.word	14
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	60
	.word	.LC39
	.word	5
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	61
	.word	.LC40
	.word	7
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	47
	.word	.LC41
	.word	5
	.word	4
	.word	1
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	53
	.word	.LC42
	.word	7
	.word	4
	.word	1
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49309
	.word	.LC43
	.word	45
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49313
	.word	.LC44
	.word	45
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49308
	.word	.LC45
	.word	43
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49312
	.word	.LC46
	.word	43
	.word	6
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49166
	.word	.LC47
	.word	5
	.word	4
	.word	9
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49167
	.word	.LC48
	.word	7
	.word	4
	.word	9
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49193
	.word	.LC49
	.word	5
	.word	6
	.word	9
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49201
	.word	.LC50
	.word	14
	.word	6
	.word	9
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49194
	.word	.LC51
	.word	7
	.word	7
	.word	9
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49202
	.word	.LC52
	.word	16
	.word	7
	.word	9
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49156
	.word	.LC53
	.word	5
	.word	4
	.word	10
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49157
	.word	.LC54
	.word	7
	.word	4
	.word	10
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49189
	.word	.LC55
	.word	5
	.word	6
	.word	10
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49197
	.word	.LC56
	.word	14
	.word	6
	.word	10
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49190
	.word	.LC57
	.word	7
	.word	7
	.word	10
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49198
	.word	.LC58
	.word	16
	.word	7
	.word	10
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	168
	.word	.LC59
	.word	14
	.word	6
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	169
	.word	.LC60
	.word	16
	.word	7
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	174
	.word	.LC61
	.word	5
	.word	6
	.word	5
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	175
	.word	.LC62
	.word	7
	.word	7
	.word	5
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	140
	.word	.LC63
	.word	5
	.word	4
	.word	5
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	141
	.word	.LC64
	.word	7
	.word	4
	.word	5
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49317
	.word	.LC65
	.word	45
	.word	6
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49321
	.word	.LC66
	.word	45
	.word	6
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49316
	.word	.LC67
	.word	43
	.word	6
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49320
	.word	.LC68
	.word	43
	.word	6
	.word	5
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	170
	.word	.LC69
	.word	14
	.word	6
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	171
	.word	.LC70
	.word	16
	.word	7
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	178
	.word	.LC71
	.word	5
	.word	6
	.word	6
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	179
	.word	.LC72
	.word	7
	.word	7
	.word	6
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	144
	.word	.LC73
	.word	5
	.word	4
	.word	6
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	145
	.word	.LC74
	.word	7
	.word	4
	.word	6
	.word	3
	.word	0
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49319
	.word	.LC75
	.word	45
	.word	6
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49323
	.word	.LC76
	.word	45
	.word	6
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49318
	.word	.LC77
	.word	43
	.word	6
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49322
	.word	.LC78
	.word	43
	.word	6
	.word	6
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	2
	.zero	3
	.word	49207
	.word	.LC79
	.word	5
	.word	6
	.word	8
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49208
	.word	.LC80
	.word	7
	.word	7
	.word	8
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49205
	.word	.LC81
	.word	5
	.word	4
	.word	8
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	49206
	.word	.LC82
	.word	7
	.word	4
	.word	8
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	172
	.word	.LC83
	.word	14
	.word	6
	.word	7
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	173
	.word	.LC84
	.word	16
	.word	7
	.word	7
	.word	3
	.word	3
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	182
	.word	.LC85
	.word	5
	.word	6
	.word	7
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	183
	.word	.LC86
	.word	7
	.word	7
	.word	7
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	148
	.word	.LC87
	.word	5
	.word	4
	.word	7
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	149
	.word	.LC88
	.word	7
	.word	4
	.word	7
	.word	3
	.word	1
	.word	3
	.word	3
	.byte	0
	.zero	3
	.word	0
	.word	.LC89
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.zero	3
	.section	.rodata.ciphersuite_preference,"a",@progbits
	.align	4
	.type	ciphersuite_preference, @object
	.size	ciphersuite_preference, 832
ciphersuite_preference:
	.word	52392
	.word	52393
	.word	52394
	.word	49196
	.word	49200
	.word	159
	.word	49325
	.word	49311
	.word	49188
	.word	49192
	.word	107
	.word	49162
	.word	49172
	.word	57
	.word	49327
	.word	49315
	.word	49287
	.word	49291
	.word	49277
	.word	49267
	.word	49271
	.word	196
	.word	136
	.word	49245
	.word	49249
	.word	49235
	.word	49225
	.word	49229
	.word	49221
	.word	49195
	.word	49199
	.word	158
	.word	49324
	.word	49310
	.word	49187
	.word	49191
	.word	103
	.word	49161
	.word	49171
	.word	51
	.word	49326
	.word	49314
	.word	49286
	.word	49290
	.word	49276
	.word	49266
	.word	49270
	.word	190
	.word	69
	.word	49244
	.word	49248
	.word	49234
	.word	49224
	.word	49228
	.word	49220
	.word	52396
	.word	52397
	.word	171
	.word	49319
	.word	49208
	.word	179
	.word	49206
	.word	145
	.word	49297
	.word	49307
	.word	49303
	.word	49323
	.word	49261
	.word	49265
	.word	49255
	.word	170
	.word	49318
	.word	49207
	.word	178
	.word	49205
	.word	144
	.word	49296
	.word	49302
	.word	49306
	.word	49322
	.word	49260
	.word	49264
	.word	49254
	.word	49407
	.word	157
	.word	49309
	.word	61
	.word	53
	.word	49202
	.word	49194
	.word	49167
	.word	49198
	.word	49190
	.word	49157
	.word	49313
	.word	49275
	.word	192
	.word	132
	.word	49293
	.word	49273
	.word	49289
	.word	49269
	.word	49247
	.word	49251
	.word	49233
	.word	49227
	.word	49231
	.word	49213
	.word	156
	.word	49308
	.word	60
	.word	47
	.word	49201
	.word	49193
	.word	49166
	.word	49197
	.word	49189
	.word	49156
	.word	49312
	.word	49274
	.word	186
	.word	65
	.word	49292
	.word	49272
	.word	49288
	.word	49268
	.word	49246
	.word	49250
	.word	49232
	.word	49226
	.word	49230
	.word	49212
	.word	52398
	.word	173
	.word	183
	.word	149
	.word	49299
	.word	49305
	.word	49263
	.word	49257
	.word	172
	.word	182
	.word	148
	.word	49298
	.word	49304
	.word	49262
	.word	49256
	.word	52395
	.word	169
	.word	49317
	.word	175
	.word	141
	.word	49295
	.word	49301
	.word	49321
	.word	49259
	.word	49253
	.word	168
	.word	49316
	.word	174
	.word	140
	.word	49294
	.word	49300
	.word	49320
	.word	49258
	.word	49252
	.word	49160
	.word	49170
	.word	22
	.word	49204
	.word	143
	.word	10
	.word	49165
	.word	49155
	.word	147
	.word	139
	.word	49159
	.word	49169
	.word	49203
	.word	142
	.word	5
	.word	4
	.word	49164
	.word	49154
	.word	146
	.word	138
	.word	21
	.word	9
	.word	49158
	.word	49168
	.word	49211
	.word	49210
	.word	49209
	.word	181
	.word	180
	.word	45
	.word	59
	.word	2
	.word	1
	.word	49163
	.word	49153
	.word	185
	.word	184
	.word	46
	.word	177
	.word	176
	.word	44
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6dd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.4byte	0x7f
	.uleb128 0x5
	.4byte	0x72
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x2
	.byte	0x3a
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x2
	.byte	0x45
	.4byte	0x84
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x4e
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.byte	0x56
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x68
	.4byte	0x2e3
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x2e
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x32
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x33
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x36
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x37
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x3b
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x3d
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x3f
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x41
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x43
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x45
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x47
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x49
	.byte	0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x4
	.byte	0xb3
	.4byte	0x11a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.2byte	0x124
	.4byte	0x344
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x131
	.4byte	0x2ee
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x17c
	.4byte	0x35c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x28
	.byte	0x5
	.2byte	0x186
	.4byte	0x3eb
	.uleb128 0xc
	.string	"id"
	.byte	0x5
	.2byte	0x188
	.4byte	0x33
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x189
	.4byte	0x79
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x18b
	.4byte	0x2e3
	.byte	0x8
	.uleb128 0xc
	.string	"mac"
	.byte	0x5
	.2byte	0x18c
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x18d
	.4byte	0x344
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x18f
	.4byte	0x33
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x190
	.4byte	0x33
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x191
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x192
	.4byte	0x33
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x194
	.4byte	0x41
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x5
	.4byte	0x33
	.uleb128 0xe
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x889
	.4byte	0x33
	.byte	0x1
	.4byte	0x414
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x889
	.4byte	0x414
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x41a
	.uleb128 0x5
	.4byte	0x350
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x8bc
	.4byte	0x414
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46a
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x8bd
	.4byte	0x79
	.4byte	.LLST0
	.uleb128 0x12
	.string	"cur"
	.byte	0x1
	.2byte	0x8bf
	.4byte	0x414
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x6d5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x8cf
	.4byte	0x414
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a5
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x8cf
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x12
	.string	"cur"
	.byte	0x1
	.2byte	0x8d1
	.4byte	0x414
	.4byte	.LLST3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x89d
	.4byte	0x3eb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x510
	.uleb128 0x15
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.2byte	0x8a5
	.4byte	0x3eb
	.4byte	.LLST4
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.2byte	0x8a6
	.4byte	0x510
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x8ac
	.4byte	0x414
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x46a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x33
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x8de
	.4byte	0x79
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55f
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x8de
	.4byte	0x3f1
	.4byte	.LLST7
	.uleb128 0x17
	.string	"cur"
	.byte	0x1
	.2byte	0x8e0
	.4byte	0x414
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x46a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x8ea
	.4byte	0x33
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a8
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x8ea
	.4byte	0x79
	.4byte	.LLST8
	.uleb128 0x17
	.string	"cur"
	.byte	0x1
	.2byte	0x8ec
	.4byte	0x414
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x41f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x8f7
	.4byte	0x10f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d3
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x8f7
	.4byte	0x414
	.4byte	.LLST9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x90d
	.4byte	0x10f
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fe
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x90d
	.4byte	0x414
	.4byte	.LLST10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x922
	.4byte	0x33
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x629
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x922
	.4byte	0x414
	.4byte	.LLST11
	.byte	0
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x935
	.4byte	0x33
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x935
	.4byte	0x414
	.4byte	.LLST12
	.byte	0
	.uleb128 0x18
	.4byte	0x33
	.4byte	0x664
	.uleb128 0x19
	.4byte	0x64
	.byte	0xcf
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF141
	.byte	0x1
	.byte	0x37
	.4byte	0x675
	.uleb128 0x5
	.byte	0x3
	.4byte	ciphersuite_preference
	.uleb128 0x5
	.4byte	0x654
	.uleb128 0x18
	.4byte	0x350
	.4byte	0x68a
	.uleb128 0x19
	.4byte	0x64
	.byte	0x4e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x13d
	.4byte	0x69c
	.uleb128 0x5
	.byte	0x3
	.4byte	ciphersuite_definitions
	.uleb128 0x5
	.4byte	0x67a
	.uleb128 0x18
	.4byte	0x33
	.4byte	0x6b1
	.uleb128 0x19
	.4byte	0x64
	.byte	0x4e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x886
	.4byte	0x6a1
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_ciphersuites
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x887
	.4byte	0x33
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_init
	.uleb128 0x1c
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE19
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
	.4byte	ciphersuite_definitions
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	ciphersuite_definitions
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF114:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA"
.LASF56:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF29:
	.string	"mbedtls_pk_type_t"
.LASF149:
	.string	"strcmp"
.LASF111:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK"
.LASF98:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF130:
	.string	"ciphersuite"
.LASF48:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF75:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF110:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK"
.LASF116:
	.string	"MBEDTLS_KEY_EXCHANGE_ECJPAKE"
.LASF54:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF6:
	.string	"long long unsigned int"
.LASF83:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF70:
	.string	"MBEDTLS_CIPHER_BLOWFISH_CFB64"
.LASF30:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF81:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF65:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF108:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA"
.LASF147:
	.string	"/home/dieter/SoftwareDevelop/others/dev_M5Stack/build/mbedtls"
.LASF73:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF118:
	.string	"mbedtls_ssl_ciphersuite_t"
.LASF148:
	.string	"ciphersuite_is_removed"
.LASF104:
	.string	"mbedtls_cipher_type_t"
.LASF79:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF144:
	.string	"supported_init"
.LASF7:
	.string	"long int"
.LASF131:
	.string	"mbedtls_ssl_list_ciphersuites"
.LASF16:
	.string	"MBEDTLS_MD_SHA224"
.LASF141:
	.string	"ciphersuite_preference"
.LASF67:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF55:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF105:
	.string	"MBEDTLS_KEY_EXCHANGE_NONE"
.LASF95:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF99:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF68:
	.string	"MBEDTLS_CIPHER_BLOWFISH_ECB"
.LASF122:
	.string	"min_major_ver"
.LASF51:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF125:
	.string	"max_minor_ver"
.LASF49:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF62:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF43:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF0:
	.string	"unsigned int"
.LASF129:
	.string	"ciphersuite_name"
.LASF140:
	.string	"mbedtls_ssl_ciphersuite_uses_psk"
.LASF84:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF46:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF97:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF9:
	.string	"long unsigned int"
.LASF124:
	.string	"max_major_ver"
.LASF39:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF119:
	.string	"name"
.LASF20:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF47:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF28:
	.string	"mbedtls_md_type_t"
.LASF102:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF41:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF139:
	.string	"mbedtls_ssl_ciphersuite_uses_ec"
.LASF23:
	.string	"MBEDTLS_PK_ECKEY"
.LASF85:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF82:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF44:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF146:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/mbedtls/mbedtls/library/ssl_ciphersuites.c"
.LASF78:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF77:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF109:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA"
.LASF25:
	.string	"MBEDTLS_PK_ECDSA"
.LASF66:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF96:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF89:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF8:
	.string	"sizetype"
.LASF113:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK"
.LASF69:
	.string	"MBEDTLS_CIPHER_BLOWFISH_CBC"
.LASF53:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF101:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF19:
	.string	"MBEDTLS_MD_SHA512"
.LASF92:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF52:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF63:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF15:
	.string	"MBEDTLS_MD_SHA1"
.LASF123:
	.string	"min_minor_ver"
.LASF40:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF94:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF112:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK"
.LASF33:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF87:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF11:
	.string	"MBEDTLS_MD_NONE"
.LASF134:
	.string	"ciphersuite_id"
.LASF135:
	.string	"mbedtls_ssl_get_ciphersuite_id"
.LASF100:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF17:
	.string	"MBEDTLS_MD_SHA256"
.LASF50:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF72:
	.string	"MBEDTLS_CIPHER_ARC4_128"
.LASF3:
	.string	"unsigned char"
.LASF107:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA"
.LASF136:
	.string	"mbedtls_ssl_get_ciphersuite_sig_pk_alg"
.LASF4:
	.string	"short int"
.LASF137:
	.string	"info"
.LASF59:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF143:
	.string	"supported_ciphersuites"
.LASF34:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF106:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA"
.LASF57:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF133:
	.string	"mbedtls_ssl_get_ciphersuite_name"
.LASF103:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF60:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF88:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF128:
	.string	"mbedtls_ssl_ciphersuite_from_id"
.LASF18:
	.string	"MBEDTLS_MD_SHA384"
.LASF90:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF24:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF76:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF10:
	.string	"char"
.LASF142:
	.string	"ciphersuite_definitions"
.LASF93:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF27:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF31:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF42:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF115:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA"
.LASF38:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF12:
	.string	"MBEDTLS_MD_MD2"
.LASF13:
	.string	"MBEDTLS_MD_MD4"
.LASF14:
	.string	"MBEDTLS_MD_MD5"
.LASF1:
	.string	"short unsigned int"
.LASF74:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
.LASF26:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF91:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF80:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF64:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF138:
	.string	"mbedtls_ssl_get_ciphersuite_sig_alg"
.LASF121:
	.string	"key_exchange"
.LASF21:
	.string	"MBEDTLS_PK_NONE"
.LASF126:
	.string	"flags"
.LASF32:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF120:
	.string	"cipher"
.LASF71:
	.string	"MBEDTLS_CIPHER_BLOWFISH_CTR"
.LASF37:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF127:
	.string	"mbedtls_ssl_ciphersuite_from_string"
.LASF58:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF117:
	.string	"mbedtls_key_exchange_type_t"
.LASF132:
	.string	"cs_info"
.LASF61:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF86:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF45:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF36:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF22:
	.string	"MBEDTLS_PK_RSA"
.LASF35:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
