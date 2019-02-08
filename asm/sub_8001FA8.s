.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8001FA8
sub_8001FA8: @ 0x08001FA8
	push {r4, r5, r7, lr}
	sub sp, #0x90
	add r7, sp, #8
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_08001FB4:
	ldr r0, [r7, #4]
	cmp r0, #3
	ble _08001FBC
	b _0800200C
_08001FBC:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08002008
	ldr r2, [r7, #4]
	adds r3, r2, #0
	lsls r2, r3, #1
	ldr r3, [r7, #4]
	adds r4, r3, #0
	lsls r3, r4, #3
	ldr r5, [r7]
	adds r4, r3, r5
	ldr r3, [r4]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #1
	adds r5, r4, #1
	str r5, [sp]
	ldr r4, [r7, #4]
	adds r5, r4, #0
	lsls r4, r5, #3
	ldr r5, [r7]
	adds r4, r4, r5
	adds r5, r4, #4
	ldr r4, [r5]
	str r4, [sp, #4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #8
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08001FB4
	.align 2, 0
_08002008: .4byte gUnknown_08019064
_0800200C:
	ldr r2, _08002020
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x90
	pop {r4, r5, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002020: .4byte gUnknown_08019080
