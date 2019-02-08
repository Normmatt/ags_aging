.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START testprogramMain
testprogramMain: @ 0x08000370
	push {r7, lr}
	sub sp, #0x44
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _0800039C
	movs r1, #8
	strh r1, [r0]
	ldr r0, _080003A0
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _080003A8
	ldr r1, _080003A4
	adds r0, r1, #0
	bl DrawHeading
	b _080003B0
	.align 2, 0
_0800039C: .4byte 0x04000004
_080003A0: .4byte gUnknown_03002BB0
_080003A4: .4byte gUnknown_08018264
_080003A8:
	ldr r1, _080003D0
	adds r0, r1, #0
	bl DrawHeading
_080003B0:
	ldr r1, _080003D4
	adds r0, r1, #0
	movs r1, #0
	bl sub_8000FF0
	ldr r0, _080003D8
	ldr r1, [r0]
	adds r0, r1, #0
	bl testmain
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
_080003CC:
	b _080003DE
	.align 2, 0
_080003D0: .4byte gUnknown_08018278
_080003D4: .4byte gUnknown_08018140
_080003D8: .4byte gUnknown_03002BB0
	.byte 0x00, 0xE0
_080003DE:
	b _080003CC
	.byte 0x11, 0xB0, 0x80, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80003E8
sub_80003E8: @ 0x080003E8
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _0800042C
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #3
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x44
	adds r1, r7, #0
	adds r1, #0x64
	bl sub_8003DF4
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800042C: .4byte 0x04000004

	THUMB_FUNC_START sub_8000430
sub_8000430: @ 0x08000430
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_800D790
	ldr r0, _08000474
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #4
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	str r1, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x44
	adds r1, r7, #0
	adds r1, #0x64
	bl sub_8003DF4
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_800D854
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000474: .4byte 0x04000004
