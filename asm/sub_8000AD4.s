.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START RunAllTestClasses
RunAllTestClasses: @ 0x08000AD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0xc]
	bl ClearAllTestClassesResults
	bl DrawTestResults
	movs r0, #0
	str r0, [r7]
_08000AEA:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000AF2
	b _08000B4C
_08000AF2:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7, #4]
_08000AFA:
	ldr r0, _08000B14
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000B18
	b _08000B32
	.align 2, 0
_08000B14: .4byte gUnknown_030002FC
_08000B18:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl StartTest
	ldr r1, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	bl DrawTestResults
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000AFA
_08000B32:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08000B44
	movs r0, #1
	ldr r1, [r7]
	lsls r0, r1
	ldr r1, [r7, #0xc]
	orrs r0, r1
	str r0, [r7, #0xc]
_08000B44:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000AEA
_08000B4C:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	b _08000B52
_08000B52:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START LetAllTestsRunOnce
LetAllTestsRunOnce: @ 0x08000B5C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_08000B66:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000B6E
	b _08000BC4
_08000B6E:
	movs r0, #0
	str r0, [r7, #4]
_08000B72:
	ldr r0, _08000B8C
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000B90
	b _08000BBC
	.align 2, 0
_08000B8C: .4byte gUnknown_030002FC
_08000B90:
	ldr r0, _08000BB8
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #1
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000B72
	.align 2, 0
_08000BB8: .4byte gUnknown_030002FC
_08000BBC:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000B66
_08000BC4:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START SkipSpecificTestInClass
SkipSpecificTestInClass: @ 0x08000BCC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _08000C00
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000C00: .4byte gUnknown_030002FC

	THUMB_FUNC_START SkipAllTestsInThisClass
SkipAllTestsInThisClass: @ 0x08000C04
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_08000C10:
	ldr r0, _08000C2C
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000C30
	b _08000C5C
	.align 2, 0
_08000C2C: .4byte gUnknown_030002FC
_08000C30:
	ldr r0, _08000C58
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000C10
	.align 2, 0
_08000C58: .4byte gUnknown_030002FC
_08000C5C:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START ClearAllTestClassesResults
ClearAllTestClassesResults: @ 0x08000C64
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_08000C6E:
	ldr r0, [r7]
	cmp r0, #6
	bls _08000C76
	b _08000CEC
_08000C76:
	movs r0, #0
	str r0, [r7, #4]
_08000C7A:
	ldr r0, _08000C94
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r7, #4]
	ldr r1, [r1]
	cmp r0, r1
	blt _08000C98
	b _08000CE4
	.align 2, 0
_08000C94: .4byte gUnknown_030002FC
_08000C98:
	ldr r0, _08000CE0
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, _08000CE0
	ldr r1, [r7]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r0]
	adds r0, r1, r2
	movs r1, #0
	str r1, [r0, #8]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _08000C7A
	.align 2, 0
_08000CE0: .4byte gUnknown_030002FC
_08000CE4:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _08000C6E
_08000CEC:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
    