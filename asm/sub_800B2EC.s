.include "asm/macros.inc"

.syntax unified

	THUMB_FUNC_START sub_800B2EC
sub_800B2EC: @ 0x0800B2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	ldr r0, _0800B324
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B328
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B32C
	movs r1, #0xe0
	lsls r1, r1, #7
	mov r8, r1
	b _0800B332
	.align 2, 0
_0800B324: .4byte 0x04000134
_0800B328: .4byte 0x04000128
_0800B32C:
	movs r2, #0xc0
	lsls r2, r2, #6
	mov r8, r2
_0800B332:
	mov r6, r8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B346
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r6, r1
_0800B346:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B35A
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r5, r1
_0800B35A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B36C
	movs r1, #0x80
	orrs r4, r1
_0800B36C:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B398
	movs r2, #8
	mov r1, sb
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B39E
_0800B398:
	mov r2, sb
	orrs r2, r4
	adds r1, r2, #0
_0800B39E:
	strh r1, [r0]
	ldr r0, _0800B4F0
	movs r1, #0x80
	strh r1, [r0]
	bl sub_800EC94
	ldr r0, _0800B4F4
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #5
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	bl sub_800EC94
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	lsrs r1, r2, #5
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	lsrs r1, r2, #6
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #0x18
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B4A8
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #0x10
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #8
	ldr r1, [r1]
	adds r2, r1, #0
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _0800B4F8
	ldrh r3, [r2]
	movs r2, #0xff
	mov sl, r2
	mov r2, sl
	ands r2, r3
	mov sl, r2
	mov r2, sl
	lsls r3, r2, #0x10
	lsrs r2, r3, #0x10
	ldr r1, [r1]
	orrs r2, r1
	str r2, [r0]
_0800B4A8:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B4F4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #5
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800B4F0
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #7
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	movs r0, #0
	b _0800B4FC
	.align 2, 0
_0800B4F0: .4byte 0x04000202
_0800B4F4: .4byte 0x04000128
_0800B4F8: .4byte 0x0400012A
_0800B4FC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B50C
sub_800B50C: @ 0x0800B50C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B544
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B548
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B54C
	movs r1, #0xe0
	lsls r1, r1, #7
	mov r8, r1
	b _0800B552
	.align 2, 0
_0800B544: .4byte 0x04000134
_0800B548: .4byte 0x04000128
_0800B54C:
	movs r2, #0xc0
	lsls r2, r2, #6
	mov r8, r2
_0800B552:
	mov r6, r8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B566
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r6, r1
_0800B566:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B57A
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r5, r1
_0800B57A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B58C
	movs r1, #0x80
	orrs r4, r1
_0800B58C:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B5B8
	movs r2, #8
	mov r1, sb
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B5BE
_0800B5B8:
	mov r2, sb
	orrs r2, r4
	adds r1, r2, #0
_0800B5BE:
	strh r1, [r0]
	ldr r0, _0800B650
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B654
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B65C
	ldr r0, _0800B658
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #8
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B658
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #0xff
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	b _0800B68C
	.align 2, 0
_0800B650: .4byte 0x04000202
_0800B654: .4byte 0x04000128
_0800B658: .4byte 0x0400012A
_0800B65C:
	ldr r0, _0800B708
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800B708
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x18
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0800B68C:
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B70C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	bl sub_800EC94
	ldr r0, _0800B70C
	ldr r1, _0800B70C
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B70C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B710
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #7
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	movs r0, #0
	b _0800B714
	.align 2, 0
_0800B708: .4byte 0x0400012A
_0800B70C: .4byte 0x04000128
_0800B710: .4byte 0x04000202
_0800B714:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    