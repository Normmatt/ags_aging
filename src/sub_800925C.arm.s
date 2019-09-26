.include "asm/macros.inc"

.syntax unified

	ARM_FUNC_START sub_800925C
sub_800925C: @ sub_800925C
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #0x400
	mov r4, r0
	mov r5, #0
	str r5, [r4]
	str r1, [r4]
_08009274:
	subs r2, r2, #1
	bne _08009274
	mov r0, r0
	mov r0, r0
	ldrh r0, [r4]
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	ARM_FUNC_START sub_8009294
sub_8009294: @ sub_8009294
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #0x400
	ldr r4, _080092F8
	mov fp, #0
	str fp, [r4]
	str fp, [r4, #4]
	str fp, [r4, #8]
	str fp, [r4, #0xc]
	mov r5, #0x840000
	str r5, [r4, #0xc]
	orr r5, r5, r0
	str r5, [r4, #8]
	str r5, [r4, #4]
	str r5, [r4]
_080092CC:
	subs r2, r2, #1
	bne _080092CC
	mov r0, r0
	mov r0, r0
	ldrh r0, [r4, #0xc]
	str fp, [r4]
	str fp, [r4, #4]
	str fp, [r4, #8]
	str fp, [r4, #0xc]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_080092F8: .4byte 0x04000100

  	ARM_FUNC_START sub_80092FC  
sub_80092FC:
	subs r0, r0, #1
	bne sub_80092FC
	bx lr
    