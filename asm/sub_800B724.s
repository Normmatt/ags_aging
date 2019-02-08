.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800B724
sub_800B724: @ 0x0800B724
	push {r4, r5, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B770
	ldr r1, [r7]
	ldr r2, [r1]
	movs r1, #0xf
	adds r4, r2, #0
	ands r4, r1
	lsls r4, r4, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	movs r1, #0xf
	adds r5, r2, #0
	ands r5, r1
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B774
	movs r2, #0x81
	lsls r2, r2, #8
	adds r1, r5, #0
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800B782
	.align 2, 0
_0800B770: .4byte 0x04000134
_0800B774:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r5, #0
	orrs r2, r3
	adds r3, r4, #0
	orrs r3, r2
	adds r1, r3, #0
_0800B782:
	strh r1, [r0]
	ldr r0, _0800B7CC
	movs r1, #0x80
	strh r1, [r0]
	bl sub_800EC94
	ldr r0, [r7, #4]
	ldr r1, _0800B7D0
	ldrh r2, [r1]
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B7CC
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
	b _0800B7D4
	.align 2, 0
_0800B7CC: .4byte 0x04000202
_0800B7D0: .4byte 0x04000134
_0800B7D4:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B7DC
sub_800B7DC: @ 0x0800B7DC
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B80C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B810
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B814
	movs r1, #0x41
	b _0800B816
	.align 2, 0
_0800B80C: .4byte 0x04000134
_0800B810: .4byte 0x04000140
_0800B814:
	movs r1, #1
_0800B816:
	strh r1, [r0]
	ldr r0, _0800B8BC
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800B8C0
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800B8C0
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r0, _0800B8C4
	movs r1, #1
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B8C4
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B8BC
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
	b _0800B8C8
	.align 2, 0
_0800B8BC: .4byte 0x04000202
_0800B8C0: .4byte 0x04000158
_0800B8C4: .4byte 0x04000140
_0800B8C8:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B8D0
sub_800B8D0: @ 0x0800B8D0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _0800B90C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B910
	ldr r1, [r7]
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800B910
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	movs r0, #0
	b _0800B914
	.align 2, 0
_0800B90C: .4byte 0x04000134
_0800B910: .4byte 0x04000158
_0800B914:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B91C
sub_800B91C: @ 0x0800B91C
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800B94C
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800B950
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800B954
	movs r1, #0x42
	b _0800B956
	.align 2, 0
_0800B94C: .4byte 0x04000134
_0800B950: .4byte 0x04000140
_0800B954:
	movs r1, #2
_0800B956:
	strh r1, [r0]
	ldr r0, _0800BA4C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800BA50
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x1c
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800BA58
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800BA50
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BA54
	movs r1, #2
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800BA54
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800BA4C
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
	b _0800BA5C
	.align 2, 0
_0800BA4C: .4byte 0x04000202
_0800BA50: .4byte 0x04000158
_0800BA54: .4byte 0x04000140
_0800BA58: .4byte 0x04000150
_0800BA5C:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800BA64
sub_800BA64: @ 0x0800BA64
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800BA94
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0800BA98
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800BA9C
	movs r1, #0x44
	b _0800BA9E
	.align 2, 0
_0800BA94: .4byte 0x04000134
_0800BA98: .4byte 0x04000140
_0800BA9C:
	movs r1, #4
_0800BA9E:
	strh r1, [r0]
	ldr r0, _0800BB94
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800BB98
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #3
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BBA0
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #3
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	bl sub_800EC94
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800BB98
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #3
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r0, _0800BB9C
	movs r1, #4
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800BB9C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800BB94
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
	b _0800BBA4
	.align 2, 0
_0800BB94: .4byte 0x04000202
_0800BB98: .4byte 0x04000158
_0800BB9C: .4byte 0x04000140
_0800BBA0: .4byte 0x04000154
_0800BBA4:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800BBAC
sub_800BBAC: @ 0x0800BBAC
	push {r4, r7, lr}
	ldr r4, _0800BC38
	add sp, r4
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x48
	ldr r1, _0800BC3C
	movs r2, #0xa8
	bl memcpy
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xfc
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_800D790
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800BC40
	ldrh r2, [r1]
	strh r2, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, _0800BC44
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, _0800BC48
	movs r0, #1
	bl sub_800D68C
	ldr r0, _0800BC40
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	bl SetIE
	movs r0, #1
	bl SetIME
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0800BC4C
	ldr r2, _0800BC50
	bl memcpy
	ldr r0, [r7]
	bl sub_800C0D4
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	movs r0, #0
	str r0, [r1]
_0800BC28:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	ldr r0, [r1]
	cmp r0, #0xd
	ble _0800BC54
	b _0800BFD0
	.align 2, 0
_0800BC38: .4byte 0xFFFFEE94
_0800BC3C: .4byte gUnknown_08082FC8
_0800BC40: .4byte 0x04000004
_0800BC44: .4byte 0x04000132
_0800BC48: .4byte sub_800C4E0+1
_0800BC4C: .4byte gUnknown_03001B40
_0800BC50: .4byte 0x00001064
_0800BC54:
	ldr r0, _0800BCA0
	adds r1, r7, #0
	adds r1, #0x48
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf4
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #1
	ldr r3, [r7]
	movs r4, #0x54
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, #2
	adds r2, r1, r2
	ldrh r1, [r2]
	strh r1, [r0]
	ldr r0, _0800BCA4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
_0800BC90:
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #4
	ble _0800BCA8
	b _0800BFB6
	.align 2, 0
_0800BCA0: .4byte 0x04000132
_0800BCA4: .4byte 0x04000202
_0800BCA8:
	movs r0, #1
	bl sub_800D640
	adds r0, r7, #0
	adds r0, #0xf0
	ldr r1, _0800BCEC
	ldrh r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	lsls r3, r2, #0x16
	lsrs r1, r3, #0x16
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	ldr r0, [r7]
	bl sub_800C2C8
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	cmp r1, #4
	bls _0800BCDE
	b _0800BFB4
_0800BCDE:
	ldr r0, [r0]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, _0800BCF0
	adds r0, r0, r1
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0800BCEC: .4byte 0x04000130
_0800BCF0: .4byte _0800BCF4
_0800BCF4: @ jump table
	.4byte _0800BD08 @ case 0
	.4byte _0800BD3A @ case 1
	.4byte _0800BD94 @ case 2
	.4byte _0800BDBE @ case 3
	.4byte _0800BEA0 @ case 4
_0800BD08:
	ldr r0, [r7]
	movs r1, #0
	bl sub_800C3C8
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BD3A:
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	cmp r1, #0
	bne _0800BD88
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
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #2
	ble _0800BD86
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
_0800BD86:
	b _0800BD92
_0800BD88:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800BD92:
	b _0800BFB4
_0800BD94:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BDBE:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7]
	bl sub_800C3C8
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xc0
	beq _0800BE12
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r1, [r0]
	movs r2, #0x30
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x30
	beq _0800BE12
	b _0800BE26
_0800BE12:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0]
_0800BE26:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xf0
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0800BE94
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
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #2
	ble _0800BE92
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
_0800BE92:
	b _0800BE9E
_0800BE94:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0
	str r0, [r1]
_0800BE9E:
	b _0800BFB4
_0800BEA0:
	ldr r0, _0800BF20
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x48
	adds r2, r7, #0
	adds r3, r7, #0
	adds r3, #0xf4
	ldr r2, [r3]
	adds r4, r2, #0
	lsls r3, r4, #1
	adds r3, r3, r2
	lsls r2, r3, #1
	ldr r3, [r7]
	movs r4, #0x54
	muls r3, r4, r3
	adds r2, r2, r3
	adds r3, r1, #4
	adds r1, r3, r2
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800BF94
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800BF24
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	b _0800BF38
	.align 2, 0
_0800BF20: .4byte 0x04000202
_0800BF24:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_0800BF38:
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r2, [r7]
	movs r3, #0x54
	muls r2, r3, r2
	adds r1, r1, r2
	adds r0, #2
	adds r1, r0, r1
	ldrh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800BF80
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #8
	orrs r1, r2
	str r1, [r0]
	b _0800BF94
_0800BF80:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xfc
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xfc
	ldr r1, [r2]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
_0800BF94:
	adds r0, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r2, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BFB4
_0800BFB4:
	b _0800BC90
_0800BFB6:
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xf4
	adds r2, r7, #0
	adds r0, r7, #0
	adds r0, #0xf4
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0xf4
	ldr r1, [r2]
	adds r2, r1, #1
	str r2, [r0]
	b _0800BC28
_0800BFD0:
	ldr r0, _0800C00C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, _0800C010
	bl memcpy
	ldr r0, _0800C014
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800C018
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_800D854
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0xfc
	ldr r2, [r1]
	adds r0, r2, #0
	b _0800C01C
	.align 2, 0
_0800C00C: .4byte gUnknown_03001B40
_0800C010: .4byte 0x00001064
_0800C014: .4byte 0x04000132
_0800C018: .4byte 0x04000004
_0800C01C:
	ldr r3, _0800C028
	add sp, r3
	pop {r4, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C028: .4byte 0x0000116C

	THUMB_FUNC_START sub_800C02C
sub_800C02C: @ 0x0800C02C
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C040
	ldr r1, [r0, #4]
	adds r0, r1, #0
	bl sub_800BBAC
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800C044
	.align 2, 0
_0800C040: .4byte gUnknown_03002BB0
_0800C044:
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
    