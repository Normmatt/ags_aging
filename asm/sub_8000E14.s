.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8000E14
sub_8000E14: @ 0x08000E14
	push {r7, lr}
	sub sp, #0x1c
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, _08000E40
	ldr r1, [r0]
	str r1, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x14]
_08000E34:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #4]
	cmp r0, r1
	blt _08000E44
	b _08000EE0
	.align 2, 0
_08000E40: .4byte gUnknown_03001B40
_08000E44:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _08000E68
	ldr r2, _08000E64
	movs r0, #0
	movs r1, #4
	bl DrawString
	b _08000ED2
	.align 2, 0
_08000E64: .4byte gUnknown_0801875C
_08000E68:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _08000E94
	ldr r2, _08000E90
	movs r0, #0
	movs r1, #4
	bl DrawString
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #8]
	b _08000ECA
	.align 2, 0
_08000E90: .4byte gUnknown_08018760
_08000E94:
	ldr r0, [r7, #0x14]
	adds r2, r0, #0
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r1, [r7]
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _08000EB8
	ldr r2, _08000EB4
	movs r0, #0
	movs r1, #2
	bl DrawString
	b _08000ECA
	.align 2, 0
_08000EB4: .4byte gUnknown_08018764
_08000EB8:
	ldr r2, _08000EDC
	movs r0, #0
	movs r1, #1
	bl DrawString
	ldr r0, [r7, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0xc]
_08000ECA:
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
_08000ED2:
	ldr r0, [r7, #0x14]
	adds r1, r0, #1
	str r1, [r7, #0x14]
	b _08000E34
	.align 2, 0
_08000EDC: .4byte gUnknown_08018768
_08000EE0:
	ldr r0, _08000F14
	ldr r1, [r7, #0x18]
	adds r2, r1, #0
	adds r2, #9
	str r2, [r0]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _08000F2A
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _08000F2A
	ldr r2, _08000F18
	movs r0, #1
	movs r1, #5
	bl DrawString
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _08000F20
	ldr r2, _08000F1C
	movs r0, #0
	movs r1, #1
	bl DrawString
	b _08000F2A
	.align 2, 0
_08000F14: .4byte gUnknown_03001B40
_08000F18: .4byte gUnknown_0801876C
_08000F1C: .4byte gUnknown_08018770
_08000F20:
	ldr r2, _08000F3C
	movs r0, #0
	movs r1, #2
	bl DrawString
_08000F2A:
	ldr r2, _08000F40
	movs r0, #0
	movs r1, #4
	bl DrawString
	add sp, #0x1c
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F3C: .4byte gUnknown_08018778
_08000F40: .4byte gUnknown_08018780

	THUMB_FUNC_START StartTest
StartTest: @ 0x08000F44
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _08000F74
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
	ldr r1, [r0]
	cmp r1, #0
	bne _08000F78
	movs r0, #0
	b _08000FE8
	.align 2, 0
_08000F74: .4byte testClasses
_08000F78:
	ldr r0, _08000FE4
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
	ldr r4, [r0, #0xc]
	bl _call_via_r4
	str r0, [r7, #8]
	ldr r0, _08000FE4
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
	ldr r1, [r7, #8]
	str r1, [r0, #8]
	ldr r0, _08000FE4
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
	str r1, [r0, #4]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	b _08000FE8
	.align 2, 0
_08000FE4: .4byte testClasses
_08000FE8:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1
    