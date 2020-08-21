	.file	"shorthash_siphashx24_ref.c"
	.text
.Ltext0:
	.section	.text.crypto_shorthash_siphashx24,"ax",@progbits
	.literal_position
	.literal .LC0, 2037671283
	.literal .LC1, 1952801890
	.literal .LC2, 1852142177
	.literal .LC3, 1819895653
	.literal .LC4, 1852075907
	.literal .LC5, 1685025377
	.literal .LC6, 1886610805
	.literal .LC7, 1936682341
	.literal .LC8, .L14
	.align	4
	.global	crypto_shorthash_siphashx24
	.type	crypto_shorthash_siphashx24, @function
crypto_shorthash_siphashx24:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphashx24_ref.c"
	.loc 1 8 0
.LVL0:
	entry	sp, 96
.LCFI0:
.LVL1:
.LBB304:
.LBB305:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 44 0
	mov.n	a11, a6
	movi.n	a12, 8
	mov.n	a10, sp
.LBE305:
.LBE304:
	.loc 1 8 0
	s32i.n	a2, sp, 20
	s32i.n	a3, sp, 16
.LBB308:
.LBB306:
	.loc 2 44 0
	call8	memcpy
.LVL2:
	.loc 2 45 0
	l32i.n	a15, sp, 0
.LBE306:
.LBE308:
.LBB309:
.LBB310:
	.loc 2 44 0
	movi.n	a12, 8
	add.n	a11, a6, a12
	mov.n	a10, sp
.LBE310:
.LBE309:
	.loc 1 8 0
	mov.n	a2, a4
.LVL3:
.LBB315:
.LBB311:
	.loc 2 44 0
	s32i.n	a15, sp, 40
.LBE311:
.LBE315:
.LBB316:
.LBB307:
	.loc 2 45 0
	l32i.n	a4, sp, 4
.LVL4:
.LBE307:
.LBE316:
.LBB317:
.LBB312:
	.loc 2 44 0
	call8	memcpy
.LVL5:
.LBE312:
.LBE317:
	.loc 1 17 0
	movi.n	a13, -8
	l32i.n	a5, sp, 16
	and	a13, a13, a2
.LBB318:
.LBB313:
	.loc 2 45 0
	l32i.n	a3, sp, 0
.LVL6:
.LBE313:
.LBE318:
	.loc 1 23 0
	l32r	a10, .LC4
	.loc 1 17 0
	add.n	a13, a5, a13
	.loc 1 20 0
	slli	a9, a2, 24
	.loc 1 18 0
	extui	a5, a2, 0, 3
	.loc 1 21 0
	l32r	a2, .LC0
.LBB319:
.LBB314:
	.loc 2 45 0
	l32i.n	a7, sp, 4
.LVL7:
.LBE314:
.LBE319:
	.loc 1 21 0
	xor	a2, a3, a2
	l32r	a6, .LC1
.LVL8:
	.loc 1 23 0
	xor	a3, a3, a10
	l32r	a10, .LC5
	.loc 1 22 0
	l32i.n	a15, sp, 40
	.loc 1 21 0
	xor	a6, a7, a6
	.loc 1 22 0
	l32r	a8, .LC2
	.loc 1 23 0
	xor	a7, a7, a10
	.loc 1 24 0
	l32r	a10, .LC6
	.loc 1 18 0
	s32i.n	a5, sp, 32
.LVL9:
	.loc 1 22 0
	xor	a8, a15, a8
	l32r	a5, .LC3
.LVL10:
	.loc 1 24 0
	xor	a15, a15, a10
	l32r	a10, .LC7
	.loc 1 22 0
	xor	a5, a4, a5
	.loc 1 20 0
	movi.n	a14, 0
.LVL11:
	.loc 1 24 0
	xor	a4, a4, a10
.LVL12:
	.loc 1 25 0
	j	.L2
.LVL13:
.L11:
.LBB320:
.LBB321:
	.loc 2 44 0
	l32i.n	a11, sp, 16
.LVL14:
	movi.n	a12, 8
.LVL15:
	mov.n	a10, sp
	s32i.n	a8, sp, 48
	s32i.n	a9, sp, 52
	s32i.n	a13, sp, 44
	s32i.n	a14, sp, 36
	s32i.n	a15, sp, 40
	call8	memcpy
.LVL16:
	.loc 2 45 0
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
.LBE321:
.LBE320:
	.loc 1 28 0
	l32i.n	a15, sp, 40
.LBB323:
.LBB322:
	.loc 2 45 0
	s32i.n	a10, sp, 24
	s32i.n	a11, sp, 28
.LBE322:
.LBE323:
	.loc 1 27 0
	xor	a2, a2, a10
.LVL17:
	.loc 1 28 0
	add.n	a10, a15, a3
	.loc 1 27 0
	xor	a6, a6, a11
.LVL18:
	.loc 1 28 0
	l32i.n	a8, sp, 48
	movi.n	a11, 1
	l32i.n	a9, sp, 52
	l32i.n	a13, sp, 44
	l32i.n	a14, sp, 36
	bltu	a10, a15, .L3
	movi.n	a11, 0
.L3:
.LBB324:
.LBB325:
	.loc 2 21 0
	extui	a12, a3, 19, 13
.LBE325:
.LBE324:
	.loc 1 28 0
	add.n	a4, a11, a4
.LVL19:
.LBB327:
.LBB326:
	.loc 2 21 0
	slli	a3, a3, 13
.LVL20:
	slli	a11, a7, 13
	extui	a7, a7, 19, 13
	or	a11, a12, a11
	or	a3, a7, a3
.LBE326:
.LBE327:
	.loc 1 28 0
	add.n	a7, a8, a2
	xor	a3, a10, a3
	xor	a11, a4, a11
.LVL21:
	movi.n	a12, 1
	bltu	a7, a8, .L4
	movi.n	a12, 0
.L4:
	add.n	a5, a5, a6
	add.n	a12, a12, a5
.LVL22:
.LBB328:
.LBB329:
	.loc 2 21 0
	extui	a8, a2, 16, 16
	slli	a5, a6, 16
	slli	a2, a2, 16
.LVL23:
	extui	a6, a6, 16, 16
	or	a2, a6, a2
.LBE329:
.LBE328:
	.loc 1 28 0
	xor	a2, a7, a2
.LBB331:
.LBB330:
	.loc 2 21 0
	or	a8, a8, a5
.LBE330:
.LBE331:
	.loc 1 28 0
	add.n	a4, a2, a4
.LVL24:
	xor	a8, a12, a8
.LVL25:
	movi.n	a5, 1
	bltu	a4, a2, .L5
	movi.n	a5, 0
.L5:
	add.n	a10, a8, a10
	add.n	a10, a5, a10
.LVL26:
.LBB332:
.LBB333:
	.loc 2 21 0
	srli	a6, a2, 11
	slli	a5, a8, 21
	slli	a2, a2, 21
.LVL27:
	srli	a8, a8, 11
	or	a8, a8, a2
	or	a6, a6, a5
.LBE333:
.LBE332:
	.loc 1 28 0
	add.n	a7, a3, a7
.LVL28:
	xor	a8, a4, a8
	xor	a6, a10, a6
.LVL29:
	movi.n	a2, 1
	bltu	a7, a3, .L6
	movi.n	a2, 0
.L6:
	add.n	a5, a11, a12
	add.n	a5, a2, a5
.LVL30:
.LBB334:
.LBB335:
	.loc 2 21 0
	srli	a12, a3, 15
	slli	a2, a11, 17
	slli	a3, a3, 17
.LVL31:
	srli	a11, a11, 15
	or	a11, a11, a3
	or	a12, a12, a2
.LBE335:
.LBE334:
	.loc 1 28 0
	xor	a2, a7, a11
	.loc 1 29 0
	add.n	a11, a4, a2
	.loc 1 28 0
	xor	a12, a5, a12
.LVL32:
	.loc 1 29 0
	movi.n	a3, 1
	bltu	a11, a4, .L7
	movi.n	a3, 0
.L7:
	add.n	a15, a10, a12
	add.n	a15, a3, a15
.LVL33:
.LBB336:
.LBB337:
	.loc 2 21 0
	extui	a4, a2, 19, 13
	slli	a3, a12, 13
	slli	a2, a2, 13
.LVL34:
	extui	a12, a12, 19, 13
	or	a12, a12, a2
	or	a3, a4, a3
.LBE337:
.LBE336:
	.loc 1 29 0
	add.n	a5, a8, a5
.LVL35:
	xor	a10, a11, a12
	xor	a3, a15, a3
.LVL36:
	movi.n	a2, 1
	bltu	a5, a8, .L8
	movi.n	a2, 0
.L8:
	add.n	a7, a6, a7
	add.n	a7, a2, a7
.LVL37:
.LBB338:
.LBB339:
	.loc 2 21 0
	extui	a4, a8, 16, 16
	slli	a2, a6, 16
	slli	a8, a8, 16
.LVL38:
	extui	a6, a6, 16, 16
	or	a8, a6, a8
.LBE339:
.LBE338:
	.loc 1 29 0
	xor	a8, a5, a8
.LBB341:
.LBB340:
	.loc 2 21 0
	or	a2, a4, a2
.LBE340:
.LBE341:
	.loc 1 29 0
	add.n	a15, a8, a15
.LVL39:
	xor	a2, a7, a2
.LVL40:
	movi.n	a6, 1
	bltu	a15, a8, .L9
	movi.n	a6, 0
.L9:
	add.n	a4, a2, a11
	add.n	a4, a6, a4
.LVL41:
.LBB342:
.LBB343:
	.loc 2 21 0
	srli	a11, a8, 11
	slli	a6, a2, 21
	slli	a8, a8, 21
.LVL42:
	srli	a2, a2, 11
	or	a6, a11, a6
	or	a2, a2, a8
.LBE343:
.LBE342:
	.loc 1 29 0
	add.n	a5, a10, a5
.LVL43:
	xor	a2, a15, a2
	xor	a6, a4, a6
.LVL44:
	movi.n	a11, 1
	bltu	a5, a10, .L10
	movi.n	a11, 0
.L10:
	add.n	a8, a3, a7
	add.n	a8, a11, a8
.LVL45:
.LBB344:
.LBB345:
	.loc 2 21 0
	slli	a7, a3, 17
	srli	a11, a10, 15
	srli	a3, a3, 15
.LVL46:
	slli	a10, a10, 17
	or	a3, a3, a10
.LBE345:
.LBE344:
	.loc 1 30 0
	l32i.n	a10, sp, 24
.LBB347:
.LBB346:
	.loc 2 21 0
	or	a7, a11, a7
.LBE346:
.LBE347:
	.loc 1 30 0
	xor	a15, a10, a15
.LVL47:
	.loc 1 25 0
	l32i.n	a10, sp, 16
	.loc 1 30 0
	l32i.n	a11, sp, 28
	.loc 1 25 0
	addi.n	a10, a10, 8
	.loc 1 29 0
	xor	a3, a5, a3
	xor	a7, a8, a7
.LVL48:
	.loc 1 30 0
	xor	a4, a11, a4
.LVL49:
	.loc 1 25 0
	s32i.n	a10, sp, 16
.LVL50:
.L2:
	.loc 1 25 0 is_stmt 0 discriminator 1
	l32i.n	a11, sp, 16
	add.n	a4, a4, a7
.LVL51:
	bne	a11, a13, .L11
	.loc 1 32 0 is_stmt 1
	l32i.n	a11, sp, 32
	addi.n	a10, a11, -1
	bgeui	a10, 7, .L12
	l32r	a11, .LC8
	addx4	a10, a10, a11
	l32i.n	a10, a10, 0
	jx	a10
	.section	.rodata.crypto_shorthash_siphashx24,"a",@progbits
	.align	4
	.align	4
.L14:
	.word	.L13
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.section	.text.crypto_shorthash_siphashx24
.L20:
	.loc 1 34 0
	l8ui	a10, a13, 6
	slli	a10, a10, 16
	or	a9, a9, a10
.LVL52:
.L19:
	.loc 1 36 0
	l8ui	a10, a13, 5
	slli	a10, a10, 8
	or	a9, a9, a10
.LVL53:
.L18:
	.loc 1 38 0
	l8ui	a10, a13, 4
	or	a9, a9, a10
.LVL54:
.L17:
	.loc 1 40 0
	l8ui	a14, a13, 3
.LVL55:
	slli	a14, a14, 24
.LVL56:
.L16:
	.loc 1 42 0
	l8ui	a10, a13, 2
	slli	a10, a10, 16
.LVL57:
	or	a14, a14, a10
.LVL58:
.L15:
	.loc 1 44 0
	l8ui	a10, a13, 1
	slli	a10, a10, 8
.LVL59:
	or	a14, a14, a10
.LVL60:
.L13:
	.loc 1 46 0
	l8ui	a10, a13, 0
	or	a14, a14, a10
.LVL61:
.L12:
	.loc 1 52 0
	add.n	a10, a15, a3
	.loc 1 51 0
	xor	a2, a2, a14
.LVL62:
	xor	a6, a6, a9
.LVL63:
	.loc 1 52 0
	movi.n	a11, 1
	bltu	a10, a15, .L21
	movi.n	a11, 0
.L21:
.LBB348:
.LBB349:
	.loc 2 21 0
	extui	a12, a3, 19, 13
.LBE349:
.LBE348:
	.loc 1 52 0
	add.n	a4, a11, a4
.LVL64:
.LBB351:
.LBB350:
	.loc 2 21 0
	slli	a3, a3, 13
.LVL65:
	slli	a11, a7, 13
	extui	a7, a7, 19, 13
	or	a11, a12, a11
	or	a7, a7, a3
.LBE350:
.LBE351:
	.loc 1 52 0
	add.n	a3, a8, a2
	xor	a7, a7, a10
	xor	a11, a11, a4
.LVL66:
	movi.n	a12, 1
	bltu	a3, a8, .L22
	movi.n	a12, 0
.L22:
	add.n	a5, a5, a6
.LVL67:
	add.n	a5, a12, a5
.LVL68:
.LBB352:
.LBB353:
	.loc 2 21 0
	slli	a8, a6, 16
	extui	a12, a2, 16, 16
	extui	a6, a6, 16, 16
.LVL69:
	slli	a2, a2, 16
	or	a2, a6, a2
	or	a8, a12, a8
.LBE353:
.LBE352:
	.loc 1 52 0
	xor	a2, a2, a3
	xor	a12, a8, a5
.LVL70:
	add.n	a8, a4, a2
	movi.n	a6, 1
	bltu	a8, a4, .L23
	movi.n	a6, 0
.L23:
	add.n	a10, a10, a12
.LVL71:
	add.n	a10, a6, a10
.LVL72:
.LBB354:
.LBB355:
	.loc 2 21 0
	slli	a4, a12, 21
	srli	a6, a2, 11
	or	a6, a6, a4
	slli	a2, a2, 21
.LVL73:
	srli	a4, a12, 11
	or	a4, a4, a2
.LBE355:
.LBE354:
	.loc 1 52 0
	add.n	a2, a7, a3
	xor	a4, a4, a8
	xor	a6, a6, a10
.LVL74:
	movi.n	a3, 1
.LVL75:
	bltu	a2, a7, .L24
	movi.n	a3, 0
.L24:
	add.n	a5, a11, a5
	add.n	a5, a3, a5
.LVL76:
.LBB356:
.LBB357:
	.loc 2 21 0
	srli	a12, a7, 15
	slli	a3, a11, 17
	slli	a7, a7, 17
.LVL77:
	srli	a11, a11, 15
	or	a7, a11, a7
.LBE357:
.LBE356:
	.loc 1 52 0
	xor	a7, a7, a2
.LBB359:
.LBB358:
	.loc 2 21 0
	or	a12, a12, a3
.LBE358:
.LBE359:
	.loc 1 53 0
	add.n	a13, a8, a7
	.loc 1 52 0
	xor	a3, a12, a5
.LVL78:
	.loc 1 53 0
	movi.n	a11, 1
	bltu	a13, a8, .L25
	movi.n	a11, 0
.L25:
	add.n	a10, a10, a3
.LVL79:
.LBB360:
.LBB361:
	.loc 2 21 0
	extui	a15, a7, 19, 13
	slli	a8, a3, 13
	slli	a7, a7, 13
.LVL80:
	extui	a3, a3, 19, 13
.LBE361:
.LBE360:
	.loc 1 53 0
	add.n	a10, a11, a10
.LVL81:
.LBB363:
.LBB362:
	.loc 2 21 0
	or	a15, a15, a8
	or	a3, a3, a7
.LBE362:
.LBE363:
	.loc 1 53 0
	add.n	a12, a5, a4
	xor	a3, a3, a13
	xor	a15, a15, a10
.LVL82:
	movi.n	a11, 1
	bltu	a12, a5, .L26
	movi.n	a11, 0
.L26:
	add.n	a2, a2, a6
.LVL83:
	add.n	a11, a11, a2
.LVL84:
.LBB364:
.LBB365:
	.loc 2 21 0
	extui	a5, a4, 16, 16
	slli	a2, a6, 16
	slli	a4, a4, 16
.LVL85:
	extui	a6, a6, 16, 16
	or	a4, a6, a4
.LBE365:
.LBE364:
	.loc 1 53 0
	xor	a7, a4, a12
.LBB367:
.LBB366:
	.loc 2 21 0
	or	a5, a5, a2
.LBE366:
.LBE367:
	.loc 1 53 0
	add.n	a4, a10, a7
	xor	a5, a5, a11
.LVL86:
	movi.n	a2, 1
	bltu	a4, a10, .L27
	movi.n	a2, 0
.L27:
	add.n	a13, a13, a5
.LVL87:
	add.n	a13, a2, a13
.LVL88:
.LBB368:
.LBB369:
	.loc 2 21 0
	srli	a6, a7, 11
	slli	a2, a5, 21
	or	a6, a6, a2
	slli	a7, a7, 21
.LVL89:
	srli	a2, a5, 11
	or	a2, a2, a7
.LBE369:
.LBE368:
	.loc 1 53 0
	add.n	a12, a3, a12
.LVL90:
	xor	a2, a2, a4
	xor	a6, a6, a13
.LVL91:
	movi.n	a8, 1
	bltu	a12, a3, .L28
	movi.n	a8, 0
.L28:
	add.n	a11, a15, a11
.LBB370:
.LBB371:
	.loc 2 21 0
	srli	a10, a3, 15
	slli	a5, a15, 17
	slli	a3, a3, 17
.LVL92:
	srli	a15, a15, 15
	or	a3, a15, a3
.LBE371:
.LBE370:
	.loc 1 53 0
	xor	a3, a3, a12
	.loc 1 54 0
	xor	a14, a14, a4
	.loc 1 53 0
	add.n	a11, a8, a11
.LVL93:
.LBB373:
.LBB372:
	.loc 2 21 0
	or	a10, a10, a5
.LBE372:
.LBE373:
	.loc 1 55 0
	movi	a8, 0xee
	.loc 1 56 0
	add.n	a14, a3, a14
	.loc 1 54 0
	xor	a13, a9, a13
.LVL94:
	.loc 1 53 0
	xor	a10, a10, a11
.LVL95:
	.loc 1 55 0
	xor	a8, a8, a11
.LVL96:
	.loc 1 56 0
	movi.n	a9, 1
	bltu	a14, a3, .L29
	movi.n	a9, 0
.L29:
	add.n	a13, a10, a13
.LBB374:
.LBB375:
	.loc 2 21 0
	extui	a11, a3, 19, 13
.LVL97:
	slli	a4, a10, 13
	extui	a7, a10, 19, 13
	slli	a3, a3, 13
.LVL98:
.LBE375:
.LBE374:
	.loc 1 56 0
	add.n	a9, a9, a13
.LVL99:
.LBB377:
.LBB376:
	.loc 2 21 0
	or	a11, a11, a4
	or	a7, a7, a3
.LBE376:
.LBE377:
	.loc 1 56 0
	add.n	a8, a2, a8
.LVL100:
	xor	a7, a7, a14
	xor	a11, a11, a9
.LVL101:
	movi.n	a10, 1
	bltu	a8, a2, .L30
	movi.n	a10, 0
.L30:
.LBB378:
.LBB379:
	.loc 2 21 0
	extui	a5, a6, 16, 16
.LBE379:
.LBE378:
	.loc 1 56 0
	add.n	a12, a6, a12
.LBB382:
.LBB380:
	.loc 2 21 0
	slli	a3, a6, 16
	slli	a6, a2, 16
.LVL102:
	or	a6, a5, a6
	extui	a4, a2, 16, 16
.LBE380:
.LBE382:
	.loc 1 56 0
	xor	a5, a6, a8
	add.n	a10, a10, a12
.LVL103:
.LBB383:
.LBB381:
	.loc 2 21 0
	or	a3, a4, a3
.LBE381:
.LBE383:
	.loc 1 56 0
	add.n	a6, a9, a5
	xor	a3, a3, a10
.LVL104:
	movi.n	a2, 1
	bltu	a6, a9, .L31
	movi.n	a2, 0
.L31:
	add.n	a14, a14, a3
.LVL105:
	add.n	a14, a2, a14
.LVL106:
.LBB384:
.LBB385:
	.loc 2 21 0
	srli	a9, a5, 11
	slli	a2, a3, 21
	slli	a5, a5, 21
.LVL107:
	srli	a3, a3, 11
	or	a9, a9, a2
	or	a3, a3, a5
.LBE385:
.LBE384:
	.loc 1 56 0
	add.n	a8, a7, a8
.LVL108:
	xor	a3, a3, a6
	xor	a9, a9, a14
.LVL109:
	movi.n	a2, 1
	bltu	a8, a7, .L32
	movi.n	a2, 0
.L32:
	add.n	a10, a11, a10
	add.n	a10, a2, a10
.LVL110:
.LBB386:
.LBB387:
	.loc 2 21 0
	srli	a4, a7, 15
	slli	a2, a11, 17
	slli	a5, a7, 17
	or	a4, a4, a2
	srli	a2, a11, 15
	or	a2, a2, a5
.LVL111:
.LBE387:
.LBE386:
	.loc 1 56 0
	xor	a2, a2, a8
	.loc 1 57 0
	add.n	a7, a6, a2
.LVL112:
	.loc 1 56 0
	xor	a4, a4, a10
.LVL113:
	.loc 1 57 0
	movi.n	a5, 1
	bltu	a7, a6, .L33
	movi.n	a5, 0
.L33:
	add.n	a14, a14, a4
.LVL114:
	add.n	a14, a5, a14
.LVL115:
.LBB388:
.LBB389:
	.loc 2 21 0
	extui	a11, a2, 19, 13
	slli	a5, a4, 13
	or	a11, a11, a5
	slli	a2, a2, 13
.LVL116:
	extui	a5, a4, 19, 13
	or	a5, a5, a2
.LBE389:
.LBE388:
	.loc 1 57 0
	add.n	a6, a10, a3
	xor	a5, a5, a7
	xor	a11, a11, a14
.LVL117:
	movi.n	a2, 1
	bltu	a6, a10, .L34
	movi.n	a2, 0
.L34:
	add.n	a8, a8, a9
.LVL118:
	add.n	a8, a2, a8
.LVL119:
.LBB390:
.LBB391:
	.loc 2 21 0
	extui	a4, a3, 16, 16
	slli	a2, a9, 16
	slli	a3, a3, 16
.LVL120:
	extui	a9, a9, 16, 16
	or	a3, a9, a3
.LBE391:
.LBE390:
	.loc 1 57 0
	xor	a3, a3, a6
.LBB393:
.LBB392:
	.loc 2 21 0
	or	a4, a4, a2
.LBE392:
.LBE393:
	.loc 1 57 0
	add.n	a10, a14, a3
	xor	a4, a4, a8
.LVL121:
	movi.n	a2, 1
	bltu	a10, a14, .L35
	movi.n	a2, 0
.L35:
	add.n	a7, a7, a4
.LVL122:
	add.n	a7, a2, a7
.LVL123:
.LBB394:
.LBB395:
	.loc 2 21 0
	srli	a9, a3, 11
	slli	a2, a4, 21
	or	a9, a9, a2
	slli	a3, a3, 21
.LVL124:
	srli	a2, a4, 11
	or	a2, a2, a3
.LBE395:
.LBE394:
	.loc 1 57 0
	add.n	a12, a5, a6
	xor	a2, a2, a10
	xor	a9, a9, a7
.LVL125:
	movi.n	a3, 1
	bltu	a12, a5, .L36
	movi.n	a3, 0
.L36:
	add.n	a8, a11, a8
.LVL126:
	add.n	a8, a3, a8
.LVL127:
.LBB396:
.LBB397:
	.loc 2 21 0
	srli	a4, a5, 15
	slli	a3, a11, 17
	or	a4, a4, a3
	slli	a5, a5, 17
.LVL128:
	srli	a3, a11, 15
	or	a3, a3, a5
.LBE397:
.LBE396:
	.loc 1 57 0
	xor	a3, a3, a12
	.loc 1 58 0
	add.n	a11, a10, a3
	.loc 1 57 0
	xor	a4, a4, a8
.LVL129:
	.loc 1 58 0
	movi.n	a5, 1
	bltu	a11, a10, .L37
	movi.n	a5, 0
.L37:
	add.n	a7, a7, a4
.LVL130:
	add.n	a7, a5, a7
.LVL131:
.LBB398:
.LBB399:
	.loc 2 21 0
	extui	a13, a3, 19, 13
	slli	a5, a4, 13
	or	a13, a13, a5
	slli	a3, a3, 13
.LVL132:
	extui	a5, a4, 19, 13
	or	a5, a5, a3
.LBE399:
.LBE398:
	.loc 1 58 0
	add.n	a10, a8, a2
	xor	a5, a5, a11
	xor	a13, a13, a7
.LVL133:
	movi.n	a3, 1
	bltu	a10, a8, .L38
	movi.n	a3, 0
.L38:
	add.n	a6, a12, a9
	add.n	a12, a3, a6
.LVL134:
.LBB400:
.LBB401:
	.loc 2 21 0
	extui	a4, a2, 16, 16
	slli	a3, a9, 16
	slli	a2, a2, 16
.LVL135:
	extui	a9, a9, 16, 16
	or	a2, a9, a2
.LBE401:
.LBE400:
	.loc 1 58 0
	xor	a2, a2, a10
.LBB403:
.LBB402:
	.loc 2 21 0
	or	a4, a4, a3
.LBE402:
.LBE403:
	.loc 1 58 0
	add.n	a8, a7, a2
	xor	a4, a4, a12
.LVL136:
	movi.n	a3, 1
	bltu	a8, a7, .L39
	movi.n	a3, 0
.L39:
	add.n	a11, a11, a4
.LVL137:
	add.n	a11, a3, a11
.LVL138:
.LBB404:
.LBB405:
	.loc 2 21 0
	srli	a7, a2, 11
	slli	a3, a4, 21
	or	a7, a7, a3
	slli	a2, a2, 21
.LVL139:
	srli	a3, a4, 11
	or	a3, a3, a2
.LBE405:
.LBE404:
	.loc 1 58 0
	add.n	a6, a5, a10
	xor	a3, a3, a8
	xor	a7, a7, a11
.LVL140:
	movi.n	a2, 1
	bltu	a6, a5, .L40
	movi.n	a2, 0
.L40:
	add.n	a12, a13, a12
.LVL141:
	add.n	a12, a2, a12
.LVL142:
.LBB406:
.LBB407:
	.loc 2 21 0
	srli	a4, a5, 15
	slli	a2, a13, 17
	or	a4, a4, a2
	slli	a5, a5, 17
.LVL143:
	srli	a2, a13, 15
	or	a2, a2, a5
.LBE407:
.LBE406:
	.loc 1 58 0
	xor	a2, a2, a6
	.loc 1 59 0
	add.n	a9, a8, a2
	.loc 1 58 0
	xor	a4, a4, a12
.LVL144:
	.loc 1 59 0
	movi.n	a5, 1
	bltu	a9, a8, .L41
	movi.n	a5, 0
.L41:
	add.n	a11, a11, a4
.LVL145:
	add.n	a11, a5, a11
.LVL146:
.LBB408:
.LBB409:
	.loc 2 21 0
	extui	a10, a2, 19, 13
	slli	a5, a4, 13
	slli	a2, a2, 13
.LVL147:
	extui	a4, a4, 19, 13
	or	a10, a10, a5
	or	a4, a4, a2
.LBE409:
.LBE408:
	.loc 1 59 0
	add.n	a8, a12, a3
	xor	a5, a4, a9
	xor	a10, a10, a11
.LVL148:
	movi.n	a2, 1
	bltu	a8, a12, .L42
	movi.n	a2, 0
.L42:
	add.n	a6, a6, a7
.LVL149:
	add.n	a6, a2, a6
.LVL150:
.LBB410:
.LBB411:
	.loc 2 21 0
	extui	a4, a3, 16, 16
	slli	a2, a7, 16
	slli	a3, a3, 16
.LVL151:
	extui	a7, a7, 16, 16
	or	a3, a7, a3
.LBE411:
.LBE410:
	.loc 1 59 0
	xor	a3, a3, a8
.LBB413:
.LBB412:
	.loc 2 21 0
	or	a4, a4, a2
.LBE412:
.LBE413:
	.loc 1 59 0
	add.n	a7, a11, a3
	xor	a4, a4, a6
.LVL152:
	movi.n	a2, 1
	bltu	a7, a11, .L43
	movi.n	a2, 0
.L43:
	add.n	a9, a9, a4
.LVL153:
	add.n	a9, a2, a9
.LVL154:
.LBB414:
.LBB415:
	.loc 2 21 0
	srli	a13, a3, 11
	slli	a2, a4, 21
	or	a13, a13, a2
	slli	a3, a3, 21
.LVL155:
	srli	a2, a4, 11
	or	a2, a2, a3
.LBE415:
.LBE414:
	.loc 1 59 0
	add.n	a8, a5, a8
.LVL156:
	xor	a2, a2, a7
	xor	a13, a13, a9
.LVL157:
	movi.n	a3, 1
	bltu	a8, a5, .L44
	movi.n	a3, 0
.L44:
	add.n	a6, a10, a6
	add.n	a6, a3, a6
.LVL158:
.LBB416:
.LBB417:
	.loc 2 21 0
	srli	a4, a5, 15
	slli	a3, a10, 17
	or	a11, a4, a3
	slli	a4, a5, 17
	srli	a3, a10, 15
	or	a3, a3, a4
.LVL159:
.LBE417:
.LBE416:
	.loc 1 59 0
	xor	a3, a3, a8
	xor	a4, a11, a6
.LVL160:
	xor	a5, a13, a4
.LVL161:
	xor	a10, a2, a3
	xor	a5, a5, a9
	xor	a10, a10, a7
	xor	a5, a5, a8
	xor	a10, a10, a6
	s32i.n	a10, sp, 0
	s32i.n	a5, sp, 4
.LVL162:
.LBB418:
.LBB419:
	.loc 2 64 0
	l32i.n	a10, sp, 20
.LBE419:
.LBE418:
	.loc 1 62 0
	movi	a5, 0xdd
.LBB423:
.LBB420:
	.loc 2 64 0
	movi.n	a12, 8
.LVL163:
	mov.n	a11, sp
.LVL164:
.LBE420:
.LBE423:
	.loc 1 62 0
	xor	a3, a5, a3
.LVL165:
.LBB424:
.LBB421:
	.loc 2 64 0
	s32i.n	a8, sp, 48
	s32i.n	a9, sp, 52
	s32i.n	a13, sp, 44
.LBE421:
.LBE424:
	.loc 1 63 0
	add.n	a5, a7, a3
.LBB425:
.LBB422:
	.loc 2 64 0
	call8	memcpy
.LVL166:
.LBE422:
.LBE425:
	.loc 1 63 0
	movi.n	a10, 1
	l32i.n	a8, sp, 48
	l32i.n	a9, sp, 52
	l32i.n	a13, sp, 44
	bltu	a5, a7, .L45
	movi.n	a10, 0
.L45:
	add.n	a9, a9, a4
	add.n	a9, a10, a9
.LVL167:
.LBB426:
.LBB427:
	.loc 2 21 0
	slli	a7, a4, 13
	extui	a10, a3, 19, 13
	extui	a4, a4, 19, 13
.LVL168:
	slli	a3, a3, 13
	or	a4, a4, a3
	or	a10, a10, a7
.LBE427:
.LBE426:
	.loc 1 63 0
	add.n	a6, a2, a6
	xor	a4, a4, a5
	xor	a10, a10, a9
.LVL169:
	movi.n	a3, 1
	bltu	a6, a2, .L46
	movi.n	a3, 0
.L46:
	add.n	a8, a13, a8
.LBB428:
.LBB429:
	.loc 2 21 0
	extui	a7, a2, 16, 16
.LBE429:
.LBE428:
	.loc 1 63 0
	add.n	a8, a3, a8
.LVL170:
.LBB432:
.LBB430:
	.loc 2 21 0
	slli	a2, a2, 16
.LVL171:
	slli	a3, a13, 16
	extui	a13, a13, 16, 16
	or	a2, a13, a2
.LBE430:
.LBE432:
	.loc 1 63 0
	xor	a2, a2, a6
.LBB433:
.LBB431:
	.loc 2 21 0
	or	a3, a7, a3
.LBE431:
.LBE433:
	.loc 1 63 0
	add.n	a11, a9, a2
	xor	a3, a3, a8
.LVL172:
	movi.n	a7, 1
	bltu	a11, a9, .L47
	movi.n	a7, 0
.L47:
	add.n	a5, a5, a3
.LVL173:
	add.n	a5, a7, a5
.LVL174:
.LBB434:
.LBB435:
	.loc 2 21 0
	srli	a13, a2, 11
	slli	a7, a3, 21
	or	a13, a13, a7
	slli	a2, a2, 21
.LVL175:
	srli	a7, a3, 11
	or	a7, a7, a2
.LBE435:
.LBE434:
	.loc 1 63 0
	add.n	a6, a4, a6
.LVL176:
	xor	a7, a7, a11
	xor	a13, a13, a5
.LVL177:
	movi.n	a2, 1
	bltu	a6, a4, .L48
	movi.n	a2, 0
.L48:
	add.n	a8, a10, a8
	add.n	a8, a2, a8
.LVL178:
.LBB436:
.LBB437:
	.loc 2 21 0
	srli	a3, a4, 15
	slli	a2, a10, 17
	slli	a4, a4, 17
.LVL179:
	srli	a10, a10, 15
	or	a4, a10, a4
	or	a3, a3, a2
.LBE437:
.LBE436:
	.loc 1 63 0
	xor	a2, a4, a6
	.loc 1 64 0
	add.n	a12, a11, a2
	.loc 1 63 0
	xor	a3, a3, a8
.LVL180:
	.loc 1 64 0
	movi.n	a9, 1
	bltu	a12, a11, .L49
	movi.n	a9, 0
.L49:
.LBB438:
.LBB439:
	.loc 2 21 0
	extui	a11, a2, 19, 13
.LVL181:
	slli	a4, a3, 13
.LBE439:
.LBE438:
	.loc 1 64 0
	add.n	a5, a5, a3
.LBB442:
.LBB440:
	.loc 2 21 0
	or	a11, a11, a4
	slli	a2, a2, 13
.LVL182:
	extui	a4, a3, 19, 13
.LBE440:
.LBE442:
	.loc 1 64 0
	add.n	a9, a9, a5
.LVL183:
.LBB443:
.LBB441:
	.loc 2 21 0
	or	a4, a4, a2
.LBE441:
.LBE443:
	.loc 1 64 0
	add.n	a10, a8, a7
	xor	a4, a4, a12
	xor	a11, a11, a9
.LVL184:
	movi.n	a5, 1
	bltu	a10, a8, .L50
	movi.n	a5, 0
.L50:
	add.n	a6, a6, a13
.LVL185:
.LBB444:
.LBB445:
	.loc 2 21 0
	extui	a3, a7, 16, 16
	slli	a2, a13, 16
	slli	a7, a7, 16
.LVL186:
	extui	a13, a13, 16, 16
	or	a13, a13, a7
.LBE445:
.LBE444:
	.loc 1 64 0
	xor	a13, a13, a10
	add.n	a6, a5, a6
.LVL187:
.LBB447:
.LBB446:
	.loc 2 21 0
	or	a2, a3, a2
.LBE446:
.LBE447:
	.loc 1 64 0
	add.n	a8, a9, a13
	xor	a2, a2, a6
.LVL188:
	movi.n	a14, 1
	bltu	a8, a9, .L51
	movi.n	a14, 0
.L51:
.LBB448:
.LBB449:
	.loc 2 21 0
	srli	a7, a13, 11
	slli	a3, a2, 21
	or	a7, a7, a3
.LBE449:
.LBE448:
	.loc 1 64 0
	add.n	a12, a12, a2
.LVL189:
.LBB452:
.LBB450:
	.loc 2 21 0
	srli	a3, a2, 11
	slli	a13, a13, 21
.LVL190:
.LBE450:
.LBE452:
	.loc 1 64 0
	add.n	a14, a14, a12
.LVL191:
.LBB453:
.LBB451:
	.loc 2 21 0
	or	a3, a3, a13
.LBE451:
.LBE453:
	.loc 1 64 0
	add.n	a10, a4, a10
.LVL192:
	xor	a3, a3, a8
	xor	a7, a7, a14
.LVL193:
	movi.n	a5, 1
	bltu	a10, a4, .L52
	movi.n	a5, 0
.L52:
	add.n	a6, a11, a6
	add.n	a5, a5, a6
.LVL194:
.LBB454:
.LBB455:
	.loc 2 21 0
	slli	a2, a11, 17
	srli	a6, a4, 15
	srli	a11, a11, 15
.LVL195:
	slli	a4, a4, 17
	or	a4, a11, a4
.LBE455:
.LBE454:
	.loc 1 64 0
	xor	a4, a4, a10
.LBB457:
.LBB456:
	.loc 2 21 0
	or	a2, a6, a2
.LBE456:
.LBE457:
	.loc 1 65 0
	add.n	a12, a8, a4
	.loc 1 64 0
	xor	a2, a2, a5
.LVL196:
	.loc 1 65 0
	movi.n	a6, 1
	bltu	a12, a8, .L53
	movi.n	a6, 0
.L53:
	add.n	a14, a14, a2
.LVL197:
.LBB458:
.LBB459:
	.loc 2 21 0
	extui	a9, a4, 19, 13
	slli	a8, a2, 13
	slli	a4, a4, 13
.LVL198:
	extui	a2, a2, 19, 13
.LBE459:
.LBE458:
	.loc 1 65 0
	add.n	a6, a6, a14
.LVL199:
.LBB461:
.LBB460:
	.loc 2 21 0
	or	a8, a9, a8
	or	a2, a2, a4
.LBE460:
.LBE461:
	.loc 1 65 0
	add.n	a11, a5, a3
	xor	a2, a2, a12
	xor	a8, a8, a6
.LVL200:
	movi.n	a15, 1
	bltu	a11, a5, .L54
	movi.n	a15, 0
.L54:
	add.n	a10, a10, a7
.LVL201:
.LBB462:
.LBB463:
	.loc 2 21 0
	extui	a5, a3, 16, 16
	slli	a4, a7, 16
	slli	a3, a3, 16
.LVL202:
	extui	a7, a7, 16, 16
	or	a3, a7, a3
.LBE463:
.LBE462:
	.loc 1 65 0
	xor	a3, a3, a11
	add.n	a15, a15, a10
.LVL203:
.LBB465:
.LBB464:
	.loc 2 21 0
	or	a4, a5, a4
.LBE464:
.LBE465:
	.loc 1 65 0
	add.n	a14, a6, a3
	xor	a4, a4, a15
.LVL204:
	movi.n	a13, 1
	bltu	a14, a6, .L55
	movi.n	a13, 0
.L55:
	add.n	a12, a12, a4
.LVL205:
	add.n	a13, a13, a12
.LVL206:
.LBB466:
.LBB467:
	.loc 2 21 0
	slli	a5, a4, 21
	srli	a12, a3, 11
	srli	a7, a4, 11
	slli	a3, a3, 21
.LVL207:
	or	a12, a12, a5
	or	a7, a7, a3
.LBE467:
.LBE466:
	.loc 1 65 0
	add.n	a11, a2, a11
.LVL208:
	xor	a7, a7, a14
	xor	a12, a12, a13
.LVL209:
	movi.n	a9, 1
	bltu	a11, a2, .L56
	movi.n	a9, 0
.L56:
.LBB468:
.LBB469:
	.loc 2 21 0
	slli	a3, a8, 17
.LBE469:
.LBE468:
	.loc 1 65 0
	add.n	a15, a8, a15
.LBB472:
.LBB470:
	.loc 2 21 0
	srli	a4, a2, 15
	srli	a8, a8, 15
.LVL210:
	slli	a2, a2, 17
	or	a2, a8, a2
.LBE470:
.LBE472:
	.loc 1 65 0
	xor	a8, a2, a11
.LBB473:
.LBB471:
	.loc 2 21 0
	or	a4, a4, a3
.LBE471:
.LBE473:
	.loc 1 65 0
	add.n	a9, a9, a15
.LVL211:
	.loc 1 66 0
	add.n	a3, a14, a8
	.loc 1 65 0
	xor	a4, a4, a9
.LVL212:
	.loc 1 66 0
	movi.n	a10, 1
	bltu	a3, a14, .L57
	movi.n	a10, 0
.L57:
	add.n	a13, a13, a4
.LVL213:
	add.n	a13, a10, a13
.LVL214:
.LBB474:
.LBB475:
	.loc 2 21 0
	extui	a5, a4, 19, 13
	extui	a10, a8, 19, 13
	slli	a8, a8, 13
.LVL215:
	slli	a2, a4, 13
.LVL216:
	or	a4, a5, a8
	or	a10, a10, a2
.LBE475:
.LBE474:
	.loc 1 66 0
	xor	a4, a4, a3
	add.n	a3, a9, a7
.LVL217:
	xor	a10, a10, a13
.LVL218:
	movi.n	a5, 1
	bltu	a3, a9, .L58
	movi.n	a5, 0
.L58:
	add.n	a11, a11, a12
.LVL219:
.LBB476:
.LBB477:
	.loc 2 21 0
	slli	a2, a12, 16
.LBE477:
.LBE476:
	.loc 1 66 0
	add.n	a6, a5, a11
.LVL220:
.LBB480:
.LBB478:
	.loc 2 21 0
	extui	a12, a12, 16, 16
.LVL221:
	extui	a5, a7, 16, 16
.LBE478:
.LBE480:
	.loc 1 66 0
	add.n	a9, a4, a3
.LBB481:
.LBB479:
	.loc 2 21 0
	slli	a7, a7, 16
	or	a5, a5, a2
	or	a7, a12, a7
.LVL222:
.LBE479:
.LBE481:
	.loc 1 66 0
	movi.n	a2, 1
	bltu	a9, a4, .L59
	movi.n	a2, 0
.L59:
	add.n	a8, a10, a6
	add.n	a8, a2, a8
.LVL223:
	xor	a5, a5, a6
.LVL224:
	xor	a2, a7, a3
	srli	a6, a2, 11
	slli	a3, a5, 21
	or	a3, a6, a3
	srli	a5, a5, 11
	slli	a2, a2, 21
	xor	a6, a3, a8
	or	a2, a5, a2
	srli	a3, a4, 15
	slli	a5, a10, 17
	or	a5, a3, a5
	srli	a10, a10, 15
.LVL225:
	slli	a3, a4, 17
	or	a3, a10, a3
	xor	a2, a2, a9
	xor	a2, a2, a3
	xor	a2, a2, a8
	s32i.n	a2, sp, 8
.LBB482:
.LBB483:
	.loc 2 64 0
	l32i.n	a2, sp, 20
	movi.n	a12, 8
.LVL226:
	xor	a3, a6, a5
	xor	a9, a3, a9
.LVL227:
	add.n	a10, a2, a12
.LVL228:
	add.n	a11, sp, a12
	s32i.n	a9, sp, 12
.LVL229:
	call8	memcpy
.LVL230:
.LBE483:
.LBE482:
	.loc 1 71 0
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	crypto_shorthash_siphashx24, .-crypto_shorthash_siphashx24
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
	.uleb128 0x60
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.Ldebug_ranges0+0x2e8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x12
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x64
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x13
	.4byte	0x7a
	.byte	0x3
	.4byte	0xca
	.uleb128 0x7
	.string	"x"
	.byte	0x2
	.byte	0x13
	.4byte	0xca
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.byte	0x13
	.4byte	0xcf
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x28
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0xf5
	.uleb128 0x7
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0xf5
	.uleb128 0x7
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x28
	.4byte	0x7a
	.byte	0x3
	.4byte	0x120
	.uleb128 0x7
	.string	"src"
	.byte	0x2
	.byte	0x28
	.4byte	0x120
	.uleb128 0xa
	.string	"w"
	.byte	0x2
	.byte	0x2b
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x126
	.uleb128 0x8
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6
	.4byte	0x28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x994
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x6
	.4byte	0x9a
	.4byte	.LLST0
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0x6
	.4byte	0x994
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7
	.4byte	0x21
	.4byte	.LLST2
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x7
	.4byte	0x994
	.4byte	.LLST3
	.uleb128 0xe
	.string	"v0"
	.byte	0x1
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST4
	.uleb128 0xe
	.string	"v1"
	.byte	0x1
	.byte	0xa
	.4byte	0x7a
	.4byte	.LLST5
	.uleb128 0xe
	.string	"v2"
	.byte	0x1
	.byte	0xb
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0xe
	.string	"v3"
	.byte	0x1
	.byte	0xc
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xd
	.4byte	0x7a
	.uleb128 0xa
	.string	"k0"
	.byte	0x1
	.byte	0xe
	.4byte	0x7a
	.uleb128 0xa
	.string	"k1"
	.byte	0x1
	.byte	0xf
	.4byte	0x7a
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x10
	.4byte	0x7a
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x11
	.4byte	0x120
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x12
	.4byte	0xcf
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	0xfb
	.4byte	.LBB304
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe
	.4byte	0x241
	.uleb128 0x11
	.4byte	0x10b
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	0x116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xfb
	.4byte	.LBB309
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xf
	.4byte	0x289
	.uleb128 0x11
	.4byte	0x10b
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x13
	.4byte	0x116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xfb
	.4byte	.LBB320
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x1a
	.4byte	0x2d3
	.uleb128 0x11
	.4byte	0x10b
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x13
	.4byte	0x116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB324
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x1c
	.4byte	0x2f9
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST14
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB328
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x1c
	.4byte	0x31f
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST16
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB332
	.4byte	.LBE332-.LBB332
	.byte	0x1
	.byte	0x1c
	.4byte	0x345
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST18
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB334
	.4byte	.LBE334-.LBB334
	.byte	0x1
	.byte	0x1c
	.4byte	0x36b
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST20
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB336
	.4byte	.LBE336-.LBB336
	.byte	0x1
	.byte	0x1d
	.4byte	0x391
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST21
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST22
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB338
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x1d
	.4byte	0x3b7
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST24
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB342
	.4byte	.LBE342-.LBB342
	.byte	0x1
	.byte	0x1d
	.4byte	0x3dd
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST25
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST26
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB344
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x1d
	.4byte	0x403
	.uleb128 0x11
	.4byte	0xc0
	.4byte	.LLST27
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST28
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB348
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x34
	.4byte	0x426
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST29
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB352
	.4byte	.LBE352-.LBB352
	.byte	0x1
	.byte	0x34
	.4byte	0x449
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST30
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB354
	.4byte	.LBE354-.LBB354
	.byte	0x1
	.byte	0x34
	.4byte	0x46c
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST31
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB356
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x34
	.4byte	0x48f
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST32
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB360
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0x35
	.4byte	0x4ae
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB364
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x35
	.4byte	0x4d1
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST33
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB368
	.4byte	.LBE368-.LBB368
	.byte	0x1
	.byte	0x35
	.4byte	0x4f4
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST34
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB370
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x35
	.4byte	0x513
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB374
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0x38
	.4byte	0x532
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB378
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.byte	0x38
	.4byte	0x551
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB384
	.4byte	.LBE384-.LBB384
	.byte	0x1
	.byte	0x38
	.4byte	0x574
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST35
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB386
	.4byte	.LBE386-.LBB386
	.byte	0x1
	.byte	0x38
	.4byte	0x597
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST36
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB388
	.4byte	.LBE388-.LBB388
	.byte	0x1
	.byte	0x39
	.4byte	0x5ba
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST37
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB390
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0x39
	.4byte	0x5dd
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST38
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB394
	.4byte	.LBE394-.LBB394
	.byte	0x1
	.byte	0x39
	.4byte	0x600
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST39
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB396
	.4byte	.LBE396-.LBB396
	.byte	0x1
	.byte	0x39
	.4byte	0x623
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST40
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB398
	.4byte	.LBE398-.LBB398
	.byte	0x1
	.byte	0x3a
	.4byte	0x646
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST41
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB400
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x3a
	.4byte	0x669
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST42
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB404
	.4byte	.LBE404-.LBB404
	.byte	0x1
	.byte	0x3a
	.4byte	0x68c
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST43
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB406
	.4byte	.LBE406-.LBB406
	.byte	0x1
	.byte	0x3a
	.4byte	0x6af
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST44
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB408
	.4byte	.LBE408-.LBB408
	.byte	0x1
	.byte	0x3b
	.4byte	0x6d2
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST45
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB410
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0x3b
	.4byte	0x6f5
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST46
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB414
	.4byte	.LBE414-.LBB414
	.byte	0x1
	.byte	0x3b
	.4byte	0x718
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST47
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB416
	.4byte	.LBE416-.LBB416
	.byte	0x1
	.byte	0x3b
	.4byte	0x73b
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST48
	.byte	0
	.uleb128 0x10
	.4byte	0xd4
	.4byte	.LBB418
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x3d
	.4byte	0x77f
	.uleb128 0x11
	.4byte	0xeb
	.4byte	.LLST49
	.uleb128 0x19
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.4byte	.LVL166
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB426
	.4byte	.LBE426-.LBB426
	.byte	0x1
	.byte	0x3f
	.4byte	0x7a2
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST50
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB428
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.byte	0x3f
	.4byte	0x7c5
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST51
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB434
	.4byte	.LBE434-.LBB434
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e8
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST52
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB436
	.4byte	.LBE436-.LBB436
	.byte	0x1
	.byte	0x3f
	.4byte	0x80b
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST53
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB438
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.byte	0x40
	.4byte	0x82a
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB444
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.byte	0x40
	.4byte	0x849
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB448
	.4byte	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x40
	.4byte	0x868
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB454
	.4byte	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0x40
	.4byte	0x88b
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST54
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB458
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.byte	0x41
	.4byte	0x8aa
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB462
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.byte	0x41
	.4byte	0x8c9
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB466
	.4byte	.LBE466-.LBB466
	.byte	0x1
	.byte	0x41
	.4byte	0x8ec
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST55
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB468
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0x41
	.4byte	0x90b
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB474
	.4byte	.LBE474-.LBB474
	.byte	0x1
	.byte	0x42
	.4byte	0x92e
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST56
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB476
	.4byte	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.byte	0x42
	.4byte	0x951
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST57
	.byte	0
	.uleb128 0x1a
	.4byte	0xd4
	.4byte	.LBB482
	.4byte	.LBE482-.LBB482
	.byte	0x1
	.byte	0x44
	.uleb128 0x19
	.4byte	0xeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.4byte	0xe0
	.4byte	.LLST58
	.uleb128 0x14
	.4byte	.LVL230
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x8
	.4byte	0x4f
	.uleb128 0x1b
	.4byte	.LASF23
	.4byte	.LASF23
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
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
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x736f6d6570736575
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL106
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL123
	.4byte	.LVL130
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL138
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL154
	.4byte	.LVL166-1
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL174
	.4byte	.LVL181
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL191
	.4byte	.LVL197
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL206
	.4byte	.LVL213
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL214
	.4byte	.LVL217
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x646f72616e646f83
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL36
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL101
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL117
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL133
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL148
	.4byte	.LVL159
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL169
	.4byte	.LVL179
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL184
	.4byte	.LVL195
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200
	.4byte	.LVL210
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL218
	.4byte	.LVL223
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x6c7967656e657261
	.4byte	.LVL11
	.4byte	.LVL16-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LVL90
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL119
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL150
	.4byte	.LVL156
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL170
	.4byte	.LVL176
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL187
	.4byte	.LVL192
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL203
	.4byte	.LVL208
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x7465646279746573
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL91
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL125
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL140
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL157
	.4byte	.LVL166-1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL177
	.4byte	.LVL186
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL193
	.4byte	.LVL202
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL209
	.4byte	.LVL221
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16-1
	.4byte	.LVL163
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL166-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL166-1
	.4byte	.LVL226
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL230-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL230-1
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL13
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x45
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x41
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x45
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x41
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL164
	.4byte	.LVL166-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL166-1
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL223
	.4byte	.LVL228
	.2byte	0x7
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL230-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL230-1
	.4byte	.LFE12
	.2byte	0x7
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB304
	.4byte	.LBE304
	.4byte	.LBB308
	.4byte	.LBE308
	.4byte	.LBB316
	.4byte	.LBE316
	.4byte	0
	.4byte	0
	.4byte	.LBB309
	.4byte	.LBE309
	.4byte	.LBB315
	.4byte	.LBE315
	.4byte	.LBB317
	.4byte	.LBE317
	.4byte	.LBB318
	.4byte	.LBE318
	.4byte	.LBB319
	.4byte	.LBE319
	.4byte	0
	.4byte	0
	.4byte	.LBB320
	.4byte	.LBE320
	.4byte	.LBB323
	.4byte	.LBE323
	.4byte	0
	.4byte	0
	.4byte	.LBB324
	.4byte	.LBE324
	.4byte	.LBB327
	.4byte	.LBE327
	.4byte	0
	.4byte	0
	.4byte	.LBB328
	.4byte	.LBE328
	.4byte	.LBB331
	.4byte	.LBE331
	.4byte	0
	.4byte	0
	.4byte	.LBB338
	.4byte	.LBE338
	.4byte	.LBB341
	.4byte	.LBE341
	.4byte	0
	.4byte	0
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	.LBB347
	.4byte	.LBE347
	.4byte	0
	.4byte	0
	.4byte	.LBB348
	.4byte	.LBE348
	.4byte	.LBB351
	.4byte	.LBE351
	.4byte	0
	.4byte	0
	.4byte	.LBB356
	.4byte	.LBE356
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	0
	.4byte	0
	.4byte	.LBB360
	.4byte	.LBE360
	.4byte	.LBB363
	.4byte	.LBE363
	.4byte	0
	.4byte	0
	.4byte	.LBB364
	.4byte	.LBE364
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	0
	.4byte	0
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	.LBB373
	.4byte	.LBE373
	.4byte	0
	.4byte	0
	.4byte	.LBB374
	.4byte	.LBE374
	.4byte	.LBB377
	.4byte	.LBE377
	.4byte	0
	.4byte	0
	.4byte	.LBB378
	.4byte	.LBE378
	.4byte	.LBB382
	.4byte	.LBE382
	.4byte	.LBB383
	.4byte	.LBE383
	.4byte	0
	.4byte	0
	.4byte	.LBB390
	.4byte	.LBE390
	.4byte	.LBB393
	.4byte	.LBE393
	.4byte	0
	.4byte	0
	.4byte	.LBB400
	.4byte	.LBE400
	.4byte	.LBB403
	.4byte	.LBE403
	.4byte	0
	.4byte	0
	.4byte	.LBB410
	.4byte	.LBE410
	.4byte	.LBB413
	.4byte	.LBE413
	.4byte	0
	.4byte	0
	.4byte	.LBB418
	.4byte	.LBE418
	.4byte	.LBB423
	.4byte	.LBE423
	.4byte	.LBB424
	.4byte	.LBE424
	.4byte	.LBB425
	.4byte	.LBE425
	.4byte	0
	.4byte	0
	.4byte	.LBB428
	.4byte	.LBE428
	.4byte	.LBB432
	.4byte	.LBE432
	.4byte	.LBB433
	.4byte	.LBE433
	.4byte	0
	.4byte	0
	.4byte	.LBB438
	.4byte	.LBE438
	.4byte	.LBB442
	.4byte	.LBE442
	.4byte	.LBB443
	.4byte	.LBE443
	.4byte	0
	.4byte	0
	.4byte	.LBB444
	.4byte	.LBE444
	.4byte	.LBB447
	.4byte	.LBE447
	.4byte	0
	.4byte	0
	.4byte	.LBB448
	.4byte	.LBE448
	.4byte	.LBB452
	.4byte	.LBE452
	.4byte	.LBB453
	.4byte	.LBE453
	.4byte	0
	.4byte	0
	.4byte	.LBB454
	.4byte	.LBE454
	.4byte	.LBB457
	.4byte	.LBE457
	.4byte	0
	.4byte	0
	.4byte	.LBB458
	.4byte	.LBE458
	.4byte	.LBB461
	.4byte	.LBE461
	.4byte	0
	.4byte	0
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	.LBB465
	.4byte	.LBE465
	.4byte	0
	.4byte	0
	.4byte	.LBB468
	.4byte	.LBE468
	.4byte	.LBB472
	.4byte	.LBE472
	.4byte	.LBB473
	.4byte	.LBE473
	.4byte	0
	.4byte	0
	.4byte	.LBB476
	.4byte	.LBE476
	.4byte	.LBB480
	.4byte	.LBE480
	.4byte	.LBB481
	.4byte	.LBE481
	.4byte	0
	.4byte	0
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"char"
.LASF7:
	.string	"__uint8_t"
.LASF15:
	.string	"rotl64"
.LASF10:
	.string	"uint64_t"
.LASF22:
	.string	"crypto_shorthash_siphashx24"
.LASF18:
	.string	"left"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -Os -std=gnu99 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"unsigned char"
.LASF21:
	.string	"store64_le"
.LASF13:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF17:
	.string	"inlen"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF16:
	.string	"load64_le"
.LASF12:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"memcpy"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF11:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphashx24_ref.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
