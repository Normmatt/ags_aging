.include "asm/macros.inc"

.syntax unified

	THUMB_FUNC_START sub_80031B8
sub_80031B8: @ 0x080031B8
	push {r4, r7, lr}
	sub sp, #0x24
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, _080031EC
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r2, [r1]
	str r2, [r0]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x10
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7]
_080031E4:
	ldr r0, [r7]
	cmp r0, #3
	bls _080031F0
	b _08003234
	.align 2, 0
_080031EC: .4byte gUnknown_0801915C
_080031F0:
	ldr r0, _0800322C
	ldr r1, _08003230
	ldr r2, [r7]
	movs r3, #0
	bl sub_800F150
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	ldr r0, [r0]
	cmp r1, r0
	beq _0800321E
	movs r0, #1
	ldr r1, [r7, #8]
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_0800321E:
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _080031E4
	.align 2, 0
_0800322C: .4byte sub_8003310
_08003230: .4byte 0x8003374
_08003234:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _08003246
_08003246:
	add sp, #0x24
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003250
sub_8003250: @ 0x08003250
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80031B8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003264
_08003264:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800326C
sub_800326C: @ 0x0800326C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08003294
	movs r5, #0
	str r5, [r4]
	ldr r6, _08003298
	str r6, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldrh r0, [r4]
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003294: .4byte 0x04000100
_08003298: .4byte 0x00800000

	ARM_FUNC_START sub_800329C
sub_800329C: @ sub_800329C
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003304
	ldrh r8, [r7]
	ldrh sb, [pc, #0x58]
	and sb, r8, sb
	add sl, r0, r0
	add sl, sl, r0
	add sl, sl, #2
	orr sb, sb, r1, lsl sl
	strh sb, [r7]
	mov r2, #0x8000000
	add r2, r2, r0, lsl #25
	ldr r4, _0800330C
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003304: .4byte 0x04000204
	.byte 0x03, 0xF8, 0xFF, 0xFF
_0800330C: .4byte 0x04000100

	ARM_FUNC_START sub_8003310
sub_8003310: @ sub_8003310
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003368
	ldrh r8, [r7]
	ldrh sb, [pc, #0x48]
	and sb, r8, sb
	orr sb, sb, r0
	strh sb, [r7]
	mov r2, #0xe000000
	ldr r4, _08003370
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003368: .4byte 0x04000204
	.byte 0xFC, 0xFF, 0xFF, 0xFF
_08003370: .4byte 0x04000100

	THUMB_FUNC_START sub_8003374
sub_8003374: @ sub_8003374
	push {r7, lr}
	ldr r7, _080033D0
	add sp, r7
	mov r7, sp
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0
	bl SetIME
	ldr r2, _080033D4
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, _080033D8
	ldr r1, _080033DC
	adds r2, r7, #0
	movs r3, #0xe4
	lsls r3, r3, #1
	bl sub_800F150
	ldr r1, _080033E0
	adds r0, r7, r1
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r2, _080033E0
	adds r0, r7, r2
	ldrh r1, [r0]
	cmp r1, #0xe3
	bls _080033E4
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	b _0800348C
	.align 2, 0
_080033D0: .4byte 0xFFFFF8D4
_080033D4: .4byte 0x00000724
_080033D8: .4byte sub_8003C88
_080033DC: .4byte sub_8003CF0
_080033E0: .4byte 0x00000726
_080033E4:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
_080033F0:
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r1, _08003404
	cmp r0, r1
	ble _08003408
	b _0800348C
	.align 2, 0
_08003404: .4byte 0x000001C7
_08003408:
	ldr r2, _08003468
	adds r1, r7, r2
	ldr r1, _08003468
	adds r0, r7, r1
	ldr r2, _08003468
	adds r1, r7, r2
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _08003468
	adds r0, r7, r1
	ldrh r1, [r0]
	cmp r1, #0xe4
	bne _0800342E
	ldr r2, _08003468
	adds r0, r7, r2
	movs r1, #0
	strh r1, [r0]
_0800342E:
	ldr r1, _08003468
	adds r0, r7, r1
	adds r1, r7, #0
	adds r2, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800346C
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	b _0800348C
	.align 2, 0
_08003468: .4byte 0x00000726
_0800346C:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080033F0
_0800348C:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
_08003498:
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r1, _080034AC
	cmp r0, r1
	ble _080034B0
	b _0800352A
	.align 2, 0
_080034AC: .4byte 0x000001C7
_080034B0:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _080034EC
	cmp r0, r1
	bhi _080034F0
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #3
	cmp r0, r1
	bls _080034F0
	b _0800350A
	.align 2, 0
_080034EC: .4byte 0x000004D1
_080034F0:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _0800352A
_0800350A:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08003498
_0800352A:
	ldr r2, _08003544
	adds r0, r7, r2
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _08003548
	.align 2, 0
_08003544: .4byte 0x00000724
_08003548:
	ldr r3, _08003554
	add sp, r3
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003554: .4byte 0x0000072C

	THUMB_FUNC_START sub_8003558
sub_8003558: @ 0x08003558
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003374
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800356C
_0800356C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003574
sub_8003574: @ 0x08003574
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003600
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003600
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, _08003604
	movs r1, #4
	strh r1, [r0]
	bl sub_800362C
	ldr r0, _08003604
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _080035BC
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_080035BC:
	ldr r0, _08003600
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08003604
	movs r1, #4
	strh r1, [r0]
	bl sub_800362C
	ldr r0, _08003604
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080035E8
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_080035E8:
	ldr r0, _08003600
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08003608
	.align 2, 0
_08003600: .4byte 0x04000004
_08003604: .4byte 0x04000202
_08003608:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003610
sub_8003610: @ 0x08003610
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003574
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003624
_08003624:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800362C
sub_800362C: @ 0x0800362C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08003694
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #2
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0xa
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #2
	ldrh r1, [r0]
	cmp r1, #0xe3
	bls _08003656
	adds r0, r7, #2
	movs r1, #0
	strh r1, [r0]
_08003656:
	adds r0, r7, #4
	ldr r1, _08003698
	ldrh r2, [r1]
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	adds r1, r7, #4
	adds r2, r7, #2
	ldrh r3, [r2]
	lsls r2, r3, #8
	ldrh r1, [r1]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08003698
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
_08003680:
	ldr r1, _08003694
	adds r0, r7, #2
	ldrh r1, [r1]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _0800369C
	b _0800369E
	.align 2, 0
_08003694: .4byte 0x04000006
_08003698: .4byte 0x04000004
_0800369C:
	b _08003680
_0800369E:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80036A8
sub_80036A8: @ 0x080036A8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003734
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003734
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _08003738
	movs r1, #2
	strh r1, [r0]
	bl sub_8003760
	ldr r0, _08003738
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _080036F0
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_080036F0:
	ldr r0, _08003734
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08003738
	movs r1, #2
	strh r1, [r0]
	bl sub_8003760
	ldr r0, _08003738
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800371C
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800371C:
	ldr r0, _08003734
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800373C
	.align 2, 0
_08003734: .4byte 0x04000004
_08003738: .4byte 0x04000202
_0800373C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003744
sub_8003744: @ 0x08003744
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80036A8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003758
_08003758:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003760
sub_8003760: @ 0x08003760
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _08003790
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xe1
	bls _0800377C
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
_0800377C:
	ldr r0, _08003790
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _08003794
	b _08003796
	.align 2, 0
_08003790: .4byte 0x04000006
_08003794:
	b _0800377C
_08003796:
	ldr r0, _080037AC
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #2
	cmp r0, r1
	bne _080037B0
	b _080037B2
	.align 2, 0
_080037AC: .4byte 0x04000006
_080037B0:
	b _08003796
_080037B2:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80037BC
sub_80037BC: @ 0x080037BC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #4
	ldr r1, _08003848
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08003848
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800384C
	movs r1, #1
	strh r1, [r0]
	bl sub_8003874
	ldr r0, _0800384C
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _08003804
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_08003804:
	ldr r0, _08003848
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800384C
	movs r1, #1
	strh r1, [r0]
	bl sub_8003874
	ldr r0, _0800384C
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003830
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_08003830:
	ldr r0, _08003848
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _08003850
	.align 2, 0
_08003848: .4byte 0x04000004
_0800384C: .4byte 0x04000202
_08003850:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003858
sub_8003858: @ 0x08003858
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80037BC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800386C
_0800386C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003874
sub_8003874: @ 0x08003874
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _080038A4
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xe2
	bls _08003890
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
_08003890:
	ldr r0, _080038A4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _080038A8
	b _080038AA
	.align 2, 0
_080038A4: .4byte 0x04000006
_080038A8:
	b _08003890
_080038AA:
	ldr r1, _080038BC
	adds r0, r7, #0
	ldrh r1, [r1]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bne _080038C0
	b _080038C2
	.align 2, 0
_080038BC: .4byte 0x04000006
_080038C0:
	b _080038AA
_080038C2:
	ldr r0, _080038D8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	adds r1, r7, #0
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	bne _080038DC
	b _080038DE
	.align 2, 0
_080038D8: .4byte 0x04000006
_080038DC:
	b _080038C2
_080038DE:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80038E8
sub_80038E8: @ 0x080038E8
	push {r7, lr}
	sub sp, #0x20
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x1c
	ldr r1, _0800395C
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	ldr r1, _08003960
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0xa
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x16
	ldrh r1, [r0]
	cmp r1, #0xe2
	bls _08003936
	adds r0, r7, #0
	adds r0, #0x16
	movs r1, #0
	strh r1, [r0]
_08003936:
	ldr r0, _0800395C
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	lsls r1, r2, #8
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08003964
	ldr r1, _08003968
	adds r2, r7, #0
	movs r3, #4
	bl sub_800F150
	movs r0, #0
	str r0, [r7, #0x18]
_08003954:
	ldr r0, [r7, #0x18]
	cmp r0, #3
	ble _0800396C
	b _080039D8
	.align 2, 0
_0800395C: .4byte 0x04000004
_08003960: .4byte 0x04000006
_08003964: .4byte sub_8003CF0
_08003968: .4byte sub_8003D38
_0800396C:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080039AC
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x16
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	beq _080039AA
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080039D8
_080039AA:
	b _080039D0
_080039AC:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x16
	ldrh r2, [r1]
	adds r1, r2, #1
	cmp r0, r1
	beq _080039D0
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080039D8
_080039D0:
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _08003954
_080039D8:
	ldr r0, _080039F4
	adds r1, r7, #0
	adds r1, #0x1c
	ldrh r2, [r1]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _080039F8
	.align 2, 0
_080039F4: .4byte 0x04000004
_080039F8:
	add sp, #0x20
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003A00
sub_8003A00: @ 0x08003A00
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_80038E8
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003A14
_08003A14:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003A1C
sub_8003A1C: @ 0x08003A1C
	push {r7, lr}
	ldr r7, _08003A68
	add sp, r7
	mov r7, sp
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0
	bl SetIME
	ldr r2, _08003A6C
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, _08003A70
	ldr r1, _08003A74
	adds r2, r7, #0
	movs r3, #0xe4
	lsls r3, r3, #1
	bl sub_800F150
	adds r0, r7, #0
	movs r0, #0xe5
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
_08003A56:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r0, [r1]
	ldr r1, _08003A78
	cmp r0, r1
	ble _08003A7C
	b _08003B70
	.align 2, 0
_08003A68: .4byte 0xFFFFF8D4
_08003A6C: .4byte 0x00000724
_08003A70: .4byte sub_8003D38
_08003A74: .4byte sub_8003DAC
_08003A78: .4byte 0x000001C7
_08003A7C:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003B00
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08003ADC
	cmp r0, r1
	bhi _08003AE4
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08003AE0
	cmp r0, r1
	bls _08003AE4
	b _08003AFE
	.align 2, 0
_08003ADC: .4byte 0x000003F1
_08003AE0: .4byte 0x000003DE
_08003AE4:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _08003B70
_08003AFE:
	b _08003B50
_08003B00:
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xe3
	bhi _08003B36
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xd0
	bls _08003B36
	b _08003B50
_08003B36:
	adds r1, r7, #0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r1, r7, #0
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _08003B70
_08003B50:
	adds r0, r7, #0
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08003A56
_08003B70:
	ldr r2, _08003B8C
	adds r0, r7, r2
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	adds r0, r7, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _08003B90
	.align 2, 0
_08003B8C: .4byte 0x00000724
_08003B90:
	ldr r3, _08003B9C
	add sp, r3
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003B9C: .4byte 0x0000072C

	THUMB_FUNC_START sub_8003BA0
sub_8003BA0: @ 0x08003BA0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003A1C
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003BB4
_08003BB4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003BBC
sub_8003BBC: @ 0x08003BBC
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x10]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, _08003BEC
	ldr r1, _08003BF0
	adds r2, r7, #0
	movs r3, #4
	bl sub_800F150
	movs r0, #0
	str r0, [r7, #0x18]
_08003BE2:
	ldr r0, [r7, #0x18]
	cmp r0, #3
	ble _08003BF4
	b _08003C52
	.align 2, 0
_08003BEC: .4byte sub_8003DAC
_08003BF0: .4byte 0x8003DF4
_08003BF4:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _08003C2E
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xa0
	beq _08003C2C
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08003C52
_08003C2C:
	b _08003C4A
_08003C2E:
	adds r0, r7, #0
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0xe3
	beq _08003C4A
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08003C52
_08003C4A:
	ldr r0, [r7, #0x18]
	adds r1, r0, #1
	str r1, [r7, #0x18]
	b _08003BE2
_08003C52:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	b _08003C64
_08003C64:
	add sp, #0x1c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8003C6C
sub_8003C6C: @ 0x08003C6C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_8003BBC
	adds r1, r0, #0
	adds r0, r1, #0
	b _08003C80
_08003C80:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
    