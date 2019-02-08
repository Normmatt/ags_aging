.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_80020A0
sub_80020A0: @ 0x080020A0
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _080020C4
	ldr r2, [r7]
	bl sprintf
	adds r2, r7, #4
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x84
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080020C4: .4byte gUnknown_080190B0

	THUMB_FUNC_START sub_80020C8
sub_80020C8: @ 0x080020C8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800F37C
	ldr r1, [r7, #4]
	str r0, [r1]
	movs r0, #0
	b _080020DE
_080020DE:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    