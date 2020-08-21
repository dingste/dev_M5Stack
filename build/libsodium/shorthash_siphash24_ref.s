	.file	"shorthash_siphash24_ref.c"
	.text
.Ltext0:
	.section	.text.crypto_shorthash_siphash24,"ax",@progbits
	.literal_position
	.literal .LC0, 2037671283
	.literal .LC1, 1952801890
	.literal .LC2, 1852142177
	.literal .LC3, 1819895653
	.literal .LC4, 1852075885
	.literal .LC5, 1685025377
	.literal .LC6, 1886610805
	.literal .LC7, 1936682341
	.literal .LC8, .L14
	.align	4
	.global	crypto_shorthash_siphash24
	.type	crypto_shorthash_siphash24, @function
crypto_shorthash_siphash24:
.LFB12:
	.file 1 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphash24_ref.c"
	.loc 1 8 0
.LVL0:
	entry	sp, 96
.LCFI0:
.LVL1:
.LBB204:
.LBB205:
	.file 2 "/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 44 0
	mov.n	a11, a6
	movi.n	a12, 8
	mov.n	a10, sp
.LBE205:
.LBE204:
	.loc 1 8 0
	s32i.n	a2, sp, 32
	s32i.n	a3, sp, 16
.LBB208:
.LBB206:
	.loc 2 44 0
	call8	memcpy
.LVL2:
	.loc 2 45 0
	l32i.n	a15, sp, 0
.LBE206:
.LBE208:
.LBB209:
.LBB210:
	.loc 2 44 0
	movi.n	a12, 8
	add.n	a11, a6, a12
	mov.n	a10, sp
.LBE210:
.LBE209:
	.loc 1 8 0
	mov.n	a2, a4
.LVL3:
.LBB215:
.LBB211:
	.loc 2 44 0
	s32i.n	a15, sp, 52
.LBE211:
.LBE215:
.LBB216:
.LBB207:
	.loc 2 45 0
	l32i.n	a4, sp, 4
.LVL4:
.LBE207:
.LBE216:
.LBB217:
.LBB212:
	.loc 2 44 0
	call8	memcpy
.LVL5:
.LBE212:
.LBE217:
	.loc 1 18 0
	movi.n	a13, -8
	l32i.n	a5, sp, 16
	and	a13, a13, a2
.LBB218:
.LBB213:
	.loc 2 45 0
	l32i.n	a3, sp, 0
.LVL6:
.LBE213:
.LBE218:
	.loc 1 24 0
	l32r	a10, .LC4
	.loc 1 18 0
	add.n	a13, a5, a13
	.loc 1 21 0
	slli	a9, a2, 24
	.loc 1 19 0
	extui	a5, a2, 0, 3
	.loc 1 22 0
	l32r	a2, .LC0
.LBB219:
.LBB214:
	.loc 2 45 0
	l32i.n	a7, sp, 4
.LVL7:
.LBE214:
.LBE219:
	.loc 1 22 0
	xor	a2, a3, a2
	l32r	a6, .LC1
.LVL8:
	.loc 1 24 0
	xor	a3, a3, a10
	l32r	a10, .LC5
	.loc 1 23 0
	l32i.n	a15, sp, 52
	.loc 1 22 0
	xor	a6, a7, a6
	.loc 1 23 0
	l32r	a8, .LC2
	.loc 1 24 0
	xor	a7, a7, a10
	.loc 1 25 0
	l32r	a10, .LC6
	.loc 1 19 0
	s32i.n	a5, sp, 28
.LVL9:
	.loc 1 23 0
	xor	a8, a15, a8
	l32r	a5, .LC3
.LVL10:
	.loc 1 25 0
	xor	a15, a15, a10
	l32r	a10, .LC7
	.loc 1 23 0
	xor	a5, a4, a5
	.loc 1 21 0
	movi.n	a14, 0
.LVL11:
	.loc 1 25 0
	xor	a4, a4, a10
.LVL12:
	.loc 1 26 0
	j	.L2
.LVL13:
.L11:
.LBB220:
.LBB221:
	.loc 2 44 0
	l32i.n	a11, sp, 16
.LVL14:
	movi.n	a12, 8
.LVL15:
	mov.n	a10, sp
	s32i.n	a8, sp, 40
	s32i.n	a9, sp, 48
	s32i.n	a13, sp, 36
	s32i.n	a14, sp, 44
	s32i.n	a15, sp, 52
	call8	memcpy
.LVL16:
	.loc 2 45 0
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
.LBE221:
.LBE220:
	.loc 1 29 0
	l32i.n	a15, sp, 52
.LBB223:
.LBB222:
	.loc 2 45 0
	s32i.n	a10, sp, 20
	s32i.n	a11, sp, 24
.LBE222:
.LBE223:
	.loc 1 28 0
	xor	a2, a2, a10
.LVL17:
	.loc 1 29 0
	add.n	a10, a15, a3
	.loc 1 28 0
	xor	a6, a6, a11
.LVL18:
	.loc 1 29 0
	l32i.n	a8, sp, 40
	movi.n	a11, 1
	l32i.n	a9, sp, 48
	l32i.n	a13, sp, 36
	l32i.n	a14, sp, 44
	bltu	a10, a15, .L3
	movi.n	a11, 0
.L3:
.LBB224:
.LBB225:
	.loc 2 21 0
	extui	a12, a3, 19, 13
.LBE225:
.LBE224:
	.loc 1 29 0
	add.n	a4, a11, a4
.LVL19:
.LBB227:
.LBB226:
	.loc 2 21 0
	slli	a3, a3, 13
.LVL20:
	slli	a11, a7, 13
	extui	a7, a7, 19, 13
	or	a11, a12, a11
	or	a3, a7, a3
.LBE226:
.LBE227:
	.loc 1 29 0
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
.LBB228:
.LBB229:
	.loc 2 21 0
	extui	a8, a2, 16, 16
	slli	a5, a6, 16
	slli	a2, a2, 16
.LVL23:
	extui	a6, a6, 16, 16
	or	a2, a6, a2
.LBE229:
.LBE228:
	.loc 1 29 0
	xor	a2, a7, a2
.LBB231:
.LBB230:
	.loc 2 21 0
	or	a8, a8, a5
.LBE230:
.LBE231:
	.loc 1 29 0
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
.LBB232:
.LBB233:
	.loc 2 21 0
	srli	a6, a2, 11
	slli	a5, a8, 21
	slli	a2, a2, 21
.LVL27:
	srli	a8, a8, 11
	or	a8, a8, a2
	or	a6, a6, a5
.LBE233:
.LBE232:
	.loc 1 29 0
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
.LBB234:
.LBB235:
	.loc 2 21 0
	srli	a12, a3, 15
	slli	a2, a11, 17
	slli	a3, a3, 17
.LVL31:
	srli	a11, a11, 15
	or	a11, a11, a3
	or	a12, a12, a2
.LBE235:
.LBE234:
	.loc 1 29 0
	xor	a2, a7, a11
	.loc 1 30 0
	add.n	a11, a4, a2
	.loc 1 29 0
	xor	a12, a5, a12
.LVL32:
	.loc 1 30 0
	movi.n	a3, 1
	bltu	a11, a4, .L7
	movi.n	a3, 0
.L7:
	add.n	a15, a10, a12
	add.n	a15, a3, a15
.LVL33:
.LBB236:
.LBB237:
	.loc 2 21 0
	extui	a4, a2, 19, 13
	slli	a3, a12, 13
	slli	a2, a2, 13
.LVL34:
	extui	a12, a12, 19, 13
	or	a12, a12, a2
	or	a3, a4, a3
.LBE237:
.LBE236:
	.loc 1 30 0
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
.LBB238:
.LBB239:
	.loc 2 21 0
	extui	a4, a8, 16, 16
	slli	a2, a6, 16
	slli	a8, a8, 16
.LVL38:
	extui	a6, a6, 16, 16
	or	a8, a6, a8
.LBE239:
.LBE238:
	.loc 1 30 0
	xor	a8, a5, a8
.LBB241:
.LBB240:
	.loc 2 21 0
	or	a2, a4, a2
.LBE240:
.LBE241:
	.loc 1 30 0
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
.LBB242:
.LBB243:
	.loc 2 21 0
	srli	a11, a8, 11
	slli	a6, a2, 21
	slli	a8, a8, 21
.LVL42:
	srli	a2, a2, 11
	or	a6, a11, a6
	or	a2, a2, a8
.LBE243:
.LBE242:
	.loc 1 30 0
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
.LBB244:
.LBB245:
	.loc 2 21 0
	slli	a7, a3, 17
	srli	a11, a10, 15
	srli	a3, a3, 15
.LVL46:
	slli	a10, a10, 17
	or	a3, a3, a10
.LBE245:
.LBE244:
	.loc 1 31 0
	l32i.n	a10, sp, 20
.LBB247:
.LBB246:
	.loc 2 21 0
	or	a7, a11, a7
.LBE246:
.LBE247:
	.loc 1 31 0
	xor	a15, a10, a15
.LVL47:
	.loc 1 26 0
	l32i.n	a10, sp, 16
	.loc 1 31 0
	l32i.n	a11, sp, 24
	.loc 1 26 0
	addi.n	a10, a10, 8
	.loc 1 30 0
	xor	a3, a5, a3
	xor	a7, a8, a7
.LVL48:
	.loc 1 31 0
	xor	a4, a11, a4
.LVL49:
	.loc 1 26 0
	s32i.n	a10, sp, 16
.LVL50:
.L2:
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32i.n	a11, sp, 16
	add.n	a4, a4, a7
.LVL51:
	bne	a11, a13, .L11
	.loc 1 33 0 is_stmt 1
	l32i.n	a11, sp, 28
	addi.n	a10, a11, -1
	bgeui	a10, 7, .L12
	l32r	a11, .LC8
	addx4	a10, a10, a11
	l32i.n	a10, a10, 0
	jx	a10
	.section	.rodata.crypto_shorthash_siphash24,"a",@progbits
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
	.section	.text.crypto_shorthash_siphash24
.L20:
	.loc 1 35 0
	l8ui	a10, a13, 6
	slli	a10, a10, 16
	or	a9, a9, a10
.LVL52:
.L19:
	.loc 1 37 0
	l8ui	a10, a13, 5
	slli	a10, a10, 8
	or	a9, a9, a10
.LVL53:
.L18:
	.loc 1 39 0
	l8ui	a10, a13, 4
	or	a9, a9, a10
.LVL54:
.L17:
	.loc 1 41 0
	l8ui	a14, a13, 3
.LVL55:
	slli	a14, a14, 24
.LVL56:
.L16:
	.loc 1 43 0
	l8ui	a10, a13, 2
	slli	a10, a10, 16
.LVL57:
	or	a14, a14, a10
.LVL58:
.L15:
	.loc 1 45 0
	l8ui	a10, a13, 1
	slli	a10, a10, 8
.LVL59:
	or	a14, a14, a10
.LVL60:
.L13:
	.loc 1 47 0
	l8ui	a10, a13, 0
	or	a14, a14, a10
.LVL61:
.L12:
	.loc 1 53 0
	add.n	a10, a15, a3
	.loc 1 52 0
	xor	a2, a2, a14
.LVL62:
	xor	a6, a6, a9
.LVL63:
	.loc 1 53 0
	movi.n	a11, 1
	bltu	a10, a15, .L21
	movi.n	a11, 0
.L21:
.LBB248:
.LBB249:
	.loc 2 21 0
	extui	a12, a3, 19, 13
.LBE249:
.LBE248:
	.loc 1 53 0
	add.n	a4, a11, a4
.LVL64:
.LBB251:
.LBB250:
	.loc 2 21 0
	slli	a3, a3, 13
.LVL65:
	slli	a11, a7, 13
	extui	a7, a7, 19, 13
	or	a11, a12, a11
	or	a3, a7, a3
.LBE250:
.LBE251:
	.loc 1 53 0
	add.n	a7, a8, a2
	xor	a3, a3, a10
	xor	a11, a11, a4
.LVL66:
	movi.n	a12, 1
	bltu	a7, a8, .L22
	movi.n	a12, 0
.L22:
	add.n	a5, a5, a6
.LVL67:
	add.n	a5, a12, a5
.LVL68:
.LBB252:
.LBB253:
	.loc 2 21 0
	slli	a8, a6, 16
	extui	a12, a2, 16, 16
	extui	a6, a6, 16, 16
.LVL69:
	slli	a2, a2, 16
	or	a6, a6, a2
.LBE253:
.LBE252:
	.loc 1 53 0
	xor	a6, a6, a7
.LBB255:
.LBB254:
	.loc 2 21 0
	or	a8, a12, a8
.LBE254:
.LBE255:
	.loc 1 53 0
	add.n	a13, a4, a6
	xor	a8, a8, a5
.LVL70:
	movi.n	a2, 1
	bltu	a13, a4, .L23
	movi.n	a2, 0
.L23:
	add.n	a10, a10, a8
.LVL71:
	add.n	a10, a2, a10
.LVL72:
.LBB256:
.LBB257:
	.loc 2 21 0
	srli	a12, a6, 11
	slli	a2, a8, 21
	or	a12, a12, a2
	slli	a6, a6, 21
.LVL73:
	srli	a2, a8, 11
	or	a2, a2, a6
.LBE257:
.LBE256:
	.loc 1 53 0
	add.n	a4, a3, a7
	xor	a2, a2, a13
	xor	a12, a12, a10
.LVL74:
	movi.n	a8, 1
	bltu	a4, a3, .L24
	movi.n	a8, 0
.L24:
	add.n	a5, a11, a5
.LVL75:
.LBB258:
.LBB259:
	.loc 2 21 0
	srli	a6, a3, 15
.LBE259:
.LBE258:
	.loc 1 53 0
	add.n	a8, a8, a5
.LVL76:
.LBB262:
.LBB260:
	.loc 2 21 0
	slli	a3, a3, 17
.LVL77:
	slli	a5, a11, 17
	srli	a11, a11, 15
	or	a3, a11, a3
.LBE260:
.LBE262:
	.loc 1 53 0
	xor	a3, a3, a4
.LBB263:
.LBB261:
	.loc 2 21 0
	or	a5, a6, a5
.LBE261:
.LBE263:
	.loc 1 54 0
	add.n	a15, a13, a3
	.loc 1 53 0
	xor	a6, a5, a8
.LVL78:
	.loc 1 54 0
	movi.n	a11, 1
	bltu	a15, a13, .L25
	movi.n	a11, 0
.L25:
.LBB264:
.LBB265:
	.loc 2 21 0
	extui	a7, a3, 19, 13
.LBE265:
.LBE264:
	.loc 1 54 0
	add.n	a10, a10, a6
.LVL79:
.LBB268:
.LBB266:
	.loc 2 21 0
	slli	a5, a6, 13
	slli	a3, a3, 13
.LVL80:
	extui	a6, a6, 19, 13
	or	a5, a7, a5
.LBE266:
.LBE268:
	.loc 1 54 0
	add.n	a11, a11, a10
.LVL81:
.LBB269:
.LBB267:
	.loc 2 21 0
	or	a6, a6, a3
.LBE267:
.LBE269:
	.loc 1 54 0
	add.n	a13, a8, a2
	xor	a6, a6, a15
	xor	a5, a5, a11
.LVL82:
	movi.n	a7, 1
	bltu	a13, a8, .L26
	movi.n	a7, 0
.L26:
	add.n	a4, a4, a12
.LVL83:
	add.n	a4, a7, a4
.LVL84:
.LBB270:
.LBB271:
	.loc 2 21 0
	slli	a3, a12, 16
	extui	a7, a2, 16, 16
	extui	a12, a12, 16, 16
.LVL85:
	slli	a2, a2, 16
	or	a2, a12, a2
.LBE271:
.LBE270:
	.loc 1 54 0
	xor	a2, a2, a13
.LBB273:
.LBB272:
	.loc 2 21 0
	or	a7, a7, a3
.LBE272:
.LBE273:
	.loc 1 54 0
	add.n	a12, a11, a2
	xor	a7, a7, a4
.LVL86:
	movi.n	a10, 1
	bltu	a12, a11, .L27
	movi.n	a10, 0
.L27:
.LBB274:
.LBB275:
	.loc 2 21 0
	slli	a3, a7, 21
	srli	a8, a2, 11
.LBE275:
.LBE274:
	.loc 1 54 0
	add.n	a15, a15, a7
.LVL87:
.LBB278:
.LBB276:
	.loc 2 21 0
	or	a8, a8, a3
	slli	a2, a2, 21
.LVL88:
	srli	a3, a7, 11
.LBE276:
.LBE278:
	.loc 1 54 0
	add.n	a10, a10, a15
.LVL89:
.LBB279:
.LBB277:
	.loc 2 21 0
	or	a3, a3, a2
.LBE277:
.LBE279:
	.loc 1 54 0
	add.n	a13, a6, a13
.LVL90:
	xor	a3, a3, a12
	xor	a8, a8, a10
.LVL91:
	movi.n	a7, 1
	bltu	a13, a6, .L28
	movi.n	a7, 0
.L28:
	add.n	a4, a5, a4
	add.n	a7, a7, a4
.LVL92:
.LBB280:
.LBB281:
	.loc 2 21 0
	slli	a2, a5, 17
	srli	a4, a6, 15
	srli	a5, a5, 15
.LVL93:
	slli	a6, a6, 17
	or	a5, a5, a6
.LBE281:
.LBE280:
	.loc 1 54 0
	xor	a5, a5, a13
	.loc 1 55 0
	xor	a12, a14, a12
.LVL94:
.LBB283:
.LBB282:
	.loc 2 21 0
	or	a2, a4, a2
.LBE282:
.LBE283:
	.loc 1 56 0
	movi	a11, 0xff
	.loc 1 57 0
	add.n	a12, a5, a12
	.loc 1 54 0
	xor	a2, a2, a7
.LVL95:
	.loc 1 55 0
	xor	a9, a9, a10
	.loc 1 56 0
	xor	a11, a11, a7
.LVL96:
	.loc 1 57 0
	movi.n	a4, 1
	bltu	a12, a5, .L29
	movi.n	a4, 0
.L29:
	add.n	a9, a2, a9
	add.n	a9, a4, a9
.LVL97:
.LBB284:
.LBB285:
	.loc 2 21 0
	extui	a10, a5, 19, 13
	slli	a4, a2, 13
	slli	a5, a5, 13
.LVL98:
	extui	a2, a2, 19, 13
	or	a10, a10, a4
	or	a2, a2, a5
.LBE285:
.LBE284:
	.loc 1 57 0
	add.n	a11, a3, a11
.LVL99:
	xor	a2, a2, a12
	xor	a10, a10, a9
.LVL100:
	movi.n	a15, 1
	bltu	a11, a3, .L30
	movi.n	a15, 0
.L30:
.LBB286:
.LBB287:
	.loc 2 21 0
	extui	a5, a3, 16, 16
	slli	a4, a8, 16
.LBE287:
.LBE286:
	.loc 1 57 0
	add.n	a13, a8, a13
.LVL101:
.LBB289:
.LBB288:
	.loc 2 21 0
	or	a4, a5, a4
	extui	a5, a8, 16, 16
	slli	a8, a3, 16
.LVL102:
	or	a5, a5, a8
.LBE288:
.LBE289:
	.loc 1 57 0
	xor	a5, a5, a11
	add.n	a15, a15, a13
.LVL103:
	add.n	a13, a9, a5
	xor	a3, a4, a15
.LVL104:
	movi.n	a14, 1
	bltu	a13, a9, .L31
	movi.n	a14, 0
.L31:
	add.n	a12, a12, a3
.LVL105:
.LBB290:
.LBB291:
	.loc 2 21 0
	srli	a8, a5, 11
	slli	a4, a3, 21
	slli	a5, a5, 21
.LVL106:
	srli	a3, a3, 11
.LBE291:
.LBE290:
	.loc 1 57 0
	add.n	a14, a14, a12
.LVL107:
.LBB293:
.LBB292:
	.loc 2 21 0
	or	a8, a8, a4
	or	a3, a3, a5
.LBE292:
.LBE293:
	.loc 1 57 0
	add.n	a11, a2, a11
.LVL108:
	xor	a3, a3, a13
	xor	a8, a8, a14
.LVL109:
	movi.n	a7, 1
	bltu	a11, a2, .L32
	movi.n	a7, 0
.L32:
	add.n	a15, a10, a15
.LBB294:
.LBB295:
	.loc 2 21 0
	srli	a5, a2, 15
	slli	a4, a10, 17
	slli	a2, a2, 17
.LVL110:
	srli	a10, a10, 15
	or	a2, a10, a2
.LBE295:
.LBE294:
	.loc 1 57 0
	xor	a2, a2, a11
	add.n	a7, a7, a15
.LVL111:
.LBB297:
.LBB296:
	.loc 2 21 0
	or	a4, a5, a4
.LBE296:
.LBE297:
	.loc 1 58 0
	add.n	a10, a13, a2
	.loc 1 57 0
	xor	a4, a4, a7
.LVL112:
	.loc 1 58 0
	movi.n	a6, 1
	bltu	a10, a13, .L33
	movi.n	a6, 0
.L33:
	add.n	a14, a14, a4
.LVL113:
.LBB298:
.LBB299:
	.loc 2 21 0
	extui	a13, a2, 19, 13
	slli	a5, a4, 13
	slli	a2, a2, 13
.LVL114:
	extui	a4, a4, 19, 13
.LBE299:
.LBE298:
	.loc 1 58 0
	add.n	a6, a6, a14
.LVL115:
.LBB301:
.LBB300:
	.loc 2 21 0
	or	a13, a13, a5
	or	a4, a4, a2
.LBE300:
.LBE301:
	.loc 1 58 0
	add.n	a9, a7, a3
	xor	a4, a4, a10
	xor	a13, a13, a6
.LVL116:
	movi.n	a12, 1
	bltu	a9, a7, .L34
	movi.n	a12, 0
.L34:
	add.n	a11, a11, a8
.LVL117:
.LBB302:
.LBB303:
	.loc 2 21 0
	extui	a5, a3, 16, 16
	slli	a2, a8, 16
	slli	a3, a3, 16
.LVL118:
	extui	a8, a8, 16, 16
	or	a8, a8, a3
.LBE303:
.LBE302:
	.loc 1 58 0
	xor	a3, a8, a9
	add.n	a12, a12, a11
.LVL119:
.LBB305:
.LBB304:
	.loc 2 21 0
	or	a2, a5, a2
.LBE304:
.LBE305:
	.loc 1 58 0
	add.n	a7, a6, a3
	xor	a2, a2, a12
.LVL120:
	movi.n	a11, 1
	bltu	a7, a6, .L35
	movi.n	a11, 0
.L35:
	add.n	a10, a10, a2
.LVL121:
	add.n	a11, a11, a10
.LVL122:
.LBB306:
.LBB307:
	.loc 2 21 0
	slli	a5, a2, 21
	srli	a10, a3, 11
	srli	a8, a2, 11
	slli	a3, a3, 21
.LVL123:
	or	a10, a10, a5
	or	a8, a8, a3
.LBE307:
.LBE306:
	.loc 1 58 0
	add.n	a9, a4, a9
.LVL124:
	xor	a8, a8, a7
	xor	a10, a10, a11
.LVL125:
	movi.n	a5, 1
	bltu	a9, a4, .L36
	movi.n	a5, 0
.L36:
.LBB308:
.LBB309:
	.loc 2 21 0
	srli	a3, a4, 15
	slli	a2, a13, 17
	or	a2, a3, a2
	slli	a4, a4, 17
.LVL126:
	srli	a3, a13, 15
	or	a3, a3, a4
.LBE309:
.LBE308:
	.loc 1 58 0
	add.n	a12, a13, a12
	xor	a3, a3, a9
	add.n	a5, a5, a12
.LVL127:
	.loc 1 59 0
	add.n	a6, a7, a3
	.loc 1 58 0
	xor	a2, a2, a5
.LVL128:
	.loc 1 59 0
	movi.n	a4, 1
	bltu	a6, a7, .L37
	movi.n	a4, 0
.L37:
	add.n	a11, a11, a2
.LVL129:
	add.n	a11, a4, a11
.LVL130:
.LBB310:
.LBB311:
	.loc 2 21 0
	extui	a12, a3, 19, 13
	slli	a4, a2, 13
	slli	a3, a3, 13
.LVL131:
	extui	a2, a2, 19, 13
	or	a2, a2, a3
	or	a12, a12, a4
.LBE311:
.LBE310:
	.loc 1 59 0
	add.n	a7, a5, a8
	xor	a2, a2, a6
	xor	a12, a12, a11
.LVL132:
	movi.n	a3, 1
	bltu	a7, a5, .L38
	movi.n	a3, 0
.L38:
	add.n	a9, a9, a10
.LVL133:
	add.n	a9, a3, a9
.LVL134:
.LBB312:
.LBB313:
	.loc 2 21 0
	extui	a5, a8, 16, 16
	slli	a3, a10, 16
	slli	a8, a8, 16
.LVL135:
	extui	a10, a10, 16, 16
	or	a8, a10, a8
.LBE313:
.LBE312:
	.loc 1 59 0
	xor	a8, a8, a7
.LBB315:
.LBB314:
	.loc 2 21 0
	or	a5, a5, a3
.LBE314:
.LBE315:
	.loc 1 59 0
	add.n	a13, a11, a8
	xor	a5, a5, a9
.LVL136:
	movi.n	a4, 1
	bltu	a13, a11, .L39
	movi.n	a4, 0
.L39:
	add.n	a6, a6, a5
.LVL137:
.LBB316:
.LBB317:
	.loc 2 21 0
	slli	a3, a5, 21
.LBE317:
.LBE316:
	.loc 1 59 0
	add.n	a4, a4, a6
.LVL138:
.LBB319:
.LBB318:
	.loc 2 21 0
	srli	a6, a8, 11
	or	a6, a6, a3
	slli	a8, a8, 21
.LVL139:
	srli	a3, a5, 11
	or	a3, a3, a8
.LBE318:
.LBE319:
	.loc 1 59 0
	add.n	a7, a2, a7
.LVL140:
	xor	a3, a3, a13
	xor	a6, a6, a4
.LVL141:
	movi.n	a5, 1
	bltu	a7, a2, .L40
	movi.n	a5, 0
.L40:
	add.n	a9, a12, a9
	add.n	a9, a5, a9
.LVL142:
.LBB320:
.LBB321:
	.loc 2 21 0
	srli	a8, a2, 15
	slli	a5, a12, 17
	slli	a2, a2, 17
.LVL143:
	srli	a12, a12, 15
	or	a2, a12, a2
.LBE321:
.LBE320:
	.loc 1 59 0
	xor	a2, a2, a7
.LBB323:
.LBB322:
	.loc 2 21 0
	or	a5, a8, a5
.LBE322:
.LBE323:
	.loc 1 60 0
	add.n	a11, a13, a2
	.loc 1 59 0
	xor	a5, a5, a9
.LVL144:
	.loc 1 60 0
	movi.n	a10, 1
	bltu	a11, a13, .L41
	movi.n	a10, 0
.L41:
	add.n	a4, a4, a5
.LVL145:
	add.n	a10, a10, a4
.LVL146:
.LBB324:
.LBB325:
	.loc 2 21 0
	extui	a8, a2, 19, 13
	slli	a4, a5, 13
	or	a4, a8, a4
	extui	a5, a5, 19, 13
.LVL147:
	slli	a8, a2, 13
	or	a5, a5, a8
.LBE325:
.LBE324:
	.loc 1 60 0
	xor	a4, a4, a10
	add.n	a10, a9, a3
.LVL148:
	xor	a2, a5, a11
.LVL149:
	movi.n	a5, 1
	bltu	a10, a9, .L42
	movi.n	a5, 0
.L42:
	add.n	a7, a7, a6
.LVL150:
.LBB326:
.LBB327:
	.loc 2 21 0
	extui	a9, a3, 16, 16
.LBE327:
.LBE326:
	.loc 1 60 0
	add.n	a7, a5, a7
.LVL151:
.LBB330:
.LBB328:
	.loc 2 21 0
	slli	a5, a6, 16
	or	a9, a9, a5
	extui	a6, a6, 16, 16
.LVL152:
	slli	a5, a3, 16
.LBE328:
.LBE330:
	.loc 1 60 0
	add.n	a8, a2, a10
.LBB331:
.LBB329:
	.loc 2 21 0
	or	a6, a6, a5
.LVL153:
.LBE329:
.LBE331:
	.loc 1 60 0
	movi.n	a3, 1
	bltu	a8, a2, .L43
	movi.n	a3, 0
.L43:
	add.n	a5, a4, a7
	add.n	a5, a3, a5
.LVL154:
	xor	a7, a9, a7
.LVL155:
	xor	a3, a6, a10
	srli	a9, a3, 11
	slli	a6, a7, 21
	or	a6, a9, a6
	srli	a7, a7, 11
	slli	a3, a3, 21
	srli	a9, a2, 15
	or	a3, a7, a3
	slli	a2, a2, 17
.LVL156:
	xor	a7, a6, a5
	slli	a6, a4, 17
	srli	a4, a4, 15
	or	a6, a9, a6
	or	a2, a4, a2
	xor	a3, a3, a8
	xor	a3, a3, a2
.LBB332:
.LBB333:
	.loc 2 64 0
	l32i.n	a10, sp, 32
	xor	a2, a7, a6
	xor	a8, a2, a8
.LVL157:
	xor	a3, a3, a5
	movi.n	a12, 8
.LVL158:
	mov.n	a11, sp
	s32i.n	a3, sp, 0
	s32i.n	a8, sp, 4
.LVL159:
	call8	memcpy
.LVL160:
.LBE333:
.LBE332:
	.loc 1 65 0
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	crypto_shorthash_siphash24, .-crypto_shorthash_siphash24
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
	.4byte	0x735
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.Ldebug_ranges0+0x268
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
	.4byte	0x724
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
	.4byte	0x724
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
	.4byte	0x724
	.4byte	.LLST3
	.uleb128 0xe
	.string	"v0"
	.byte	0x1
	.byte	0xa
	.4byte	0x7a
	.4byte	.LLST4
	.uleb128 0xe
	.string	"v1"
	.byte	0x1
	.byte	0xb
	.4byte	0x7a
	.4byte	.LLST5
	.uleb128 0xe
	.string	"v2"
	.byte	0x1
	.byte	0xc
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0xe
	.string	"v3"
	.byte	0x1
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xe
	.4byte	0x7a
	.uleb128 0xa
	.string	"k0"
	.byte	0x1
	.byte	0xf
	.4byte	0x7a
	.uleb128 0xa
	.string	"k1"
	.byte	0x1
	.byte	0x10
	.4byte	0x7a
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x11
	.4byte	0x7a
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x12
	.4byte	0x120
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0xcf
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	0xfb
	.4byte	.LBB204
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf
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
	.4byte	0x72f
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
	.4byte	.LBB209
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x10
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
	.4byte	0x72f
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
	.4byte	.LBB220
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x1b
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
	.4byte	0x72f
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
	.4byte	.LBB224
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x1d
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
	.4byte	.LBB228
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x1d
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
	.4byte	.LBB232
	.4byte	.LBE232-.LBB232
	.byte	0x1
	.byte	0x1d
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
	.4byte	.LBB234
	.4byte	.LBE234-.LBB234
	.byte	0x1
	.byte	0x1d
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
	.4byte	.LBB236
	.4byte	.LBE236-.LBB236
	.byte	0x1
	.byte	0x1e
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
	.4byte	.LBB238
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x1e
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
	.4byte	.LBB242
	.4byte	.LBE242-.LBB242
	.byte	0x1
	.byte	0x1e
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
	.4byte	.LBB244
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x1e
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
	.4byte	.LBB248
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x35
	.4byte	0x426
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST29
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB252
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x35
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
	.4byte	.LBB256
	.4byte	.LBE256-.LBB256
	.byte	0x1
	.byte	0x35
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
	.4byte	.LBB258
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0x35
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
	.4byte	.LBB264
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0x36
	.4byte	0x4ae
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB270
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0x36
	.4byte	0x4d1
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST33
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB274
	.4byte	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x36
	.4byte	0x4f0
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB280
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x36
	.4byte	0x513
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST34
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB284
	.4byte	.LBE284-.LBB284
	.byte	0x1
	.byte	0x39
	.4byte	0x536
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST35
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB286
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.byte	0x39
	.4byte	0x555
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB290
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0x39
	.4byte	0x574
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB294
	.4byte	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.byte	0x39
	.4byte	0x593
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB298
	.4byte	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x3a
	.4byte	0x5b2
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB302
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.byte	0x3a
	.4byte	0x5d1
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB306
	.4byte	.LBE306-.LBB306
	.byte	0x1
	.byte	0x3a
	.4byte	0x5f4
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST36
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB308
	.4byte	.LBE308-.LBB308
	.byte	0x1
	.byte	0x3a
	.4byte	0x613
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x18
	.4byte	0xb7
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB310
	.4byte	.LBE310-.LBB310
	.byte	0x1
	.byte	0x3b
	.4byte	0x636
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST37
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB312
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x3b
	.4byte	0x659
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST38
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB316
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.byte	0x3b
	.4byte	0x67c
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x15
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST39
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB320
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0x3b
	.4byte	0x69f
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x11
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST40
	.byte	0
	.uleb128 0x16
	.4byte	0xa7
	.4byte	.LBB324
	.4byte	.LBE324-.LBB324
	.byte	0x1
	.byte	0x3c
	.4byte	0x6c2
	.uleb128 0x17
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST41
	.byte	0
	.uleb128 0x10
	.4byte	0xa7
	.4byte	.LBB326
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.byte	0x3c
	.4byte	0x6e5
	.uleb128 0x17
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x11
	.4byte	0xb7
	.4byte	.LLST42
	.byte	0
	.uleb128 0x19
	.4byte	0xd4
	.4byte	.LBB332
	.4byte	.LBE332-.LBB332
	.byte	0x1
	.byte	0x3e
	.uleb128 0x11
	.4byte	0xeb
	.4byte	.LLST43
	.uleb128 0x1a
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LVL160
	.4byte	0x72f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
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
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x72a
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
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
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL107
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL122
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL138
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
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
	.8byte	0x646f72616e646f6d
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
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL100
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL116
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL132
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL149
	.4byte	.LVL154
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
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
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LVL90
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134
	.4byte	.LVL140
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
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
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL91
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL109
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL125
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL141
	.4byte	.LVL152
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
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
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
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
	.4byte	.LVL158
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL160-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL160-1
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
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x53
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
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL159
	.4byte	.LVL160-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL160-1
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
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
	.4byte	.LBB204
	.4byte	.LBE204
	.4byte	.LBB208
	.4byte	.LBE208
	.4byte	.LBB216
	.4byte	.LBE216
	.4byte	0
	.4byte	0
	.4byte	.LBB209
	.4byte	.LBE209
	.4byte	.LBB215
	.4byte	.LBE215
	.4byte	.LBB217
	.4byte	.LBE217
	.4byte	.LBB218
	.4byte	.LBE218
	.4byte	.LBB219
	.4byte	.LBE219
	.4byte	0
	.4byte	0
	.4byte	.LBB220
	.4byte	.LBE220
	.4byte	.LBB223
	.4byte	.LBE223
	.4byte	0
	.4byte	0
	.4byte	.LBB224
	.4byte	.LBE224
	.4byte	.LBB227
	.4byte	.LBE227
	.4byte	0
	.4byte	0
	.4byte	.LBB228
	.4byte	.LBE228
	.4byte	.LBB231
	.4byte	.LBE231
	.4byte	0
	.4byte	0
	.4byte	.LBB238
	.4byte	.LBE238
	.4byte	.LBB241
	.4byte	.LBE241
	.4byte	0
	.4byte	0
	.4byte	.LBB244
	.4byte	.LBE244
	.4byte	.LBB247
	.4byte	.LBE247
	.4byte	0
	.4byte	0
	.4byte	.LBB248
	.4byte	.LBE248
	.4byte	.LBB251
	.4byte	.LBE251
	.4byte	0
	.4byte	0
	.4byte	.LBB252
	.4byte	.LBE252
	.4byte	.LBB255
	.4byte	.LBE255
	.4byte	0
	.4byte	0
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	0
	.4byte	0
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	.LBB269
	.4byte	.LBE269
	.4byte	0
	.4byte	0
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	0
	.4byte	0
	.4byte	.LBB274
	.4byte	.LBE274
	.4byte	.LBB278
	.4byte	.LBE278
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	0
	.4byte	0
	.4byte	.LBB280
	.4byte	.LBE280
	.4byte	.LBB283
	.4byte	.LBE283
	.4byte	0
	.4byte	0
	.4byte	.LBB286
	.4byte	.LBE286
	.4byte	.LBB289
	.4byte	.LBE289
	.4byte	0
	.4byte	0
	.4byte	.LBB290
	.4byte	.LBE290
	.4byte	.LBB293
	.4byte	.LBE293
	.4byte	0
	.4byte	0
	.4byte	.LBB294
	.4byte	.LBE294
	.4byte	.LBB297
	.4byte	.LBE297
	.4byte	0
	.4byte	0
	.4byte	.LBB298
	.4byte	.LBE298
	.4byte	.LBB301
	.4byte	.LBE301
	.4byte	0
	.4byte	0
	.4byte	.LBB302
	.4byte	.LBE302
	.4byte	.LBB305
	.4byte	.LBE305
	.4byte	0
	.4byte	0
	.4byte	.LBB312
	.4byte	.LBE312
	.4byte	.LBB315
	.4byte	.LBE315
	.4byte	0
	.4byte	0
	.4byte	.LBB316
	.4byte	.LBE316
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
	.4byte	.LBB326
	.4byte	.LBE326
	.4byte	.LBB330
	.4byte	.LBE330
	.4byte	.LBB331
	.4byte	.LBE331
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
.LASF18:
	.string	"left"
.LASF20:
	.string	"/home/dieter/SoftwareDevelop/oxypoint-am/Prerequisites/esp-idf/components/libsodium/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphash24_ref.c"
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
.LASF22:
	.string	"crypto_shorthash_siphash24"
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
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
