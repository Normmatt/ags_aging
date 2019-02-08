.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8000684
sub_8000684: @ 0x08000684
	push {r7, lr}
	mov r7, sp
	bl m4aSoundInit
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	movs r0, #7
	bl m4aSongNumStart
	bl sub_800D9D8
_080006A4:
	ldr r0, _080006BC
	ldrh r1, [r0, #2]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080006C0
	b _08000718
	.align 2, 0
_080006BC: .4byte gUnknown_03000460
_080006C0:
	movs r0, #1
	bl sub_800D640
	bl SoundVSync_rev01
	bl m4aSoundMain
	bl sub_800DFB0
	bl sub_800D8B0
	ldr r0, _080006FC
	movs r1, #5
	str r1, [r0]
	ldr r0, _080006FC
	movs r1, #0x10
	str r1, [r0, #4]
	ldr r0, _08000700
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08000708
	ldr r2, _08000704
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000712
	.align 2, 0
_080006FC: .4byte gUnknown_03001B40
_08000700: .4byte gUnknown_0300045C
_08000704: .4byte gUnknown_08018308
_08000708:
	ldr r2, _08000714
	movs r0, #0
	movs r1, #1
	bl DrawString
_08000712:
	b _080006A4
	.align 2, 0
_08000714: .4byte gUnknown_0801831C
_08000718:
	bl m4aMPlayAllStop
	bl SoundVSyncOff_rev01
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8000728
sub_8000728: @ 0x08000728
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	bl sub_800D790
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _0800078C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800078C
	ldr r2, _08000790
	adds r1, r2, #0
	strh r1, [r0]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	ldr r0, _0800078C
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08000794
	movs r1, #0
	str r1, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x48
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800078C: .4byte 0x04000132
_08000790: .4byte 0x0000C008
_08000794: .4byte gUnknown_03000000
