.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START IdentifyEeprom
IdentifyEeprom: @ 0x08012174
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08012190
	ldr r1, _08012188
	ldr r0, _0801218C
	str r0, [r1]
	b _080121AC
	.align 2, 0
_08012188: .4byte gUnknown_03003E20
_0801218C: .4byte gUnknown_08141E08
_08012190:
	cmp r0, #0x40
	bne _080121A4
	ldr r1, _0801219C
	ldr r0, _080121A0
	str r0, [r1]
	b _080121AC
	.align 2, 0
_0801219C: .4byte gUnknown_03003E20
_080121A0: .4byte gUnknown_08141E14
_080121A4:
	ldr r1, _080121B0
	ldr r0, _080121B4
	str r0, [r1]
	movs r2, #1
_080121AC:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_080121B0: .4byte gUnknown_03003E20
_080121B4: .4byte gUnknown_08141E08

	THUMB_FUNC_START EepromTimerIntr
EepromTimerIntr: @ 0x080121B8
	ldr r1, _080121D4
	ldrh r0, [r1]
	cmp r0, #0
	beq _080121D2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080121D2
	ldr r1, _080121D8
	movs r0, #1
	strb r0, [r1]
_080121D2:
	bx lr
	.align 2, 0
_080121D4: .4byte gUnknown_0300164A
_080121D8: .4byte gUnknown_0300164C

	THUMB_FUNC_START SetEepromTimerIntr
SetEepromTimerIntr: @ 0x080121DC
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08012210
	ldr r0, _08012200
	strb r1, [r0]
	ldr r1, _08012204
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08012208
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0801220C
	str r0, [r2]
	movs r0, #0
	b _08012212
	.align 2, 0
_08012200: .4byte gUnknown_03001648
_08012204: .4byte gUnknown_03001650
_08012208: .4byte 0x04000100
_0801220C: .4byte EepromTimerIntr+1
_08012210:
	movs r0, #1
_08012212:
	bx lr

	THUMB_FUNC_START StartEepromTimer
StartEepromTimer: @ 0x08012214
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08012280
	ldr r1, _08012284
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _08012288
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _0801228C
	ldr r4, _08012290
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08012294
	strb r6, [r1]
	ldr r2, _08012298
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012280: .4byte gUnknown_03001654
_08012284: .4byte 0x04000208
_08012288: .4byte gUnknown_03001650
_0801228C: .4byte 0x04000202
_08012290: .4byte gUnknown_03001648
_08012294: .4byte gUnknown_0300164C
_08012298: .4byte gUnknown_0300164A

	THUMB_FUNC_START StopEepromTimer
StopEepromTimer: @ 0x0801229C
	ldr r3, _080122CC
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080122D0
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080122D4
	ldr r0, _080122D8
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080122DC
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080122CC: .4byte 0x04000208
_080122D0: .4byte gUnknown_03001650
_080122D4: .4byte 0x04000200
_080122D8: .4byte gUnknown_03001648
_080122DC: .4byte gUnknown_03001654

	THUMB_FUNC_START Dma3Transmit
Dma3Transmit: @ 0x080122E0
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08012340
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _08012344
	ldrh r4, [r5]
	ldr r3, _08012348
	ands r4, r3
	ldr r3, _0801234C
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _08012350
	str r0, [r3]
	ldr r0, _08012354
	str r1, [r0]
	ldr r1, _08012358
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08012334
	ldr r2, _0801235C
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_0801232C:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801232C
_08012334:
	ldr r0, _08012340
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012340: .4byte 0x04000208
_08012344: .4byte 0x04000204
_08012348: .4byte 0x0000F8FF
_0801234C: .4byte gUnknown_03003E20
_08012350: .4byte 0x040000D4
_08012354: .4byte 0x040000D8
_08012358: .4byte 0x040000DC
_0801235C: .4byte 0x040000DE

	THUMB_FUNC_START ReadEepromDword
ReadEepromDword: @ 0x08012360
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08012378
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _08012380
	ldr r0, _0801237C
	b _08012402
	.align 2, 0
_08012378: .4byte gUnknown_03003E20
_0801237C: .4byte 0x000080FF
_08012380:
	ldr r0, _0801240C
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _080123AA
_08012396:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08012396
_080123AA:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0801240C
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl Dma3Transmit
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl Dma3Transmit
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_080123D8:
	movs r1, #0
	movs r3, #0
_080123DC:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _080123DC
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080123D8
	movs r0, #0
_08012402:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801240C: .4byte gUnknown_03003E20

	THUMB_FUNC_START ProgramEepromDword
ProgramEepromDword: @ 0x08012410
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08012428
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _08012430
	ldr r0, _0801242C
	b _080124D4
	.align 2, 0
_08012428: .4byte gUnknown_03003E20
_0801242C: .4byte 0x000080FF
_08012430:
	ldr r0, _08012470
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_08012446:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0801244C:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0801244C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08012446
	movs r1, #0
	ldr r0, _08012470
	adds r2, r0, #0
	ldr r0, [r0]
	b _08012482
	.align 2, 0
_08012470: .4byte gUnknown_03003E20
_08012474:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_08012482:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _08012474
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _080124DC
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl Dma3Transmit
	ldr r0, _080124E0
	bl StartEepromTimer
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _080124E4
_080124B4:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _080124CE
	ldrb r0, [r2]
	cmp r0, #0
	beq _080124B4
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080124CE
	ldr r4, _080124E8
_080124CE:
	bl StopEepromTimer
	adds r0, r4, #0
_080124D4:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080124DC: .4byte gUnknown_03003E20
_080124E0: .4byte gUnknown_08141E20
_080124E4: .4byte gUnknown_0300164C
_080124E8: .4byte 0x0000C001

	THUMB_FUNC_START VerifyEepromDword
VerifyEepromDword: @ 0x080124EC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _08012508
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08012510
	ldr r0, _0801250C
	b _0801253A
	.align 2, 0
_08012508: .4byte gUnknown_03003E20
_0801250C: .4byte 0x000080FF
_08012510:
	adds r0, r1, #0
	mov r1, sp
	bl ReadEepromDword
	mov r2, sp
	movs r3, #0
	b _08012528
_0801251E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08012538
_08012528:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0801251E
	movs r5, #0x80
	lsls r5, r5, #8
_08012538:
	adds r0, r5, #0
_0801253A:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012544
sub_8012544: @ 0x08012544
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08012556
_08012550:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08012556:
	cmp r6, #2
	bhi _0801257A
	adds r0, r4, #0
	adds r1, r5, #0
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08012550
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08012550
_0801257A:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    