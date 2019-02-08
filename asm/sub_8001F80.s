.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8001F80
sub_8001F80: @ 0x08001F80
	push {r7, lr}
	sub sp, #0x84
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	ldr r1, _08001FA4
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
_08001FA4: .4byte gUnknown_08019054
