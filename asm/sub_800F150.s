.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800F150
sub_800F150: @ 0x0800F150
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r2, [r7]
	str r3, [r7, #4]
	subs r4, r1, r0
	mov r2, sp
	subs r2, r2, r4
	mov sp, r2
	movs r1, #0
_0800F164:
	ldr r3, [r0, r1]
	str r3, [r2, r1]
	adds r1, #4
	cmp r1, r4
	bne _0800F164
	ldr r0, _0800F184
	mov lr, r0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bx sp
_0800F178:
    add sp, r4
    add sp, sp, #8
    pop {r4,r7}
    pop {r1}
    bx  r1
    
    .byte 0x00, 0x00
_0800F184: .4byte _0800F178+1
