.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8009308
sub_8009308: @ sub_8009308
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08009378
	add sp, r4
	add r7, sp, #8
	adds r1, r7, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x86
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x2c
	bl memset
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #1
	movs r2, #2
	bl sub_800D790
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800937C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800937C
	movs r1, #0x10
	strh r1, [r0]
	adds r0, r7, #0
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r1]
	adds r0, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
_08009366:
	adds r0, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0xff
	ble _08009380
	b _080093BC
	.align 2, 0
_08009378: .4byte 0xFFFFFD88
_0800937C: .4byte 0x04000004
_08009380:
	adds r1, r7, #0
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	adds r2, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r5, [r3]
	adds r2, r5, #0
	strb r2, [r1]
	adds r1, #1
	str r1, [r0]
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	adds r2, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009366
_080093BC:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _080093EC
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
_080093DC:
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	bls _080093F0
	b _0800990C
	.align 2, 0
_080093EC: .4byte 0x040000B8
_080093F0:
	adds r0, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
_080093FC:
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #2
	bls _0800940C
	b _080098EC
_0800940C:
	adds r0, r7, #0
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_08009418:
	adds r0, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #3
	bls _08009428
	b _080098CC
_08009428:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
_08009434:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #1
	bls _08009444
	b _080098AC
_08009444:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	beq _0800947E
	cmp r0, #1
	blo _0800946C
	cmp r0, #2
	beq _080094AA
	b _080094C0
_0800946C:
	adds r0, r7, #0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r1]
	b _080094C0
_0800947E:
	adds r1, r7, #0
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r4, r7, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	cmp r1, #0
	beq _080094A4
	subs r1, r4, #4
	b _080094A6
_080094A4:
	subs r1, r4, #2
_080094A6:
	str r1, [r0]
	b _080094C0
_080094AA:
	adds r1, r7, #0
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r1, #0
	adds r2, #0x80
	str r2, [r0]
	b _080094C0
_080094C0:
	adds r0, r7, #0
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	beq _080094EC
	cmp r0, #1
	blo _080094DC
	cmp r0, #2
	beq _08009518
	cmp r0, #3
	beq _0800952C
	b _0800953C
_080094DC:
	adds r0, r7, #0
	movs r2, #0x97
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	b _0800953C
_080094EC:
	adds r1, r7, #0
	movs r3, #0x97
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	cmp r1, #0
	beq _0800950C
	ldr r1, _08009508
	b _0800950E
	.align 2, 0
_08009508: .4byte gUnknown_020000FC
_0800950C:
	ldr r1, _08009514
_0800950E:
	str r1, [r0]
	b _0800953C
	.align 2, 0
_08009514: .4byte gUnknown_020000FE
_08009518:
	adds r0, r7, #0
	movs r6, #0x97
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, _08009528
	str r0, [r1]
	b _0800953C
	.align 2, 0
_08009528: .4byte gUnknown_02000080
_0800952C:
	adds r0, r7, #0
	movs r0, #0x97
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	b _0800953C
_0800953C:
	adds r0, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0
	beq _0800955C
	cmp r0, #1
	beq _08009596
	b _080095D8
_0800955C:
	adds r1, r7, #0
	movs r5, #0x98
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	cmp r1, #0
	beq _08009582
	adds r1, r7, #0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	movs r2, #0x40
	orrs r1, r2
	b _08009592
_08009582:
	adds r2, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
_08009592:
	str r1, [r0]
	b _080095D8
_08009596:
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	cmp r1, #0
	beq _080095C0
	adds r1, r7, #0
	movs r6, #0x98
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	ldr r2, _080095BC
	orrs r1, r2
	b _080095D0
	.align 2, 0
_080095BC: .4byte 0x22000004
_080095C0:
	adds r2, r7, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	ldr r3, _080095D4
	adds r1, r2, #0
	orrs r1, r3
_080095D0:
	str r1, [r0]
	b _080095D8
	.align 2, 0
_080095D4: .4byte 0x22000008
_080095D8:
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r2, r7, #0
	movs r5, #0x98
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r3, r7, r6
	ldr r5, [r3]
	lsls r2, r5, #0x1a
	adds r3, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r6, [r5]
	lsls r3, r6, #0x17
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r3, r5
	orrs r2, r3
	adds r3, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r6, [r5]
	lsls r3, r6, #0x15
	orrs r2, r3
	ldr r1, [r1]
	orrs r2, r1
	str r2, [r0]
	adds r0, r7, #0
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08009630
	cmp r0, #1
	beq _08009694
	b _0800976C
_08009630:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009688
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x96
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _0800968C
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x97
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009690
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	b _0800976C
	.align 2, 0
_08009688: .4byte 0x040000B0
_0800968C: .4byte 0x040000B4
_08009690: .4byte 0x040000B8
_08009694:
	ldr r0, _080096A4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x8e
	bhi _080096A8
	b _080096AA
	.align 2, 0
_080096A4: .4byte 0x04000006
_080096A8:
	b _08009694
_080096AA:
	movs r0, #2
	bl sub_800D640
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _08009720
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x96
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _08009724
	adds r0, r2, r1
	adds r1, r7, #0
	movs r3, #0x97
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	str r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r5, _08009728
	adds r0, r2, r5
	adds r1, r7, #0
	movs r6, #0x98
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
_08009710:
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0xf
	ble _0800972C
	b _08009752
	.align 2, 0
_08009720: .4byte 0x040000B0
_08009724: .4byte 0x040000B4
_08009728: .4byte 0x040000B8
_0800972C:
	movs r0, #2
	bl sub_800D640
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	adds r2, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009710
_08009752:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _08009768
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	b _0800976C
	.align 2, 0
_08009768: .4byte 0x040000B8
_0800976C:
	adds r1, r7, #0
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r3, _08009788
	adds r1, r0, r3
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800978C
	b _0800978E
	.align 2, 0
_08009788: .4byte 0x040000B8
_0800978C:
	b _0800976C
_0800978E:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r3, r7, r5
	ldr r2, [r3]
	adds r5, r2, #0
	lsls r3, r5, #1
	adds r3, r3, r2
	lsls r2, r3, #0xb
	adds r3, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #0xb
	ldr r5, _080098A8
	adds r3, r3, r5
	adds r2, r2, r3
	adds r3, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #9
	adds r2, r2, r3
	adds r3, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #8
	adds r2, r2, r3
	movs r3, #0
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0
	bl sub_800F188
	adds r1, r7, #0
	adds r1, #0x4c
	adds r2, r7, #0
	movs r2, #0x95
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r3, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #3
	adds r2, r2, r3
	adds r3, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #5
	adds r2, r2, r3
	adds r3, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r6, r3, #0
	lsls r5, r6, #1
	adds r5, r5, r3
	lsls r3, r5, #5
	adds r2, r2, r3
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r3, r7, r6
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	adds r1, r1, r2
	adds r2, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r3, r7, r2
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r2, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r3, r7, r5
	ldr r2, [r3]
	adds r5, r2, #0
	lsls r3, r5, #1
	adds r3, r3, r2
	lsls r2, r3, #5
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08009886
	movs r0, #1
	str r0, [r7, #0x48]
_08009886:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009434
	.align 2, 0
_080098A8: .4byte gUnknown_080778DC
_080098AC:
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x94
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x94
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _08009418
_080098CC:
	adds r0, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080093FC
_080098EC:
	adds r0, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _080093DC
_0800990C:
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009918
sub_08009918: @ 0x08009918
	adds r0, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #1
	bls _0800992A
	bl sub_0800A1E8
_0800992A:
	adds r0, r7, #0
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009936
sub_08009936: @ 0x08009936
	adds r0, r7, #0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #2
	bls _08009948
	bl sub_0800A1C6
_08009948:
	adds r0, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009954
sub_08009954: @ 0x08009954
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #3
	bls _08009966
	bl sub_0800A1A4
_08009966:
	adds r0, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]

	non_word_aligned_thumb_func_start sub_08009972
sub_08009972: @ 0x08009972
	adds r0, r7, #0
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #1
	bls _08009984
	bl sub_0800A182
_08009984:
	adds r0, r7, #0
	movs r2, #0x92
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08009998
	cmp r0, #1
	beq _08009A46
	b _08009AF4
_08009998:
	movs r3, #0x86
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r5, #0x86
	lsls r5, r5, #1
	adds r1, r7, r5
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r5, r7, r6
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0]
	b _08009AF4
_08009A46:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #4]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #4]
	b _08009AF4
_08009AF4:
	adds r0, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	beq _08009BBC
	cmp r0, #1
	blo _08009B0E
	cmp r0, #2
	bne _08009B0C
	b _08009C6A
_08009B0C:
	b _08009D18
_08009B0E:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #8]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #8]
	b _08009D18
_08009BBC:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0xc]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0xc]
	b _08009D18
_08009C6A:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x10]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x10]
	b _08009D18
_08009D18:
	adds r0, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #1
	beq _08009DE6
	cmp r0, #1
	blo _08009D38
	cmp r0, #2
	bne _08009D30
	b _08009E94
_08009D30:
	cmp r0, #3
	bne _08009D36
	b _08009F42
_08009D36:
	b _08009FF0
_08009D38:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x14]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x14]
	b _08009FF0
_08009DE6:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x18]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x18]
	b _08009FF0
_08009E94:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x1c]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x1c]
	b _08009FF0
_08009F42:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x20]
	b _08009FF0
_08009FF0:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _0800A004
	cmp r0, #1
	beq _0800A0B2
	b _0800A160
_0800A004:
	movs r6, #0x86
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x24]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x24]
	b _0800A160
_0800A0B2:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r7, r6
	adds r2, r7, #0
	adds r2, #0x4c
	adds r3, r7, #0
	movs r3, #0x95
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r3, [r5]
	adds r5, r3, #0
	lsls r3, r5, #2
	adds r5, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	adds r6, r5, #0
	lsls r5, r6, #3
	adds r3, r3, r5
	adds r5, r7, #0
	movs r5, #0x93
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r5, [r6]
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	lsls r5, r5, #5
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r6, r3, r6
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	str r6, [r5]
	adds r5, r7, #0
	movs r3, #0x92
	lsls r3, r3, #2
	adds r6, r7, r3
	ldr r5, [r6]
	mov r8, r5
	mov r3, r8
	lsls r6, r3, #1
	adds r6, r6, r5
	lsls r5, r6, #5
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r3, r3, r7
	str r5, [r3]
	movs r5, #0x99
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r5, [r5]
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r6, r6, r7
	ldr r6, [r6]
	adds r5, r5, r6
	movs r6, #0x99
	lsls r6, r6, #2
	adds r6, r6, r7
	str r5, [r6]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r2, r3
	ldr r1, [r1, #0x28]
	ldr r2, [r2]
	orrs r1, r2
	str r1, [r0, #0x28]
	b _0800A160
_0800A160:
	adds r0, r7, #0
	movs r5, #0x95
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x95
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x95
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009972

	non_word_aligned_thumb_func_start sub_0800A182
sub_0800A182: @ 0x0800A182
	adds r0, r7, #0
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x94
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009954

	non_word_aligned_thumb_func_start sub_0800A1A4
sub_0800A1A4: @ 0x0800A1A4
	adds r0, r7, #0
	movs r6, #0x93
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r2, r7, #0
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009936

	non_word_aligned_thumb_func_start sub_0800A1C6
sub_0800A1C6: @ 0x0800A1C6
	adds r0, r7, #0
	movs r5, #0x92
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r2, r7, #0
	movs r6, #0x92
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r1, r7, #0
	movs r1, #0x92
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	bl sub_08009918

	non_word_aligned_thumb_func_start sub_0800A1E8
sub_0800A1E8: @ 0x0800A1E8
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
_0800A1F4:
	adds r0, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xa
	ble _0800A204
	b _0800A254
_0800A204:
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r1, r7, #0
	movs r6, #0x91
	lsls r6, r6, #2
	adds r2, r7, r6
	ldr r1, [r2]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0800A234
	adds r0, r7, #0
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	ldr r1, [r1]
	lsls r0, r1
	ldr r1, [r7, #0x48]
	orrs r0, r1
	str r0, [r7, #0x48]
_0800A234:
	adds r0, r7, #0
	movs r2, #0x91
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r2, r7, #0
	movs r3, #0x91
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r7, #0
	movs r5, #0x91
	lsls r5, r5, #2
	adds r2, r7, r5
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800A1F4
_0800A254:
	ldr r0, _0800A270
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	b _0800A274
	.align 2, 0
_0800A270: .4byte 0x04000004
_0800A274:
	movs r3, #0x9e
	lsls r3, r3, #2
	add sp, r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A284
sub_800A284: @ 0x0800A284
	push {r7, lr}
	mov r7, sp
	movs r0, #0
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A294
_0800A294:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A29C
sub_800A29C: @ 0x0800A29C
	push {r7, lr}
	mov r7, sp
	movs r0, #1
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2AC
_0800A2AC:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2B4
sub_800A2B4: @ 0x0800A2B4
	push {r7, lr}
	mov r7, sp
	movs r0, #2
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2C4
_0800A2C4:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2CC
sub_800A2CC: @ 0x0800A2CC
	push {r7, lr}
	mov r7, sp
	movs r0, #3
	bl sub_8009308
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A2DC
_0800A2DC:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A2E4
sub_800A2E4: @ 0x0800A2E4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	strh r1, [r0]
_0800A2FA:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	cmp r1, #3
	bls _0800A306
	b _0800A33E
_0800A306:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl sub_8009308
	cmp r0, #0
	beq _0800A328
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_0800A328:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0800A2FA
_0800A33E:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _0800A344
_0800A344:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A34C
sub_800A34C: @ 0x0800A34C
	push {r7, lr}
	sub sp, #0x5c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800A38C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800A38C
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800A390
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x50]
	ldr r0, _0800A394
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x58]
_0800A384:
	ldr r0, [r7, #0x58]
	cmp r0, #3
	ble _0800A398
	b _0800A448
	.align 2, 0
_0800A38C: .4byte 0x04000004
_0800A390: .4byte 0x04000006
_0800A394: .4byte 0x91400001
_0800A398:
	ldr r0, _0800A3A8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A3AC
	b _0800A3AE
	.align 2, 0
_0800A3A8: .4byte 0x04000006
_0800A3AC:
	b _0800A398
_0800A3AE:
	ldr r0, _0800A3BC
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A3C0
	b _0800A3C2
	.align 2, 0
_0800A3BC: .4byte 0x04000006
_0800A3C0:
	b _0800A3AE
_0800A3C2:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A43C
	adds r1, r0, r2
	ldr r0, [r7, #0x4c]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A440
	adds r1, r0, r2
	ldr r0, [r7, #0x50]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A444
	adds r1, r0, r2
	ldr r0, [r7, #0x54]
	str r0, [r1]
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A444
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xa0
	beq _0800A432
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A432:
	ldr r0, [r7, #0x58]
	adds r1, r0, #1
	str r1, [r7, #0x58]
	b _0800A384
	.align 2, 0
_0800A43C: .4byte 0x040000B0
_0800A440: .4byte 0x040000B4
_0800A444: .4byte 0x040000B8
_0800A448:
	ldr r0, _0800A460
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800A464
	.align 2, 0
_0800A460: .4byte 0x04000004
_0800A464:
	add sp, #0x5c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A46C
sub_800A46C: @ 0x0800A46C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A34C
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A480
_0800A480:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A488
sub_800A488: @ 0x0800A488
	push {r7, lr}
	sub sp, #0x64
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #2
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800A4C8
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800A4C8
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800A4CC
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x50]
	ldr r0, _0800A4D0
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x58]
_0800A4C0:
	ldr r0, [r7, #0x58]
	cmp r0, #3
	ble _0800A4D4
	b _0800A5EE
	.align 2, 0
_0800A4C8: .4byte 0x04000004
_0800A4CC: .4byte 0x04000006
_0800A4D0: .4byte 0xA3000001
_0800A4D4:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xe4
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
_0800A4E4:
	ldr r0, _0800A4F4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A4F8
	b _0800A4FA
	.align 2, 0
_0800A4F4: .4byte 0x04000006
_0800A4F8:
	b _0800A4E4
_0800A4FA:
	ldr r0, _0800A508
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A50C
	b _0800A50E
	.align 2, 0
_0800A508: .4byte 0x04000006
_0800A50C:
	b _0800A4FA
_0800A50E:
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A550
	adds r1, r0, r2
	ldr r0, [r7, #0x4c]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A554
	adds r1, r0, r2
	ldr r0, [r7, #0x50]
	str r0, [r1]
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A558
	adds r1, r0, r2
	ldr r0, [r7, #0x54]
	str r0, [r1]
	movs r0, #0
	str r0, [r7, #0x5c]
_0800A548:
	ldr r0, [r7, #0x5c]
	cmp r0, #0xe3
	ble _0800A55C
	b _0800A56A
	.align 2, 0
_0800A550: .4byte 0x040000B0
_0800A554: .4byte 0x040000B4
_0800A558: .4byte 0x040000B8
_0800A55C:
	movs r0, #2
	bl sub_800D640
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A548
_0800A56A:
	ldr r0, [r7, #0x58]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A590
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r7, #0x5c]
_0800A586:
	ldr r0, [r7, #0x5c]
	cmp r0, #0x9f
	ble _0800A594
	b _0800A5BA
	.align 2, 0
_0800A590: .4byte 0x040000B8
_0800A594:
	adds r1, r7, #0
	adds r1, #0x60
	ldr r2, [r1]
	ldrh r0, [r2]
	adds r2, #2
	str r2, [r1]
	ldr r1, [r7, #0x5c]
	cmp r0, r1
	beq _0800A5B2
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A5B2:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A586
_0800A5BA:
	ldr r0, [r7, #0x5c]
	cmp r0, #0xe3
	ble _0800A5C2
	b _0800A5E6
_0800A5C2:
	adds r0, r7, #0
	adds r0, #0x60
	ldr r1, [r0]
	ldrh r2, [r1]
	adds r1, #2
	str r1, [r0]
	cmp r2, #0
	beq _0800A5DE
	movs r0, #1
	ldr r1, [r7, #0x58]
	lsls r0, r1
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800A5DE:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #1
	str r1, [r7, #0x5c]
	b _0800A5BA
_0800A5E6:
	ldr r0, [r7, #0x58]
	adds r1, r0, #1
	str r1, [r7, #0x58]
	b _0800A4C0
_0800A5EE:
	ldr r0, _0800A608
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800A60C
	.align 2, 0
_0800A608: .4byte 0x04000004
_0800A60C:
	add sp, #0x64
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A614
sub_800A614: @ 0x0800A614
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A488
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A628
_0800A628:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A630
sub_800A630: @ 0x0800A630
	push {r4, r7, lr}
	sub sp, #0x1c
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x18
	strh r0, [r1]
	ldr r0, _0800A674
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #8]
	ldr r0, _0800A678
	str r0, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xe4
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_800F2F0
_0800A664:
	ldr r0, _0800A674
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A67C
	b _0800A67E
	.align 2, 0
_0800A674: .4byte 0x04000006
_0800A678: .4byte 0xB3000001
_0800A67C:
	b _0800A664
_0800A67E:
	ldr r0, _0800A68C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A690
	b _0800A692
	.align 2, 0
_0800A68C: .4byte 0x04000006
_0800A690:
	b _0800A67E
_0800A692:
	ldr r0, _0800A6B4
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r0, _0800A6B8
	ldr r1, [r7, #8]
	str r1, [r0]
	ldr r0, _0800A6BC
	ldr r1, [r7, #0xc]
	str r1, [r0]
_0800A6A4:
	ldr r0, _0800A6C0
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800A6C4
	b _0800A6C6
	.align 2, 0
_0800A6B4: .4byte 0x040000D4
_0800A6B8: .4byte 0x040000D8
_0800A6BC: .4byte 0x040000DC
_0800A6C0: .4byte 0x04000006
_0800A6C4:
	b _0800A6A4
_0800A6C6:
	ldr r0, _0800A6D4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800A6D8
	b _0800A6DA
	.align 2, 0
_0800A6D4: .4byte 0x04000006
_0800A6D8:
	b _0800A6C6
_0800A6DA:
	ldr r0, _0800A6E8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xa2
	bne _0800A6EC
	b _0800A6EE
	.align 2, 0
_0800A6E8: .4byte 0x04000006
_0800A6EC:
	b _0800A6DA
_0800A6EE:
	ldr r0, _0800A71C
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0800A702
	ldr r0, [r7]
	movs r1, #1
	orrs r0, r1
	str r0, [r7]
_0800A702:
	ldr r0, _0800A71C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x14]
	movs r0, #0
	str r0, [r7, #0x10]
_0800A712:
	ldr r0, [r7, #0x10]
	cmp r0, #0x9f
	ble _0800A720
	b _0800A744
	.align 2, 0
_0800A71C: .4byte 0x040000DC
_0800A720:
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r0]
	ldrh r2, [r1]
	ldr r4, [r7, #0x10]
	adds r3, r4, #2
	adds r1, #2
	str r1, [r0]
	cmp r2, r3
	beq _0800A73C
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800A73C:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A712
_0800A744:
	ldr r0, [r7, #0x10]
	cmp r0, #0xe3
	ble _0800A74C
	b _0800A76C
_0800A74C:
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r0]
	ldrh r2, [r1]
	adds r1, #2
	str r1, [r0]
	cmp r2, #0
	beq _0800A764
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0800A764:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A744
_0800A76C:
	adds r0, r7, #0
	adds r0, #0x18
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800A77E
_0800A77E:
	add sp, #0x1c
	pop {r4, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A788
sub_800A788: @ 0x0800A788
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A630
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A79C
_0800A79C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A7A4
sub_800A7A4: @ 0x0800A7A4
	push {r7, lr}
	sub sp, #0x28
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x24
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x10]
	ldr r0, _0800A81C
	str r0, [r7, #0x14]
	ldr r0, _0800A820
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A824
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r0, _0800A828
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r0, _0800A82C
	ldr r1, [r7, #0x14]
	str r1, [r0]
	bl sub_800EC94
	ldr r0, _0800A82C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r1, [r0]
	ldr r0, _0800A820
	cmp r1, r0
	beq _0800A80A
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
_0800A80A:
	adds r0, r7, #0
	adds r0, #0x24
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _0800A830
	.align 2, 0
_0800A81C: .4byte 0x8D400001
_0800A820: .4byte 0x01234567
_0800A824: .4byte 0x040000D4
_0800A828: .4byte 0x040000D8
_0800A82C: .4byte 0x040000DC
_0800A830:
	add sp, #0x28
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A838
sub_800A838: @ 0x0800A838
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x14
	strh r0, [r1]
	ldr r0, _0800A868
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #8]
	ldr r0, _0800A86C
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
_0800A860:
	ldr r0, [r7, #0x10]
	cmp r0, #3
	ble _0800A870
	b _0800A9B8
	.align 2, 0
_0800A868: .4byte 0x04000006
_0800A86C: .4byte 0x81400001
_0800A870:
	ldr r0, _0800A8D4
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8D8
	adds r1, r0, r2
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8DC
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r2, r1, #2
	ldr r1, _0800A8E0
	adds r0, r2, r1
	ldr r1, [r7, #0xc]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0]
_0800A8BA:
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A8E0
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800A8E4
	b _0800A8E6
	.align 2, 0
_0800A8D4: .4byte 0x04000202
_0800A8D8: .4byte 0x040000B0
_0800A8DC: .4byte 0x040000B4
_0800A8E0: .4byte 0x040000B8
_0800A8E4:
	b _0800A8BA
_0800A8E6:
	ldr r0, _0800A970
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800A910
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800A910:
	ldr r0, _0800A970
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A974
	adds r1, r0, r2
	ldr r0, [r7, #4]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A978
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A97C
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
_0800A954:
	ldr r0, [r7, #0x10]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800A97C
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800A980
	b _0800A982
	.align 2, 0
_0800A970: .4byte 0x04000202
_0800A974: .4byte 0x040000B0
_0800A978: .4byte 0x040000B4
_0800A97C: .4byte 0x040000B8
_0800A980:
	b _0800A954
_0800A982:
	ldr r0, _0800A9B4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x10]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	beq _0800A9AC
	ldr r0, [r7, #0x10]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800A9AC:
	ldr r0, [r7, #0x10]
	adds r1, r0, #1
	str r1, [r7, #0x10]
	b _0800A860
	.align 2, 0
_0800A9B4: .4byte 0x04000202
_0800A9B8:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800A9CA
_0800A9CA:
	add sp, #0x18
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    