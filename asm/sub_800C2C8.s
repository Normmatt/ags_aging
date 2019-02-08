.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800C2C8
sub_800C2C8: @ 0x0800C2C8
	push {r4, r5, r7, lr}
	sub sp, #0xac
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800C2FC
	movs r2, #0xa0
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	movs r0, #0
	str r0, [r1]
_0800C2EC:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	ldr r0, [r1]
	cmp r0, #9
	ble _0800C300
	b _0800C3C0
	.align 2, 0
_0800C2FC: .4byte gUnknown_0808317C
_0800C300:
	ldr r0, _0800C3B0
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xa8
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #2
	adds r4, r4, r3
	lsls r3, r4, #4
	adds r2, r2, r3
	adds r1, r1, r2
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _0800C3B0
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xa8
	ldr r2, [r3]
	adds r3, r2, #0
	lsls r2, r3, #3
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #2
	adds r4, r4, r3
	lsls r3, r4, #4
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	adds r1, r7, #4
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xa8
	ldr r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C37A
	ldr r0, _0800C3B0
	adds r1, r0, #0
	ldr r1, _0800C3B4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _0800C3B8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800C37A:
	ldr r2, _0800C3BC
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, _0800C3B0
	adds r1, r0, #0
	ldr r1, _0800C3B4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xa8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xa8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xa8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800C2EC
	.align 2, 0
_0800C3B0: .4byte gUnknown_03001B40
_0800C3B4: .4byte 0x00001008
_0800C3B8: .4byte 0x0000405F
_0800C3BC: .4byte gUnknown_0808321C
_0800C3C0:
	add sp, #0xac
	pop {r4, r5, r7}
	pop {r0}
	bx r0
    