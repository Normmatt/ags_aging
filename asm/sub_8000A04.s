.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START DrawHeading
DrawHeading: @ 0x08000A04
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
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
	bl sub_800DA4C
	movs r0, #1
	bl sub_800E710
	movs r0, #2
	bl sub_800E9C0
	bl sub_800EA20
	ldr r0, _08000AB8
	adds r1, r0, #0
	ldr r1, _08000ABC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _08000AC0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r2, _08000AC4
	movs r0, #0
	movs r1, #3
	bl DrawString
	ldr r0, _08000AB8
	movs r1, #1
	str r1, [r0]
	ldr r0, _08000AB8
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0
	movs r1, #3
	ldr r2, [r7]
	bl DrawString
	ldr r0, _08000AB8
	adds r1, r0, #0
	ldr r2, _08000ABC
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _08000AB8
	adds r0, r1, #0
	ldr r3, _08000AC8
	adds r1, r1, r3
	ldr r2, _08000ACC
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	bl sub_800DFB0
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	ldr r3, _08000AD0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000AB8: .4byte gUnknown_03001B40
_08000ABC: .4byte 0x00001008
_08000AC0: .4byte 0x0000405F
_08000AC4: .4byte gUnknown_0801841C
_08000AC8: .4byte 0x0000100C
_08000ACC: .4byte gUnknown_08018408
_08000AD0: .4byte 0x0000FF7F
