.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8008ADC
sub_8008ADC: @ 0x08008ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _08008B24
	movs r2, #8
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, _08008B28
	movs r2, #8
	bl memcpy
	ldr r0, _08008B2C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _08008B30
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B34
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r7, #0x24]
	b _08008B38
	.align 2, 0
_08008B24: .4byte gUnknown_08077898
_08008B28: .4byte gUnknown_080778A0
_08008B2C: .4byte 0x04000084
_08008B30: .4byte 0x04000080
_08008B34:
	movs r2, #0
	str r2, [r7, #0x24]
_08008B38:
	ldr r3, [r7, #0x24]
	mov sl, r3
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x20
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B54
	movs r1, #0x80
	lsls r1, r1, #7
	mov r2, sl
	orrs r2, r1
	mov sl, r2
_08008B54:
	mov sb, sl
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #8
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B6E
	movs r1, #0x80
	lsls r1, r1, #6
	mov r3, sb
	orrs r3, r1
	mov sb, r3
_08008B6E:
	mov r8, sb
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #2
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B88
	movs r1, #0x80
	lsls r1, r1, #5
	mov r2, r8
	orrs r2, r1
	mov r8, r2
_08008B88:
	mov r6, r8
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008B9E
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r6, r1
_08008B9E:
	adds r5, r6, #0
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x10
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008BB4
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r5, r1
_08008BB4:
	adds r4, r5, #0
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008BCA
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r4, r1
_08008BCA:
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r3, r2, #8
	str r3, [r7, #0x28]
	movs r1, #7
	ldr r2, [r7, #0x28]
	ands r2, r1
	str r2, [r7, #0x28]
	ldr r3, [r7, #0x28]
	lsls r3, r3, #4
	str r3, [r7, #0x28]
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	movs r1, #7
	adds r3, r2, #0
	ands r3, r1
	str r3, [r7, #0x2c]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C12
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r7, #0x28]
	orrs r1, r2
	adds r2, r4, #0
	orrs r2, r1
	ldr r3, [r7, #0x2c]
	orrs r3, r2
	adds r1, r3, #0
	b _08008C1C
_08008C12:
	ldr r2, [r7, #0x28]
	orrs r2, r4
	ldr r3, [r7, #0x2c]
	orrs r3, r2
	adds r1, r3, #0
_08008C1C:
	strh r1, [r0]
	ldr r0, _08008C38
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C3C
	movs r1, #0xe0
	lsls r1, r1, #8
	str r1, [r7, #0x38]
	b _08008C42
	.align 2, 0
_08008C38: .4byte 0x04000082
_08008C3C:
	movs r2, #0xc0
	lsls r2, r2, #8
	str r2, [r7, #0x38]
_08008C42:
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C5E
	movs r1, #0xc0
	lsls r1, r1, #5
	ldr r3, [r7, #0x38]
	orrs r3, r1
	str r3, [r7, #0x34]
	b _08008C68
_08008C5E:
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r2, [r7, #0x38]
	orrs r2, r1
	str r2, [r7, #0x34]
_08008C68:
	ldr r3, [r7, #0x34]
	str r3, [r7, #0x30]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008C86
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r2, [r7, #0x30]
	orrs r2, r1
	str r2, [r7, #0x30]
_08008C86:
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	movs r1, #0xf
	adds r3, r2, #0
	ands r3, r1
	str r3, [r7, #0x3c]
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _08008CB6
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r7, #0x3c]
	orrs r1, r2
	ldr r2, [r7, #0x30]
	orrs r2, r1
	adds r1, r2, #0
	b _08008CBE
_08008CB6:
	ldr r2, [r7, #0x30]
	ldr r3, [r7, #0x3c]
	orrs r2, r3
	adds r1, r2, #0
_08008CBE:
	strh r1, [r0]
	ldr r0, _08008F38
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08008F3C
	ldr r2, _08008F40
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08008F44
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	movs r2, #3
	mov ip, r2
	mov r2, ip
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F48
	ldr r3, _08008F40
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _08008F4C
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #2
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F50
	movs r1, #0xe0
	strh r1, [r0]
	ldr r0, _08008F54
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F58
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F60
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F50
	movs r1, #0xa0
	strh r1, [r0]
	ldr r0, _08008F54
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F58
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F5C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F60
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08008F64
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08008F68
	adds r1, r7, #0
	adds r1, #8
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #4
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08008F6C
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _08008F70
	ldr r2, _08008F74
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	adds r1, r2, #1
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	lsls r1, r2, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	lsls r1, r2, #8
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	orrs r0, r2
	str r0, [r7, #0x18]
	ldr r0, _08008F78
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F7C
	adds r1, r7, #0
	adds r1, #0x18
	str r1, [r0]
	ldr r0, _08008F80
	ldr r1, _08008F84
	str r1, [r0]
	ldr r0, _08008F78
	movs r1, #0xb7
	lsls r1, r1, #0x18
	str r1, [r0]
	ldr r0, _08008F88
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F88
	adds r1, r7, #0
	adds r1, #0x10
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #8
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	mvns r1, r2
	adds r2, r1, #0
	adds r1, r2, #1
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	lsls r1, r2, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1]
	lsls r1, r2, #8
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r2, [r1, #1]
	orrs r0, r2
	str r0, [r7, #0x1c]
	ldr r0, _08008F8C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F90
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [r0]
	ldr r0, _08008F94
	ldr r1, _08008F98
	str r1, [r0]
	ldr r0, _08008F8C
	movs r1, #0xb7
	lsls r1, r1, #0x18
	str r1, [r0]
	ldr r0, _08008F9C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F9C
	adds r1, r7, #0
	adds r1, #0x10
	ldr r3, [r7]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r3, [r2]
	lsrs r2, r3, #8
	movs r3, #3
	ands r2, r3
	adds r3, r2, #0
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r0]
	bl sub_800EC94
	ldr r0, _08008FA0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08008F78
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F8C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F88
	movs r1, #0
	str r1, [r0]
	ldr r0, _08008F9C
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	b _08008FA4
	.align 2, 0
_08008F38: .4byte 0x04000060
_08008F3C: .4byte 0x04000062
_08008F40: .4byte 0x0000F080
_08008F44: .4byte 0x04000064
_08008F48: .4byte 0x04000068
_08008F4C: .4byte 0x0400006C
_08008F50: .4byte 0x04000070
_08008F54: .4byte 0x04000090
_08008F58: .4byte 0x04000094
_08008F5C: .4byte 0x04000098
_08008F60: .4byte 0x0400009C
_08008F64: .4byte 0x04000072
_08008F68: .4byte 0x04000074
_08008F6C: .4byte 0x04000078
_08008F70: .4byte 0x0400007C
_08008F74: .4byte 0x00008037
_08008F78: .4byte 0x040000C4
_08008F7C: .4byte 0x040000BC
_08008F80: .4byte 0x040000C0
_08008F84: .4byte 0x040000A0
_08008F88: .4byte 0x04000100
_08008F8C: .4byte 0x040000D0
_08008F90: .4byte 0x040000C8
_08008F94: .4byte 0x040000CC
_08008F98: .4byte 0x040000A4
_08008F9C: .4byte 0x04000104
_08008FA0: .4byte 0x04000084
_08008FA4:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    