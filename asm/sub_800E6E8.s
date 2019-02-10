.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800E6E8
sub_800E6E8: @ 0x0800E6E8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0800E708
	movs r2, #0xc0
	lsls r2, r2, #4
	ldr r3, _0800E70C
	ldr r0, [r7]
	bl sub_800DD50
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E708: .4byte gUnknown_08100C7C
_0800E70C: .4byte sub_800E224+1
