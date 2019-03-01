.include "asm/macros.inc"

.syntax unified


	ARM_FUNC_START sub_8003C88
sub_8003C88: @ sub_8003C88
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003CE8
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r7, _08003CEC
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r2, [r7]
_08003CB0:
	ldrh r3, [r7]
	cmp r2, r3
	mov r2, r3
	beq _08003CB0
	ldrh r8, [r4]
	str r5, [r4]
	str r6, [r4]
	strh r3, [r0], #2
	strh r8, [r0], #2
	cmp r0, r1
	bne _08003CB0
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003CE8: .4byte 0x04000100
_08003CEC: .4byte 0x04000006
.global sub_8003C88_end
sub_8003C88_end:

	ARM_FUNC_START sub_8003CF0
sub_8003CF0: @ sub_8003CF0
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003D34
	mov r5, #4
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, [r4]
	and r3, r2, r5
_08003D0C:
	ldr r6, [r4]
	and r7, r6, r5
	cmp r3, r7
	mov r3, r7
	beq _08003D0C
	str r6, [r0], #4
	cmp r0, r1
	bne _08003D0C
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003D34: .4byte 0x04000004
.global sub_8003CF0_end
sub_8003CF0_end:

	ARM_FUNC_START sub_8003D38
sub_8003D38: @ sub_8003D38
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003DA4
	mov r5, #0
	str r5, [r4]
	mov r6, #0x800000
	str r6, [r4]
	ldr r7, _08003DA8
	mov r8, #2
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r2, [r7]
	and r3, r2, r8
_08003D68:
	ldrh sb, [r7]
	and sl, sb, r8
	cmp r3, sl
	mov r3, sl
	beq _08003D68
	ldrh fp, [r4]
	str r5, [r4]
	str r6, [r4]
	strh sb, [r0], #2
	strh fp, [r0], #2
	cmp r0, r1
	bne _08003D68
	str r5, [r4]
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003DA4: .4byte 0x04000100
_08003DA8: .4byte 0x04000004
.global sub_8003D38_end
sub_8003D38_end:


	ARM_FUNC_START sub_8003DAC
sub_8003DAC: @ sub_8003DAC
	stmda sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _08003DF0
	mov r5, #1
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, [r4]
	and r3, r2, r5
_08003DC8:
	ldr r6, [r4]
	and r7, r6, r5
	cmp r3, r7
	mov r3, r7
	beq _08003DC8
	str r6, [r0], #4
	cmp r0, r1
	bne _08003DC8
	ldmib sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08003DF0: .4byte 0x04000004

.global sub_8003DAC_end
sub_8003DAC_end:
