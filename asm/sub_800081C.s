.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START DrawFinalTestResult
DrawFinalTestResult: @ 0x0800081C
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800085C
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r7, #4]
	str r2, [r7, #8]
	bl m4aSoundInit
	ldr r0, [r7]
	cmp r0, #0
	bne _0800086C
	movs r0, #7
	bl m4aSongNumStart
	ldr r0, _08000860
	adds r1, r0, #0
	ldr r1, _08000864
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08000868
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	b _0800088C
	.align 2, 0
_0800085C: .4byte gUnknown_080183A4
_08000860: .4byte gUnknown_03001B40
_08000864: .4byte 0x00001008
_08000868: .4byte 0x0000205F
_0800086C:
	movs r0, #0xb
	bl m4aSongNumStart
	ldr r0, _080008D0
	adds r1, r0, #0
	ldr r1, _080008D4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _080008D8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800088C:
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0xf
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _080008D0
	movs r1, #2
	str r1, [r0]
	ldr r0, _080008D0
	movs r1, #0x11
	str r1, [r0, #4]
	ldr r2, _080008DC
	movs r0, #0
	movs r1, #3
	bl DrawString
_080008CE:
	b _080008E2
	.align 2, 0
_080008D0: .4byte gUnknown_03001B40
_080008D4: .4byte 0x00001008
_080008D8: .4byte 0x0000105F
_080008DC: .4byte gUnknown_080183AC
	.byte 0x34, 0xE0
_080008E2:
	movs r0, #1
	bl WaitForInterrupt
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl UpdateTilemaps
	ldr r0, _08000918
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800092C
	ldr r0, _0800091C
	movs r1, #9
	str r1, [r0]
	ldr r0, _0800091C
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, [r7]
	cmp r0, #0
	bne _08000920
	ldr r2, [r7, #4]
	b _08000922
	.align 2, 0
_08000918: .4byte gUnknown_0300045C
_0800091C: .4byte gUnknown_03001B40
_08000920:
	ldr r2, [r7, #8]
_08000922:
	movs r0, #0
	movs r1, #3
	bl DrawString
	b _08000942
_0800092C:
	ldr r0, _08000944
	movs r1, #9
	str r1, [r0]
	ldr r0, _08000944
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r2, _08000948
	movs r0, #0
	movs r1, #3
	bl DrawString
_08000942:
	b _080008CE
	.align 2, 0
_08000944: .4byte gUnknown_03001B40
_08000948: .4byte gUnknown_080183C8
	.byte 0x0F, 0xF0, 0x54, 0xFC
	.byte 0x0F, 0xF0, 0xBA, 0xFE, 0x03, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47
    