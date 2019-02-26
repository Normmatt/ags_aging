.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800C3C8
sub_800C3C8: @ 0x0800C3C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x17c
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800C3FC
	movs r2, #0xf0
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800C3EC:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #9
	ble _0800C400
	b _0800C4D8
	.align 2, 0
_0800C3FC: .4byte gUnknown_0808322C
_0800C400:
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #4
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0800C4A8
	adds r1, r7, #0
	adds r1, #8
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #2
	ldr r3, [r7]
	adds r5, r3, #0
	lsls r4, r5, #4
	subs r4, r4, r3
	lsls r3, r4, #3
	adds r2, r2, r3
	adds r1, #8
	adds r2, r1, r2
	ldr r1, [r2]
	str r1, [r0, #4]
	adds r1, r7, #4
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C4B0
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r1, _0800C4AC
	adds r2, r7, #0
	adds r2, #8
	adds r3, r7, #0
	adds r4, r7, #0
	adds r4, #0xf8
	ldr r3, [r4]
	adds r5, r3, #0
	lsls r4, r5, #1
	adds r4, r4, r3
	lsls r3, r4, #2
	ldr r4, [r7]
	adds r6, r4, #0
	lsls r5, r6, #4
	subs r5, r5, r4
	lsls r4, r5, #3
	adds r3, r3, r4
	adds r4, r2, r3
	ldr r2, [r4]
	bl sprintf
	adds r2, r7, #0
	adds r2, #0xfc
	movs r0, #1
	movs r1, #1
	bl DrawString
	b _0800C4BA
	.align 2, 0
_0800C4A8: .4byte gUnknown_03001B40
_0800C4AC: .4byte gUnknown_0808331C
_0800C4B0:
	ldr r2, _0800C4D4
	movs r0, #1
	movs r1, #1
	bl DrawString
_0800C4BA:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf8
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf8
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800C3EC
	.align 2, 0
_0800C4D4: .4byte gUnknown_0808321C
_0800C4D8:
	add sp, #0x17c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800C4E0
sub_800C4E0: @ 0x0800C4E0
	push {r7, lr}
	mov r7, sp
	bl UpdateTilemaps
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    
	THUMB_FUNC_START sub_800C4F0
sub_800C4F0: @ 0x0800C4F0
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C5AC
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C5AC
	movs r1, #8
	strh r1, [r0]
	ldr r0, _0800C5B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C5B4
	movs r1, #1
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003874
	movs r0, #0
	bl SetIME
	ldr r0, _0800C5B0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C554
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C554:
	ldr r0, _0800C5B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C5B4
	movs r1, #1
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003874
	movs r0, #0
	bl SetIME
	ldr r0, _0800C5B0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C592
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C592:
	ldr r0, _0800C5AC
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C5B8
	.align 2, 0
_0800C5AC: .4byte 0x04000004
_0800C5B0: .4byte gUnknown_03007FF8
_0800C5B4: .4byte 0x04000202
_0800C5B8:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C5C0
sub_800C5C0: @ 0x0800C5C0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C4F0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C5D4
_0800C5D4:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C5DC
sub_800C5DC: @ 0x0800C5DC
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C698
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C698
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800C69C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C6A0
	movs r1, #2
	strh r1, [r0]
	movs r0, #2
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003760
	movs r0, #0
	bl SetIME
	ldr r0, _0800C69C
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C640
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C640:
	ldr r0, _0800C69C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C6A0
	movs r1, #2
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_8003760
	movs r0, #0
	bl SetIME
	ldr r0, _0800C69C
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C67E
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C67E:
	ldr r0, _0800C698
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C6A4
	.align 2, 0
_0800C698: .4byte 0x04000004
_0800C69C: .4byte gUnknown_03007FF8
_0800C6A0: .4byte 0x04000202
_0800C6A4:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C6AC
sub_800C6AC: @ 0x0800C6AC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C5DC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C6C0
_0800C6C0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C6C8
sub_800C6C8: @ 0x0800C6C8
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800C784
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C784
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, _0800C788
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C78C
	movs r1, #4
	strh r1, [r0]
	movs r0, #4
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800362C
	movs r0, #0
	bl SetIME
	ldr r0, _0800C788
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C72C
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C72C:
	ldr r0, _0800C788
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C78C
	movs r1, #4
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800362C
	movs r0, #0
	bl SetIME
	ldr r0, _0800C788
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C76A
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C76A:
	ldr r0, _0800C784
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C790
	.align 2, 0
_0800C784: .4byte 0x04000004
_0800C788: .4byte gUnknown_03007FF8
_0800C78C: .4byte 0x04000202
_0800C790:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C798
sub_800C798: @ 0x0800C798
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C6C8
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C7AC
_0800C7AC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C7B4
sub_800C7B4: @ 0x0800C7B4
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	movs r0, #0
	str r0, [r7, #0x48]
_0800C7CE:
	ldr r0, [r7, #0x48]
	cmp r0, #3
	ble _0800C7D6
	b _0800C894
_0800C7D6:
	ldr r0, _0800C88C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C890
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #8
	ldr r1, [r7, #0x48]
	lsls r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800C8C8
	movs r0, #0
	bl SetIME
	ldr r0, _0800C88C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800C836
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C836:
	ldr r0, _0800C88C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C890
	movs r1, #8
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800C8C8
	movs r0, #0
	bl SetIME
	ldr r0, _0800C88C
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0
	beq _0800C882
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C882:
	ldr r0, [r7, #0x48]
	adds r1, r0, #1
	str r1, [r7, #0x48]
	b _0800C7CE
	.align 2, 0
_0800C88C: .4byte gUnknown_03007FF8
_0800C890: .4byte 0x04000202
_0800C894:
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C8A2
_0800C8A2:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C8AC
sub_800C8AC: @ 0x0800C8AC
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C7B4
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C8C0
_0800C8C0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C8C8
sub_800C8C8: @ 0x0800C8C8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	ldr r0, _0800C914
	str r0, [r1]
	ldr r0, _0800C918
	ldr r1, _0800C91C
	ldr r2, _0800C920
	movs r3, #0
	bl Test_CallFromStack_ASM
	ldr r0, [r7]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r2, _0800C910
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C910: .4byte 0x04000100
_0800C914: .4byte 0x00C0F000
_0800C918: .4byte sub_80092FC
_0800C91C: .4byte 0x08009308
_0800C920: .4byte 0x0000040A

	THUMB_FUNC_START sub_800C924
sub_800C924: @ 0x0800C924
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	ldr r0, _0800C9C4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C9C8
	movs r1, #0x80
	strh r1, [r0]
	movs r0, #0x80
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800C9F0
	movs r0, #0
	bl SetIME
	ldr r0, _0800C9C4
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800C978
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C978:
	ldr r0, _0800C9C4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800C9C8
	movs r1, #0x80
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800C9F0
	movs r0, #0
	bl SetIME
	ldr r0, _0800C9C4
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800C9B6
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800C9B6:
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800C9CC
	.align 2, 0
_0800C9C4: .4byte gUnknown_03007FF8
_0800C9C8: .4byte 0x04000202
_0800C9CC:
	add sp, #0x48
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C9D4
sub_800C9D4: @ 0x0800C9D4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800C924
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C9E8
_0800C9E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C9F0
sub_800C9F0: @ 0x0800C9F0
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800CA30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CA34
	ldr r2, _0800CA38
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800CA3C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CA34
	ldr r1, _0800CA34
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800CA18:
	ldr r0, _0800CA34
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CA40
	b _0800CA42
	.align 2, 0
_0800CA30: .4byte 0x04000134
_0800CA34: .4byte 0x04000128
_0800CA38: .4byte 0x00004003
_0800CA3C: .4byte 0x0400012A
_0800CA40:
	b _0800CA18
_0800CA42:
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800CA48
sub_800CA48: @ 0x0800CA48
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	movs r0, #0
	str r0, [r7, #0x48]
_0800CA62:
	ldr r0, [r7, #0x48]
	cmp r0, #3
	ble _0800CA6A
	b _0800CB38
_0800CA6A:
	ldr r0, _0800CB30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CB34
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [r7, #0x48]
	lsls r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800CB6C
	movs r0, #0
	bl SetIME
	ldr r0, _0800CB30
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	bne _0800CAD0
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #1
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CAD0:
	ldr r0, _0800CB30
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CB34
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	ldr r1, [r7, #0x48]
	adds r0, r1, #0
	bl sub_800CB6C
	movs r0, #0
	bl SetIME
	ldr r0, _0800CB30
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x48]
	lsls r1, r2
	ands r0, r1
	cmp r0, #0
	beq _0800CB28
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	lsls r0, r1, #1
	movs r1, #2
	adds r2, r1, #0
	lsls r2, r0
	adds r0, r2, #0
	ldr r1, [r7, #0x44]
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CB28:
	ldr r0, [r7, #0x48]
	adds r1, r0, #1
	str r1, [r7, #0x48]
	b _0800CA62
	.align 2, 0
_0800CB30: .4byte gUnknown_03007FF8
_0800CB34: .4byte 0x04000202
_0800CB38:
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800CB46
_0800CB46:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CB50
sub_800CB50: @ 0x0800CB50
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800CA48
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800CB64
_0800CB64:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CB6C
sub_800CB6C: @ 0x0800CB6C
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #8
	str r0, [r7, #0x10]
	ldr r0, _0800CBD4
	str r0, [r7, #0x14]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBD8
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBDC
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	str r0, [r1]
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBE0
	adds r1, r0, r2
	ldr r0, [r7, #0x14]
	str r0, [r1]
_0800CBB8:
	ldr r0, [r7]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800CBE0
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800CBE4
	b _0800CBE6
	.align 2, 0
_0800CBD4: .4byte 0xC5400001
_0800CBD8: .4byte 0x040000B0
_0800CBDC: .4byte 0x040000B4
_0800CBE0: .4byte 0x040000B8
_0800CBE4:
	b _0800CBB8
_0800CBE6:
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800CBF0
sub_800CBF0: @ 0x0800CBF0
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl SaveAndDisableInterruptHandlers
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CCAC
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	bl SetIE
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl SetIME
	bl sub_800CCD4
	movs r0, #0
	bl SetIME
	ldr r0, _0800CCA8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800CC54
	ldr r0, [r7, #0x44]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CC54:
	ldr r0, _0800CCA8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800CCAC
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl SetIE
	movs r0, #1
	bl SetIME
	bl sub_800CCD4
	movs r0, #0
	bl SetIME
	ldr r0, _0800CCA8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800CC98
	ldr r0, [r7, #0x44]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x44]
_0800CC98:
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	ldr r1, [r7, #0x44]
	adds r0, r1, #0
	b _0800CCB0
	.align 2, 0
_0800CCA8: .4byte gUnknown_03007FF8
_0800CCAC: .4byte 0x04000202
_0800CCB0:
	add sp, #0x48
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CCB8
sub_800CCB8: @ 0x0800CCB8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800CBF0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800CCCC
_0800CCCC:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800CCD4
sub_800CCD4: @ 0x0800CCD4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	ldr r1, _0800CD00
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800CD04
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	mvns r1, r0
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x16
	cmp r0, #0
	bne _0800CD08
	ldr r0, _0800CD00
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	b _0800CD10
	.align 2, 0
_0800CD00: .4byte 0x04000132
_0800CD04: .4byte 0x04000130
_0800CD08:
	ldr r0, _0800CD2C
	ldr r2, _0800CD30
	adds r1, r2, #0
	strh r1, [r0]
_0800CD10:
	ldr r0, _0800CD34
	ldr r1, _0800CD38
	movs r2, #1
	movs r3, #0
	bl Test_CallFromStack_ASM
	ldr r0, _0800CD2C
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD2C: .4byte 0x04000132
_0800CD30: .4byte 0x000043FF
_0800CD34: .4byte sub_80092FC
_0800CD38: .4byte 0x08009308
