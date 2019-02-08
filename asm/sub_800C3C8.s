.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800C3C8
sub_800C3C8: @ 0x0800C3C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x17c
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800C3FC
	movs r2, #0xf0
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800C3EC:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #9
	ble _0800C400
	b _0800C4D8
	.align 2, 0
_0800C3FC: .4byte gUnknown_0808322C
_0800C400:
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #8
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	adds r1, r7, #4
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C4B0
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r1, _0800C4AC
	adds r2, r7, #0
	adds r2, #8
	adds r3, r7, #0
	adds r4, r7, #0
	adds r4, #0xf8
	ldr r3, [r4]
	adds r5, r3, #0
	lsls r4, r5, #1
	adds r4, r4, r3
	lsls r3, r4, #2
	ldr r4, [r7]
	adds r6, r4, #0
	lsls r5, r6, #4
	subs r5, r5, r4
	lsls r4, r5, #3
	adds r3, r3, r4
	adds r4, r2, r3
	ldr r2, [r4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #0xfc
	movs r0, #1
	movs r1, #1
	bl DrawString
	b _0800C4BA
	.align 2, 0
_0800C4A8: .4byte gUnknown_03001B40
_0800C4AC: .4byte gUnknown_0808331C
_0800C4B0:
	ldr r2, _0800C4D4
	movs r0, #1
	movs r1, #1
	bl DrawString
_0800C4BA:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800C3EC
	.align 2, 0
_0800C4D4: .4byte gUnknown_0808321C
_0800C4D8:
	add sp, #0x17c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800C4E0
sub_800C4E0: @ 0x0800C4E0
	push {r7, lr}
	mov r7, sp
	bl sub_800DFB0
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    