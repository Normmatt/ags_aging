.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80011C4
sub_80011C4: @ 0x080011C4
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	movs r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r7]
	ldr r1, [r0, #4]
	adds r0, r1, #1
	str r0, [r7, #4]
_080011DA:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #2
	bne _080011F2
	b _08001236
_080011F2:
	ldr r2, [r7]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, [r0]
	adds r3, r1, #0
	lsls r4, r3, #2
	adds r2, #0x10
	adds r3, r2, r4
	ldr r2, [r7, #4]
	str r2, [r3]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _0800122E
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_8001240
	str r0, [r7, #4]
	b _08001234
_0800122E:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001234:
	b _080011DA
_08001236:
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001240
sub_8001240: @ 0x08001240
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001250:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #2
	bne _08001268
	b _08001292
_08001268:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _0800128A
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_8001240
	str r0, [r7, #4]
	b _08001290
_0800128A:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
_08001290:
	b _08001250
_08001292:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	adds r0, r1, #0
	b _0800129A
_0800129A:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80012A4
sub_80012A4: @ 0x080012A4
	push {r4, r7, lr}
	sub sp, #0x30
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001348
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x18
	ldr r2, _0800134C
	adds r1, r2, #0
	ldr r4, _08001350
	adds r2, r2, r4
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r1, _0800134C
	adds r0, r1, #0
	ldr r4, _08001350
	adds r1, r1, r4
	adds r2, r7, #4
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, _08001354
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r2, [r0, #4]
	movs r0, #0
	movs r1, #0
	bl DrawString
	ldr r0, _0800134C
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800134C
	movs r1, #1
	str r1, [r0, #4]
	movs r0, #0
	str r0, [r7, #0x2c]
_08001326:
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #4]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl strlen
	ldr r1, [r7, #0x2c]
	cmp r1, r0
	blo _08001358
	b _08001370
	.align 2, 0
_08001348: .4byte gUnknown_080187B0
_0800134C: .4byte gUnknown_03001B40
_08001350: .4byte 0x0000100C
_08001354: .4byte gUnknown_080187C4
_08001358:
	ldr r2, _0800136C
	movs r0, #2
	movs r1, #0
	bl DrawString
	ldr r0, [r7, #0x2c]
	adds r1, r0, #1
	str r1, [r7, #0x2c]
	b _08001326
	.align 2, 0
_0800136C: .4byte gUnknown_080187C8
_08001370:
	movs r0, #0
	str r0, [r7, #0x2c]
_08001374:
	ldr r0, [r7]
	ldr r1, [r7, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _08001380
	b _080013F4
_08001380:
	ldr r0, _080013EC
	movs r1, #2
	str r1, [r0]
	ldr r0, _080013EC
	ldr r1, [r7, #0x2c]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r1, #2
	str r2, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7, #0x2c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #0x10
	adds r2, r1, r2
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r2, [r0, #4]
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7, #0x2c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #0x10
	adds r2, r1, r2
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #0
	bne _080013E4
	ldr r2, _080013F0
	movs r0, #1
	movs r1, #5
	bl DrawString
_080013E4:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #1
	str r1, [r7, #0x2c]
	b _08001374
	.align 2, 0
_080013EC: .4byte gUnknown_03001B40
_080013F0: .4byte gUnknown_080187CC
_080013F4:
	ldr r0, _08001434
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001434
	ldr r1, [r7]
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #1
	adds r1, r2, #2
	str r1, [r0, #4]
	ldr r2, _08001438
	movs r0, #1
	movs r1, #1
	bl DrawString
	ldr r1, _08001434
	adds r0, r1, #0
	ldr r4, _0800143C
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x18
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	add sp, #0x30
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001434: .4byte gUnknown_03001B40
_08001438: .4byte gUnknown_080187D0
_0800143C: .4byte 0x0000100C

	THUMB_FUNC_START testmain
testmain: @ 0x08001440
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	cmp r0, #6
	bhi _080014A6
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _0800145C
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800145C: .4byte _08001460
_08001460: @ jump table
	.4byte _08001482 @ case 0
	.4byte _0800147C @ case 1
	.4byte _08001488 @ case 2
	.4byte _0800148E @ case 3
	.4byte _08001494 @ case 4
	.4byte _0800149A @ case 5
	.4byte _080014A0 @ case 6
_0800147C:
	bl testprogramMain
	b _080014A6
_08001482:
	bl sub_8001AFC
	b _080014A6
_08001488:
	bl sub_80003E8
	b _080014A6
_0800148E:
	bl sub_8000430
	b _080014A6
_08001494:
	bl agingMain
	b _080014A6
_0800149A:
	bl selftestMain
	b _080014A6
_080014A0:
	bl sub_800095C
	b _080014A6
_080014A6:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    