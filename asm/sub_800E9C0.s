.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800E9C0
sub_800E9C0: @ 0x0800E9C0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E9E0
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r3, _0800E9E4
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9E0: .4byte gUnknown_08101A60
_0800E9E4: .4byte sub_800E9E8+1

	THUMB_FUNC_START sub_800E9E8
sub_800E9E8: @ 0x0800E9E8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #1
	str r1, [r0]
	ldr r0, _0800EA14
	ldr r1, [r7, #4]
	ldrb r2, [r1]
	adds r1, r2, #0
	subs r1, #0x20
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800EA18
	.align 2, 0
_0800EA14: .4byte gUnknown_0300046C
_0800EA18:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
