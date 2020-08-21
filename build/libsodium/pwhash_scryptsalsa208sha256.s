	.file	"pwhash_scryptsalsa208sha256.c"
	.text
.Ltext0:
	.global	__udivdi3
	.global	__ashldi3
	.global	__lshrdi3
	.section	.text.pickparams,"ax",@progbits
	.literal_position
	.literal .LC0, 32768, 0
	.literal .LC1, 32767
	.literal .LC2, 1, 0
	.literal .LC3, 1073741823
	.literal .LC4, 1073741823, 0
	.align	4
	.type	pickparams, @function
pickparams:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 21 0
	.loc 1 25 0
	bnez.n	a3, .L2
	l32r	a8, .LC1
	bltu	a8, a2, .L2
	.loc 1 26 0
	l32r	a2, .LC0
.LVL1:
	l32r	a3, .LC0+4
.L2:
.LVL2:
	.loc 1 28 0
	movi.n	a8, 8
	s32i.n	a8, a7, 0
	.loc 1 29 0
	movi.n	a13, 0
	srli	a9, a4, 5
	movi.n	a8, 1
	bne	a13, a3, .L4
	bgeu	a2, a9, .L4
	.loc 1 30 0
	s32i.n	a8, a6, 0
	.loc 1 31 0
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a12, 0x20
	s32i.n	a8, sp, 4
	call8	__udivdi3
.LVL3:
	.loc 1 32 0
	l32i.n	a8, sp, 4
	.loc 1 33 0
	slli	a2, a11, 31
.LVL4:
	srli	a3, a10, 1
	.loc 1 32 0
	s32i.n	a8, a5, 0
	.loc 1 33 0
	or	a3, a2, a3
	srli	a4, a11, 1
.LVL5:
	.loc 1 32 0
	movi.n	a6, 0x3e
.LVL6:
	j	.L6
.LVL7:
.L9:
	.loc 1 33 0
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	mov.n	a12, a2
	call8	__ashldi3
.LVL8:
	bltu	a4, a11, .L7
	bne	a11, a4, .L19
	bltu	a3, a10, .L7
.L19:
	.loc 1 32 0 discriminator 2
	addi.n	a2, a2, 1
	s32i.n	a2, a5, 0
.L6:
	.loc 1 32 0 is_stmt 0 discriminator 1
	l32i.n	a2, a5, 0
	bgeu	a6, a2, .L9
	j	.L7
.LVL9:
.L4:
	.loc 1 39 0 is_stmt 1
	s32i.n	a8, a5, 0
	movi.n	a9, 0x3e
	.loc 1 40 0
	srli	a8, a4, 11
	.loc 1 39 0
	j	.L10
.LVL10:
.L15:
	.loc 1 40 0
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	mov.n	a12, a4
	s32i.n	a8, sp, 4
	s32i.n	a9, sp, 0
	call8	__ashldi3
.LVL11:
	l32i.n	a8, sp, 4
	l32i.n	a9, sp, 0
	bnez.n	a11, .L16
	bgeu	a8, a10, .L20
.L16:
	.loc 1 44 0
	slli	a10, a3, 30
	srli	a2, a2, 2
.LVL12:
	mov.n	a12, a4
	or	a10, a10, a2
	srli	a11, a3, 2
	call8	__lshrdi3
.LVL13:
	.loc 1 50 0
	bnez.n	a11, .L14
	l32r	a2, .LC3
	bgeu	a2, a10, .L13
.L14:
	l32r	a10, .LC4
.LVL14:
.L13:
	l32i.n	a2, a7, 0
	quou	a10, a10, a2
	s32i.n	a10, a6, 0
	j	.L7
.LVL15:
.L20:
	.loc 1 39 0 discriminator 2
	addi.n	a4, a4, 1
	s32i.n	a4, a5, 0
.L10:
	.loc 1 39 0 is_stmt 0 discriminator 1
	l32i.n	a4, a5, 0
	bgeu	a9, a4, .L15
	j	.L16
.LVL16:
.L7:
	.loc 1 53 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	pickparams, .-pickparams
	.section	.text.crypto_pwhash_scryptsalsa208sha256_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_bytes_min
	.type	crypto_pwhash_scryptsalsa208sha256_bytes_min, @function
crypto_pwhash_scryptsalsa208sha256_bytes_min:
.LFB13:
	.loc 1 57 0
	entry	sp, 32
.LCFI1:
	.loc 1 59 0
	movi.n	a2, 0x10
	retw.n
.LFE13:
	.size	crypto_pwhash_scryptsalsa208sha256_bytes_min, .-crypto_pwhash_scryptsalsa208sha256_bytes_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_bytes_max
	.type	crypto_pwhash_scryptsalsa208sha256_bytes_max, @function
crypto_pwhash_scryptsalsa208sha256_bytes_max:
.LFB38:
	entry	sp, 32
.LCFI2:
	movi.n	a2, -1
	retw.n
.LFE38:
	.size	crypto_pwhash_scryptsalsa208sha256_bytes_max, .-crypto_pwhash_scryptsalsa208sha256_bytes_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_passwd_min
	.type	crypto_pwhash_scryptsalsa208sha256_passwd_min, @function
crypto_pwhash_scryptsalsa208sha256_passwd_min:
.LFB15:
	.loc 1 69 0
	.loc 1 69 0
	entry	sp, 32
.LCFI3:
	.loc 1 71 0
	movi.n	a2, 0
	retw.n
.LFE15:
	.size	crypto_pwhash_scryptsalsa208sha256_passwd_min, .-crypto_pwhash_scryptsalsa208sha256_passwd_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_passwd_max
	.type	crypto_pwhash_scryptsalsa208sha256_passwd_max, @function
crypto_pwhash_scryptsalsa208sha256_passwd_max:
.LFB36:
	entry	sp, 32
.LCFI4:
	movi.n	a2, -1
	retw.n
.LFE36:
	.size	crypto_pwhash_scryptsalsa208sha256_passwd_max, .-crypto_pwhash_scryptsalsa208sha256_passwd_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_saltbytes
	.type	crypto_pwhash_scryptsalsa208sha256_saltbytes, @function
crypto_pwhash_scryptsalsa208sha256_saltbytes:
.LFB17:
	.loc 1 81 0
	.loc 1 81 0
	entry	sp, 32
.LCFI5:
	.loc 1 83 0
	movi.n	a2, 0x20
	retw.n
.LFE17:
	.size	crypto_pwhash_scryptsalsa208sha256_saltbytes, .-crypto_pwhash_scryptsalsa208sha256_saltbytes
	.section	.text.crypto_pwhash_scryptsalsa208sha256_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_strbytes
	.type	crypto_pwhash_scryptsalsa208sha256_strbytes, @function
crypto_pwhash_scryptsalsa208sha256_strbytes:
.LFB18:
	.loc 1 87 0
	entry	sp, 32
.LCFI6:
	.loc 1 89 0
	movi	a2, 0x66
	retw.n
.LFE18:
	.size	crypto_pwhash_scryptsalsa208sha256_strbytes, .-crypto_pwhash_scryptsalsa208sha256_strbytes
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"$7$"
	.section	.text.crypto_pwhash_scryptsalsa208sha256_strprefix,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_strprefix
	.type	crypto_pwhash_scryptsalsa208sha256_strprefix, @function
crypto_pwhash_scryptsalsa208sha256_strprefix:
.LFB19:
	.loc 1 93 0
	entry	sp, 32
.LCFI7:
	.loc 1 95 0
	l32r	a2, .LC6
	retw.n
.LFE19:
	.size	crypto_pwhash_scryptsalsa208sha256_strprefix, .-crypto_pwhash_scryptsalsa208sha256_strprefix
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_min,"ax",@progbits
	.literal_position
	.literal .LC7, 32768
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_min
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_min, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_min:
.LFB20:
	.loc 1 99 0
	entry	sp, 32
.LCFI8:
	.loc 1 101 0
	l32r	a2, .LC7
	retw.n
.LFE20:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_min, .-crypto_pwhash_scryptsalsa208sha256_opslimit_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_max
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_max, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_max:
.LFB34:
	entry	sp, 32
.LCFI9:
	movi.n	a2, -1
	retw.n
.LFE34:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_max, .-crypto_pwhash_scryptsalsa208sha256_opslimit_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_min,"ax",@progbits
	.literal_position
	.literal .LC8, 16777216
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_min
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_min, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_min:
.LFB32:
	entry	sp, 32
.LCFI10:
	l32r	a2, .LC8
	retw.n
.LFE32:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_min, .-crypto_pwhash_scryptsalsa208sha256_memlimit_min
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_max
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_max, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_max:
.LFB23:
	.loc 1 117 0
	.loc 1 117 0
	entry	sp, 32
.LCFI11:
	.loc 1 119 0
	movi.n	a2, -1
	retw.n
.LFE23:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_max, .-crypto_pwhash_scryptsalsa208sha256_memlimit_max
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC9, 524288
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_interactive:
.LFB24:
	.loc 1 123 0
	entry	sp, 32
.LCFI12:
	.loc 1 125 0
	l32r	a2, .LC9
	retw.n
.LFE24:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_interactive, .-crypto_pwhash_scryptsalsa208sha256_opslimit_interactive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC10, 16777216
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_interactive:
.LFB25:
	.loc 1 129 0
	entry	sp, 32
.LCFI13:
	.loc 1 131 0
	l32r	a2, .LC10
	retw.n
.LFE25:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_interactive, .-crypto_pwhash_scryptsalsa208sha256_memlimit_interactive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC11, 33554432
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive
	.type	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive, @function
crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive:
.LFB26:
	.loc 1 135 0
	entry	sp, 32
.LCFI14:
	.loc 1 137 0
	l32r	a2, .LC11
	retw.n
.LFE26:
	.size	crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive, .-crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive
	.section	.text.crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC12, 1073741824
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive
	.type	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive, @function
crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive:
.LFB27:
	.loc 1 141 0
	entry	sp, 32
.LCFI15:
	.loc 1 143 0
	l32r	a2, .LC12
	retw.n
.LFE27:
	.size	crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive, .-crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive
	.section	.text.crypto_pwhash_scryptsalsa208sha256,"ax",@progbits
	.literal_position
	.literal .LC13, 1, 0
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256
	.type	crypto_pwhash_scryptsalsa208sha256, @function
crypto_pwhash_scryptsalsa208sha256:
.LFB28:
	.loc 1 152 0
.LVL17:
	entry	sp, 64
.LCFI16:
	.loc 1 152 0
	l32i	a7, sp, 68
	.loc 1 157 0
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, a2
	.loc 1 152 0
	l32i	a3, sp, 64
	.loc 1 157 0
	call8	memset
.LVL18:
	.loc 1 158 0
	bnez.n	a7, .L47
	bnez.n	a5, .L47
	.loc 1 163 0
	movi.n	a8, 0xf
	bltu	a8, a4, .L44
	j	.L46
.L47:
	.loc 1 160 0
	call8	__errno
.LVL19:
	movi.n	a2, 0x1b
.LVL20:
	j	.L50
.LVL21:
.L46:
	.loc 1 165 0
	call8	__errno
.LVL22:
	movi.n	a2, 0x16
.LVL23:
.L50:
	s32i.n	a2, a10, 0
	.loc 1 166 0
	movi.n	a10, -1
	j	.L43
.LVL24:
.L44:
	.loc 1 164 0 discriminator 1
	l32i	a12, sp, 88
	l32i	a10, sp, 80
	l32i	a11, sp, 84
	addi	a15, sp, 16
	addi	a14, sp, 20
	addi	a13, sp, 24
	call8	pickparams
.LVL25:
	.loc 1 163 0 discriminator 1
	bnez.n	a10, .L46
	.loc 1 168 0
	l32i.n	a12, sp, 24
	l32r	a10, .LC13
	l32r	a11, .LC13+4
	call8	__ashldi3
.LVL26:
	s32i.n	a2, sp, 8
	l32i.n	a2, sp, 20
.LVL27:
	l32i	a12, sp, 72
	s32i.n	a2, sp, 4
	l32i.n	a2, sp, 16
	mov.n	a14, a10
	mov.n	a15, a11
	s32i.n	a4, sp, 12
	s32i.n	a2, sp, 0
	movi.n	a13, 0x20
	mov.n	a11, a3
	mov.n	a10, a6
	call8	crypto_pwhash_scryptsalsa208sha256_ll
.LVL28:
.L43:
	.loc 1 172 0
	mov.n	a2, a10
	retw.n
.LFE28:
	.size	crypto_pwhash_scryptsalsa208sha256, .-crypto_pwhash_scryptsalsa208sha256
	.section	.text.crypto_pwhash_scryptsalsa208sha256_str,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_str
	.type	crypto_pwhash_scryptsalsa208sha256_str, @function
crypto_pwhash_scryptsalsa208sha256_str:
.LFB29:
	.loc 1 179 0
.LVL29:
	entry	sp, 192
.LCFI17:
	.loc 1 179 0
	mov.n	a8, a7
	.loc 1 187 0
	movi	a12, 0x66
	movi.n	a11, 0
	mov.n	a10, a2
	s32i	a8, sp, 144
	call8	memset
.LVL30:
	.loc 1 179 0
	mov.n	a7, a2
	.loc 1 188 0
	l32i	a8, sp, 144
	beqz.n	a5, .L60
	.loc 1 189 0
	call8	__errno
.LVL31:
	movi.n	a2, 0x1b
.LVL32:
	j	.L61
.LVL33:
.L60:
	.loc 1 193 0
	addi	a2, sp, 16
.LVL34:
	l32i	a12, sp, 192
	addi	a15, sp, 120
	addi	a14, sp, 124
	addi	a13, a2, 112
	mov.n	a10, a6
	mov.n	a11, a8
	call8	pickparams
.LVL35:
	.loc 1 192 0
	beqz.n	a10, .L55
	j	.L62
.L55:
	.loc 1 197 0
	movi.n	a11, 0x20
	addi	a10, sp, 74
	call8	randombytes_buf
.LVL36:
	.loc 1 198 0
	movi.n	a2, 0x3a
	l32i	a12, sp, 124
	l32i	a11, sp, 120
	l32i	a10, sp, 128
	s32i.n	a2, sp, 0
	addi	a15, sp, 16
	movi.n	a14, 0x20
	addi	a13, sp, 74
	call8	escrypt_gensalt_r
.LVL37:
	bnez.n	a10, .L56
	j	.L62
.L56:
	.loc 1 203 0
	addi	a10, sp, 108
	call8	escrypt_init_local
.LVL38:
	mov.n	a2, a10
	bnez.n	a10, .L58
	.loc 1 206 0
	movi	a15, 0x66
	mov.n	a14, a7
	addi	a13, sp, 16
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, sp, 108
	call8	escrypt_r
.LVL39:
	bnez.n	a10, .L57
	.loc 1 210 0
	addi	a10, sp, 108
	call8	escrypt_free_local
.LVL40:
.L62:
	.loc 1 211 0
	call8	__errno
.LVL41:
	movi.n	a2, 0x16
.L61:
	s32i.n	a2, a10, 0
	j	.L58
.L57:
	.loc 1 215 0
	addi	a10, sp, 108
	call8	escrypt_free_local
.LVL42:
	.loc 1 225 0
	retw.n
.L58:
	.loc 1 204 0
	movi.n	a2, -1
	.loc 1 226 0
	retw.n
.LFE29:
	.size	crypto_pwhash_scryptsalsa208sha256_str, .-crypto_pwhash_scryptsalsa208sha256_str
	.section	.text.crypto_pwhash_scryptsalsa208sha256_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_str_verify
	.type	crypto_pwhash_scryptsalsa208sha256_str_verify, @function
crypto_pwhash_scryptsalsa208sha256_str_verify:
.LFB30:
	.loc 1 232 0
.LVL43:
	entry	sp, 160
.LCFI18:
.LVL44:
	.loc 1 237 0
	movi	a12, 0x66
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memchr
.LVL45:
	addi	a8, a2, 101
	beq	a8, a10, .L64
	j	.L68
.L64:
	.loc 1 241 0
	addi	a10, sp, 104
	call8	escrypt_init_local
.LVL46:
	bnez.n	a10, .L68
	.loc 1 244 0
	mov.n	a11, a10
	movi	a12, 0x66
	mov.n	a10, sp
	call8	memset
.LVL47:
	.loc 1 245 0
	movi	a15, 0x66
	mov.n	a14, sp
	mov.n	a13, a2
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, sp, 104
	call8	escrypt_r
.LVL48:
	bnez.n	a10, .L67
	.loc 1 248 0
	addi	a10, sp, 104
	call8	escrypt_free_local
.LVL49:
.L68:
	.loc 1 249 0
	movi.n	a2, -1
.LVL50:
	retw.n
.LVL51:
.L67:
	.loc 1 251 0
	addi	a10, sp, 104
	call8	escrypt_free_local
.LVL52:
	.loc 1 252 0
	mov.n	a11, a2
	movi	a12, 0x66
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL53:
	mov.n	a2, a10
.LVL54:
	.loc 1 253 0
	movi	a11, 0x66
	mov.n	a10, sp
	call8	sodium_memzero
.LVL55:
	.loc 1 256 0
	retw.n
.LFE30:
	.size	crypto_pwhash_scryptsalsa208sha256_str_verify, .-crypto_pwhash_scryptsalsa208sha256_str_verify
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI4-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI10-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI13-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI15-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI16-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI17-.LFB29
	.byte	0xe
	.uleb128 0xc0
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI18-.LFB30
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE36:
	.text
.Letext0:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/xtensa/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
	.file 6 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/sys/errno.h"
	.file 7 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h"
	.file 8 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 9 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/string.h"
	.file 10 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd8
	.4byte	0x28
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x28
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5
	.uleb128 0x7
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x39
	.4byte	0x7a
	.uleb128 0x8
	.byte	0xc
	.byte	0x5
	.byte	0x34
	.4byte	0x108
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0x93
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.4byte	0x36
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x37
	.4byte	0xdb
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3e
	.4byte	0x108
	.uleb128 0x7
	.4byte	0x36
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x1
	.byte	0x13
	.4byte	0x2f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x13
	.4byte	0x21
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x13
	.4byte	0x11e
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x14
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x14
	.4byte	0x1a4
	.4byte	.LLST2
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x17
	.4byte	0x21
	.4byte	.LLST4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x7
	.4byte	0x19e
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x38
	.4byte	0x36
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x44
	.4byte	0x36
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x50
	.4byte	0x36
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x56
	.4byte	0x36
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5c
	.4byte	0xaf
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x62
	.4byte	0x36
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.4byte	0x36
	.byte	0x1
	.uleb128 0x12
	.4byte	0x227
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7a
	.4byte	0x36
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x80
	.4byte	0x36
	.byte	0x1
	.uleb128 0x12
	.4byte	0x257
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x86
	.4byte	0x36
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8c
	.4byte	0x36
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x92
	.4byte	0x2f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x92
	.4byte	0x3d3
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x93
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x94
	.4byte	0x3d8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x95
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x96
	.4byte	0x3e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x97
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x97
	.4byte	0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.byte	0x99
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x9b
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x73d
	.4byte	0x360
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x746
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x746
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x123
	.4byte	0x399
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x751
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0xaf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e3
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x7
	.4byte	0x3dd
	.uleb128 0x1a
	.4byte	.LASF44
	.byte	0x1
	.byte	0xaf
	.4byte	0x2f
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b8
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0xb0
	.4byte	0xa2
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb1
	.4byte	0x3d8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb1
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb2
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb2
	.4byte	0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb4
	.4byte	0x5b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb5
	.4byte	0x5c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb6
	.4byte	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb7
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xb8
	.4byte	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xb9
	.4byte	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x73d
	.4byte	0x4c8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x18
	.4byte	.LVL31
	.4byte	0x746
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x123
	.4byte	0x4fb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 112
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x75c
	.4byte	0x516
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x767
	.4byte	0x53f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x772
	.4byte	0x554
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0x77d
	.4byte	0x588
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x788
	.4byte	0x59d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x18
	.4byte	.LVL41
	.4byte	0x746
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0x788
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xba
	.4byte	0x5c8
	.uleb128 0x1c
	.4byte	0x8c
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.4byte	0xa8
	.4byte	0x5d8
	.uleb128 0x1c
	.4byte	0x8c
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe5
	.4byte	0x2f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0xd
	.string	"str"
	.byte	0x1
	.byte	0xe6
	.4byte	0xaf
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe7
	.4byte	0x3d8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe7
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe9
	.4byte	0x72d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xea
	.4byte	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0xeb
	.4byte	0x2f
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LVL45
	.4byte	0x793
	.4byte	0x66a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0x772
	.4byte	0x67e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0x73d
	.4byte	0x699
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x16
	.4byte	.LVL48
	.4byte	0x77d
	.4byte	0x6cc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0x788
	.4byte	0x6e0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.4byte	.LVL52
	.4byte	0x788
	.4byte	0x6f4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0x79e
	.4byte	0x715
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x7a9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xa8
	.4byte	0x73d
	.uleb128 0x1c
	.4byte	0x8c
	.byte	0x65
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF62
	.4byte	.LASF62
	.uleb128 0x1f
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0xf
	.uleb128 0x1f
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x66
	.uleb128 0x1f
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x5
	.byte	0x5a
	.uleb128 0x1f
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.byte	0x40
	.uleb128 0x1f
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x5
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0x42
	.uleb128 0x1f
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0x15
	.uleb128 0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xa
	.byte	0x1f
	.uleb128 0x1f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xa
	.byte	0x16
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3a
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x14
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x12
	.byte	0xc
	.4byte	0x3fffffff
	.byte	0xf7
	.uleb128 0x21
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL28-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
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
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"salt"
.LASF51:
	.string	"randombytes_buf"
.LASF4:
	.string	"size_t"
.LASF17:
	.string	"uint64_t"
.LASF57:
	.string	"sodium_memcmp"
.LASF24:
	.string	"memlimit"
.LASF5:
	.string	"__uint8_t"
.LASF33:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_min"
.LASF37:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive"
.LASF0:
	.string	"long long unsigned int"
.LASF53:
	.string	"escrypt_init_local"
.LASF61:
	.string	"pickparams"
.LASF44:
	.string	"crypto_pwhash_scryptsalsa208sha256_str"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF56:
	.string	"memchr"
.LASF22:
	.string	"escrypt_local_t"
.LASF48:
	.string	"wanted"
.LASF60:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
.LASF28:
	.string	"crypto_pwhash_scryptsalsa208sha256_bytes_min"
.LASF49:
	.string	"__errno"
.LASF11:
	.string	"long int"
.LASF19:
	.string	"aligned"
.LASF25:
	.string	"N_log2"
.LASF38:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive"
.LASF31:
	.string	"crypto_pwhash_scryptsalsa208sha256_strbytes"
.LASF8:
	.string	"__uint32_t"
.LASF46:
	.string	"escrypt_local"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"long unsigned int"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF52:
	.string	"escrypt_gensalt_r"
.LASF54:
	.string	"escrypt_r"
.LASF32:
	.string	"crypto_pwhash_scryptsalsa208sha256_strprefix"
.LASF18:
	.string	"base"
.LASF12:
	.string	"sizetype"
.LASF55:
	.string	"escrypt_free_local"
.LASF58:
	.string	"sodium_memzero"
.LASF10:
	.string	"__uint64_t"
.LASF6:
	.string	"unsigned char"
.LASF43:
	.string	"crypto_pwhash_scryptsalsa208sha256"
.LASF7:
	.string	"short int"
.LASF30:
	.string	"crypto_pwhash_scryptsalsa208sha256_saltbytes"
.LASF36:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_interactive"
.LASF40:
	.string	"passwd"
.LASF50:
	.string	"crypto_pwhash_scryptsalsa208sha256_ll"
.LASF16:
	.string	"uint32_t"
.LASF35:
	.string	"crypto_pwhash_scryptsalsa208sha256_memlimit_max"
.LASF23:
	.string	"opslimit"
.LASF14:
	.string	"char"
.LASF29:
	.string	"crypto_pwhash_scryptsalsa208sha256_passwd_min"
.LASF21:
	.string	"escrypt_region_t"
.LASF47:
	.string	"crypto_pwhash_scryptsalsa208sha256_str_verify"
.LASF27:
	.string	"maxrp"
.LASF62:
	.string	"memset"
.LASF41:
	.string	"passwdlen"
.LASF26:
	.string	"maxN"
.LASF15:
	.string	"uint8_t"
.LASF45:
	.string	"setting"
.LASF39:
	.string	"outlen"
.LASF34:
	.string	"crypto_pwhash_scryptsalsa208sha256_opslimit_interactive"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
