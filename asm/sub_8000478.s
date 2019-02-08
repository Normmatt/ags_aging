.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START agingMain
agingMain: @ 0x08000478
	push {r7, lr}
	sub sp, #0x88
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _080004A4
	movs r1, #8
	strh r1, [r0]
	ldr r0, _080004A8
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080004B0
	ldr r1, _080004AC
	adds r0, r1, #0
	bl DrawHeading
	b _080004B8
	.align 2, 0
_080004A4: .4byte 0x04000004
_080004A8: .4byte gUnknown_03002BB0
_080004AC: .4byte gUnknown_0801829C
_080004B0:
	ldr r1, _08000534
	adds r0, r1, #0
	bl DrawHeading
_080004B8:
	bl LetAllTestsRunOnce
	movs r0, #5
	movs r1, #0
	bl SkipSpecificTestInClass
	movs r0, #4
	bl SkipAllTestsInThisClass
	bl RunAllTestClasses
	cmp r0, #0
	beq _080004D6
	bl sub_800060C
_080004D6:
	bl sub_8000684
	movs r0, #0
	bl SetIME
	ldr r1, _08000538
	movs r0, #1
	bl sub_800D68C
	movs r0, #1
	bl SetIME
	ldr r0, _0800053C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000540
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000544
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000544
	movs r1, #0x84
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _08000540
	ldr r1, _08000548
	str r1, [r0]
	ldr r0, _0800053C
	ldr r1, _0800054C
	str r1, [r0]
	bl LetAllTestsRunOnce
	movs r0, #2
	bl SkipAllTestsInThisClass
	movs r0, #4
	bl SkipAllTestsInThisClass
	movs r0, #5
	bl SkipAllTestsInThisClass
	movs r0, #6
	movs r1, #3
	bl SkipSpecificTestInClass
_08000532:
	b _08000552
	.align 2, 0
_08000534: .4byte gUnknown_080182B0
_08000538: .4byte sub_8008118+1
_0800053C: .4byte 0x04000104
_08000540: .4byte 0x04000108
_08000544: .4byte 0x0400010C
_08000548: .4byte 0x0084FFC4
_0800054C: .4byte 0x0083BFFE
	.byte 0x4C, 0xE0
_08000552:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x68
	bl sub_8003DF4
	ldr r0, _08000580
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08000588
	ldr r1, _08000584
	adds r0, r1, #0
	bl DrawHeading
	b _08000590
	.align 2, 0
_08000580: .4byte gUnknown_03002BB0
_08000584: .4byte gUnknown_0801829C
_08000588:
	ldr r1, _0800059C
	adds r0, r1, #0
	bl DrawHeading
_08000590:
	bl RunAllTestClasses
	cmp r0, #0
	beq _080005A0
	b _080005EC
	.align 2, 0
_0800059C: .4byte gUnknown_080182B0
_080005A0:
	movs r0, #0
	str r0, [r7, #0x44]
_080005A4:
	ldr r0, [r7, #0x44]
	cmp r0, #0x77
	ble _080005AC
	b _080005BA
_080005AC:
	movs r0, #1
	bl sub_800D640
	ldr r0, [r7, #0x44]
	adds r1, r0, #1
	str r1, [r7, #0x44]
	b _080005A4
_080005BA:
	ldr r0, _080005E0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _080005DE
	ldr r0, _080005E4
	ldr r1, [r0]
	cmp r1, #0
	beq _080005DE
	ldr r0, _080005E8
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	ldr r1, _080005E0
	ldr r2, [r1, #8]
	cmp r0, r2
	blt _080005DE
	bl sub_8000728
_080005DE:
	b _08000532
	.align 2, 0
_080005E0: .4byte gUnknown_03002BB0
_080005E4: .4byte gUnknown_03000000
_080005E8: .4byte 0x0400010C
_080005EC:
	ldr r0, _08000608
	movs r1, #0
	str r1, [r0]
	bl sub_800060C
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x88
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000608: .4byte 0x04000104
