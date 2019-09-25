.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800326C
sub_800326C: @ 0x0800326C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08003294
	movs r5, #0
	str r5, [r4]
	ldr r6, _08003298
	str r6, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldr r2, [r4]
	ldrh r0, [r4]
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003294: .4byte 0x04000100
_08003298: .4byte 0x00800000
.global sub_800326C_end
sub_800326C_end:

	ARM_FUNC_START sub_800329C
sub_800329C: @ sub_800329C
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003304
	ldrh r8, [r7]
	ldrh sb, [pc, #0x58]
	and sb, r8, sb
	add sl, r0, r0
	add sl, sl, r0
	add sl, sl, #2
	orr sb, sb, r1, lsl sl
	strh sb, [r7]
	mov r2, #0x8000000
	add r2, r2, r0, lsl #25
	ldr r4, _0800330C
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldr r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003304: .4byte 0x04000204
	.byte 0x03, 0xF8, 0xFF, 0xFF
_0800330C: .4byte 0x04000100

.global sub_800329C_end
sub_800329C_end:

	ARM_FUNC_START sub_8003310
sub_8003310: @ sub_8003310
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _08003368
	ldrh r8, [r7]
	ldrh sb, [pc, #0x48]
	and sb, r8, sb
	orr sb, sb, r0
	strh sb, [r7]
	mov r2, #0xe000000
	ldr r4, _08003370
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrb r3, [r2]
	ldrh r0, [r4]
	str r5, [r4]
	strh r8, [r7]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003368: .4byte 0x04000204
	.byte 0xFC, 0xFF, 0xFF, 0xFF
_08003370: .4byte 0x04000100

.global sub_8003310_end
sub_8003310_end:
