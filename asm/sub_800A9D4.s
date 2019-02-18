.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_800A9D4
sub_800A9D4: @ 0x0800A9D4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A838
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800A9E8
_0800A9E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A9F0
sub_800A9F0: @ 0x0800A9F0
	push {r7, lr}
	sub sp, #0x38
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #0x36
	strh r0, [r1]
	ldr r0, _0800AA44
	str r0, [r7, #0x14]
	ldr r0, _0800AA44
	str r0, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0xc]
	ldr r0, _0800AA48
	str r0, [r7, #0x18]
	movs r0, #0x81
	lsls r0, r0, #0x18
	str r0, [r7, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #0x18
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x1c]
	ldr r1, _0800AA4C
	orrs r0, r1
	str r0, [r7, #0x1c]
	movs r0, #0
	str r0, [r7, #0x20]
_0800AA3A:
	ldr r0, [r7, #0x20]
	cmp r0, #2
	ble _0800AA50
	b _0800AC6E
	.align 2, 0
_0800AA44: .4byte 0x04000100
_0800AA48: .4byte gUnknown_02020000
_0800AA4C: .4byte 0x20000008
_0800AA50:
	ldr r0, _0800AA60
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	bne _0800AA64
	b _0800AA66
	.align 2, 0
_0800AA60: .4byte 0x04000006
_0800AA64:
	b _0800AA50
_0800AA66:
	ldr r0, _0800AA74
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xe3
	beq _0800AA78
	b _0800AA7A
	.align 2, 0
_0800AA74: .4byte 0x04000006
_0800AA78:
	b _0800AA66
_0800AA7A:
	ldr r0, _0800AB08
	movs r1, #0x80
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB0C
	adds r1, r0, r2
	ldr r0, [r7, #0x14]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB10
	adds r1, r0, r2
	ldr r0, [r7, #0x18]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB14
	adds r1, r0, r2
	ldr r0, [r7, #0x1c]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB18
	adds r1, r0, r2
	ldr r0, [r7, #8]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB1C
	adds r1, r0, r2
	ldr r0, [r7, #0xc]
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB20
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	str r0, [r1]
_0800AAEE:
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB20
	adds r1, r0, r2
	ldr r0, [r1]
	lsrs r1, r0, #0x1f
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne _0800AB24
	b _0800AB26
	.align 2, 0
_0800AB08: .4byte 0x04000100
_0800AB0C: .4byte 0x040000B0
_0800AB10: .4byte 0x040000B4
_0800AB14: .4byte 0x040000B8
_0800AB18: .4byte 0x040000BC
_0800AB1C: .4byte 0x040000C0
_0800AB20: .4byte 0x040000C4
_0800AB24:
	b _0800AAEE
_0800AB26:
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB74
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, [r7, #0x20]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #2
	ldr r2, _0800AB78
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800AB7C
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r7, #0x2c]
	ldr r0, _0800AB80
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r1, [r7, #0x2c]
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0
	str r0, [r7, #4]
_0800AB68:
	ldr r0, [r7, #0x2c]
	ldr r1, _0800AB84
	cmp r0, r1
	bls _0800AB88
	b _0800AC52
	.align 2, 0
_0800AB74: .4byte 0x040000B8
_0800AB78: .4byte 0x040000C4
_0800AB7C: .4byte 0x04000100
_0800AB80: .4byte gUnknown_02020000
_0800AB84: .4byte gUnknown_020003FF
_0800AB88:
	ldr r0, [r7, #4]
	cmp r0, #1
	beq _0800ABCC
	cmp r0, #1
	bgt _0800AB98
	cmp r0, #0
	beq _0800AB9E
	b _0800AC50
_0800AB98:
	cmp r0, #2
	beq _0800AC1A
	b _0800AC50
_0800AB9E:
	ldr r0, [r7, #0x2c]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800ABB4
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800ABCA
_0800ABB4:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #2
	str r1, [r7, #0x2c]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
_0800ABCA:
	b _0800AC50
_0800ABCC:
	movs r0, #0
	str r0, [r7, #0x28]
_0800ABD0:
	ldr r0, [r7, #0x28]
	cmp r0, #7
	ble _0800ABD8
	b _0800AC12
_0800ABD8:
	ldr r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800ABF4
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
	b _0800AC5A
_0800ABF4:
	ldr r0, [r7, #0x30]
	adds r1, r0, #2
	str r1, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x28]
	adds r1, r0, #1
	str r1, [r7, #0x28]
	b _0800ABD0
_0800AC12:
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800AC50
_0800AC1A:
	ldr r0, [r7, #0x2c]
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0800AC38
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
	b _0800AC5A
	.byte 0x0A, 0xE0
_0800AC38:
	ldr r0, [r7, #0x2c]
	adds r1, r0, #2
	str r1, [r7, #0x2c]
	adds r0, r7, #0
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x34
	ldrh r2, [r1]
	adds r1, r2, #4
	adds r2, r1, #0
	strh r2, [r0]
	b _0800AC50
_0800AC50:
	b _0800AB68
_0800AC52:
	ldr r0, [r7, #4]
	cmp r0, #2
	bne _0800AC5A
	b _0800AC66
_0800AC5A:
	movs r0, #1
	ldr r1, [r7, #0x20]
	lsls r0, r1
	ldr r1, [r7]
	orrs r0, r1
	str r0, [r7]
_0800AC66:
	ldr r0, [r7, #0x20]
	adds r1, r0, #1
	str r1, [r7, #0x20]
	b _0800AA3A
_0800AC6E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrh r1, [r0]
	adds r0, r1, #0
	bl SetIME
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800AC80
_0800AC80:
	add sp, #0x38
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800AC88
sub_800AC88: @ 0x0800AC88
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	bl sub_800A9F0
	adds r1, r0, #0
	adds r0, r1, #0
	b _0800AC9C
_0800AC9C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800ACA4
sub_800ACA4: @ 0x0800ACA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	bl SetIME
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0800ACDC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800ACE0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r2, [r1]
	cmp r2, #0
	beq _0800ACE4
	movs r1, #0x80
	lsls r1, r1, #7
	mov r8, r1
	b _0800ACE8
	.align 2, 0
_0800ACDC: .4byte 0x04000134
_0800ACE0: .4byte 0x04000128
_0800ACE4:
	movs r1, #0
	mov r8, r1
_0800ACE8:
	mov r6, r8
	ldr r1, [r7]
	ldr r2, [r1]
	cmp r2, #0
	beq _0800ACF8
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r6, r1
_0800ACF8:
	adds r5, r6, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AD0A
	movs r1, #8
	orrs r5, r1
_0800AD0A:
	adds r4, r5, #0
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AD1C
	movs r1, #2
	orrs r4, r1
_0800AD1C:
	adds r1, r4, #0
	ldr r3, [r7]
	adds r2, r3, #4
	ldr r3, [r2]
	cmp r3, #0
	beq _0800AD2C
	movs r2, #1
	orrs r1, r2
_0800AD2C:
	strh r1, [r0]
	ldr r0, _0800AD4C
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	beq _0800AD54
	ldr r0, _0800AD50
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	str r2, [r0]
	b _0800AD68
	.align 2, 0
_0800AD4C: .4byte 0x04000202
_0800AD50: .4byte 0x04000120
_0800AD54:
	ldr r0, _0800AD98
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r2, [r1]
	adds r1, r2, #0
	movs r2, #0xff
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
_0800AD68:
	bl sub_800EC94
	ldr r0, _0800AD9C
	ldr r1, _0800AD9C
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
_0800AD80:
	ldr r0, _0800AD9C
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800ADA0
	b _0800ADA2
	.align 2, 0
_0800AD98: .4byte 0x0400012A
_0800AD9C: .4byte 0x04000128
_0800ADA0:
	b _0800AD80
_0800ADA2:
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	beq _0800ADB8
	ldr r0, [r7, #4]
	ldr r1, _0800ADB4
	ldr r2, [r1]
	str r2, [r0]
	b _0800ADCC
	.align 2, 0
_0800ADB4: .4byte 0x04000120
_0800ADB8:
	ldr r0, [r7, #4]
	ldr r1, _0800AE18
	ldrh r2, [r1]
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
_0800ADCC:
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800AE1C
	ldrh r2, [r1]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #2
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800AE20
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
	b _0800AE24
	.align 2, 0
_0800AE18: .4byte 0x0400012A
_0800AE1C: .4byte 0x04000128
_0800AE20: .4byte 0x04000202
_0800AE24:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800AE30
sub_800AE30: @ 0x0800AE30
	push {r4, r7, lr}
	ldr r4, _0800AEC4
	add sp, r4
	mov r7, sp
	adds r0, r7, #0
	ldr r0, _0800AEC8
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	adds r1, r7, #0
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl SaveAndDisableInterruptHandlers
	ldr r1, _0800AECC
	adds r0, r7, r1
	ldr r1, _0800AED0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800AED0
	movs r1, #8
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, _0800AED4
	ldr r2, _0800AED8
	bl memcpy
	ldr r2, _0800AEDC
	movs r0, #0
	movs r1, #0
	bl DrawString
	bl sub_800B0A0
	ldr r2, _0800AEDC
	movs r0, #0
	movs r1, #0
	bl DrawString
	adds r0, r7, #0
	ldr r2, _0800AEC8
	adds r4, r7, r2
	bl sub_800B1F0
	adds r1, r7, #0
	ldr r1, _0800AEC8
	adds r2, r7, r1
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0800AED4
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _0800AED8
	bl memcpy
	ldr r0, _0800AED0
	ldr r2, _0800AECC
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r1, #0
	bl RestoreInterruptHandlers
	adds r0, r7, #0
	ldr r0, _0800AEC8
	adds r1, r7, r0
	ldr r2, [r1]
	adds r0, r2, #0
	b _0800AEE0
	.align 2, 0
_0800AEC4: .4byte 0xFFFFEF50
_0800AEC8: .4byte 0x000010AC
_0800AECC: .4byte 0x000010A8
_0800AED0: .4byte 0x04000004
_0800AED4: .4byte gUnknown_03001B40
_0800AED8: .4byte 0x00001064
_0800AEDC: .4byte gUnknown_0807A8E0
_0800AEE0:
	ldr r3, _0800AEEC
	add sp, r3
	pop {r4, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEEC: .4byte 0x000010B0

	THUMB_FUNC_START sub_800AEF0
sub_800AEF0: @ 0x0800AEF0
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
	ldr r0, _0800AF34
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800AF38
	ldr r1, [r7]
	ldr r2, [r1]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #0x10
	lsrs r4, r1, #0x10
	ldr r2, [r7]
	adds r1, r2, #4
	ldr r2, [r1]
	cmp r2, #0
	beq _0800AF3C
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r2, #0
	b _0800AF46
	.align 2, 0
_0800AF34: .4byte 0x04000134
_0800AF38: .4byte 0x04000128
_0800AF3C:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r2, r4, #0
	orrs r2, r3
	adds r1, r2, #0
_0800AF46:
	strh r1, [r0]
	ldr r0, _0800AFC4
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800AFC8
	ldr r2, [r7]
	adds r1, r2, #0
	adds r1, #8
	ldr r2, [r1]
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0800AFCC
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
	adds r0, #0x1c
	ldr r1, _0800AFCC
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
	bl sub_800EC94
	ldr r0, _0800AFCC
	ldr r1, _0800AFCC
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_800EC94
_0800AFAC:
	ldr r0, _0800AFCC
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _0800AFD0
	b _0800AFD2
	.align 2, 0
_0800AFC4: .4byte 0x04000202
_0800AFC8: .4byte 0x0400012A
_0800AFCC: .4byte 0x04000128
_0800AFD0:
	b _0800AFAC
_0800AFD2:
	ldr r0, [r7, #4]
	ldr r1, _0800B07C
	ldrh r2, [r1]
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	ldr r2, _0800B080
	ldrh r3, [r2]
	lsls r5, r3, #0x10
	lsrs r2, r5, #0x10
	orrs r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0800B084
	ldrh r2, [r1]
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	ldr r2, _0800B088
	ldrh r3, [r2]
	lsls r5, r3, #0x10
	lsrs r2, r5, #0x10
	orrs r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0800B08C
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r1, _0800B090
	ldrh r2, [r1]
	movs r3, #0x30
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #4
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x10
	ldr r1, _0800B090
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsrs r2, r1, #6
	adds r1, r2, #0
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	movs r2, #1
	ands r1, r2
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0x14
	ldr r1, _0800B094
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
	b _0800B098
	.align 2, 0
_0800B07C: .4byte 0x04000120
_0800B080: .4byte 0x04000122
_0800B084: .4byte 0x04000124
_0800B088: .4byte 0x04000126
_0800B08C: .4byte 0x0400012A
_0800B090: .4byte 0x04000128
_0800B094: .4byte 0x04000202
_0800B098:
	add sp, #0xc
	pop {r4, r5, r7}
	pop {r1}
	bx r1
    