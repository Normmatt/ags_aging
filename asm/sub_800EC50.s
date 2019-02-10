.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START CheckSaveForEepromMagic
CheckSaveForEepromMagic: @ 0x0800EC50
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	adds r1, r7, #0
	movs r0, #0
	bl sub_800EBF0
	ldr r0, _0800EC84
	adds r1, r7, #0
	bl strcmp
	cmp r0, #0
	beq _0800EC88
	adds r0, r7, #0
	ldr r1, _0800EC84
	bl sprintf
	adds r1, r7, #0
	movs r0, #0
	bl sub_800EB70
	cmp r0, #0
	beq _0800EC88
	movs r0, #1
	b _0800EC8C
	.align 2, 0
_0800EC84: .4byte gUnknown_08101C2C
_0800EC88:
	movs r0, #0
	b _0800EC8C
_0800EC8C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800EC94
sub_800EC94: @ 0x0800EC94
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800ECAC
	movs r1, #0
	strh r1, [r0]
	bl sub_800ECB4
	ldr r1, _0800ECB0
	ldrh r0, [r1]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECAC: .4byte 0x0E001FFE
_0800ECB0: .4byte 0x0E001FFC

	THUMB_FUNC_START sub_800ECB4
sub_800ECB4: @ 0x0800ECB4
	push {r7, lr}
	mov r7, sp
_0800ECB8:
	ldr r0, _0800ECC8
	ldr r1, [r0]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0800ECCC
	b _0800ECCE
	.align 2, 0
_0800ECC8: .4byte 0x09FFFFF8
_0800ECCC:
	b _0800ECB8
_0800ECCE:
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800ECD4
sub_800ECD4: @ 0x0800ECD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, _0800ED04
	adds r0, r1, #0
	bl sub_800EDD0
	adds r1, r0, #0
	adds r0, r1, #0
	bl sub_800EE5C
	ldr r1, [r7]
	str r0, [r1]
	ldr r0, _0800ED08
	str r0, [r7, #0xc]
	movs r0, #0
	str r0, [r7, #8]
_0800ECFA:
	ldr r0, [r7, #8]
	cmp r0, #7
	ble _0800ED0C
	b _0800ED36
	.align 2, 0
_0800ED04: .4byte 0x0E001000
_0800ED08: .4byte 0x0E001004
_0800ED0C:
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	bl sub_800EDD0
	adds r1, r0, #0
	adds r0, r1, #0
	bl sub_800EE5C
	adds r2, r0, #0
	adds r0, r7, #4
	ldr r1, [r0]
	str r2, [r1]
	adds r1, #4
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #4
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	b _0800ECFA
_0800ED36:
	ldr r1, _0800ED44
	ldrh r0, [r1]
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED44: .4byte 0x0E001FFC

	THUMB_FUNC_START sub_800ED48
sub_800ED48: @ 0x0800ED48
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	ldr r4, _0800ED88
	ldr r0, [r7]
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r4, _0800ED8C
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r0, _0800ED90
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0xc]
_0800ED7E:
	ldr r0, [r7, #0xc]
	cmp r0, #7
	ble _0800ED94
	b _0800EDBE
	.align 2, 0
_0800ED88: .4byte 0x0E001400
_0800ED8C: .4byte 0x0E001404
_0800ED90: .4byte 0x0E001408
_0800ED94:
	ldr r4, [r7, #0x10]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, [r7, #8]
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	bl sub_800EE5C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800EE1C
	ldr r0, [r7, #0x10]
	adds r1, r0, #4
	str r1, [r7, #0x10]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _0800ED7E
_0800EDBE:
	ldr r0, _0800EDCC
	movs r1, #0
	strh r1, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EDCC: .4byte 0x0E001FFE

	THUMB_FUNC_START sub_800EDD0
sub_800EDD0: @ 0x0800EDD0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	ldr r2, [r7]
	adds r1, r2, #1
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #8
	orrs r0, r2
	ldr r2, [r7]
	adds r1, r2, #2
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #0x10
	orrs r0, r2
	ldr r2, [r7]
	adds r1, r2, #3
	ldrb r2, [r1]
	lsls r3, r2, #0x18
	lsrs r1, r3, #0x18
	lsls r2, r1, #0x18
	orrs r0, r2
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _0800EE12
_0800EE12:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EE1C
sub_800EE1C: @ 0x0800EE1C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #1
	ldr r2, [r7, #4]
	lsrs r1, r2, #8
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #2
	ldr r2, [r7, #4]
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #3
	ldr r2, [r7, #4]
	lsrs r1, r2, #0x18
	adds r2, r1, #0
	strb r2, [r0]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EE5C
sub_800EE5C: @ 0x0800EE5C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	lsrs r1, r0, #0x18
	movs r0, #0xff
	ands r1, r0
	ldr r2, [r7]
	lsrs r0, r2, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	orrs r1, r0
	ldr r2, [r7]
	lsls r0, r2, #8
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r0, r2
	orrs r1, r0
	ldr r2, [r7]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #0x18
	orrs r1, r0
	adds r0, r1, #0
	b _0800EE92
_0800EE92:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START ResetConfiguration
ResetConfiguration: @ 0x0800EE9C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0800EEA6:
	ldr r0, [r7]
	cmp r0, #5
	bls _0800EEAE
	b _0800EED0
_0800EEAE:
	ldr r0, _0800EECC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EEA6
	.align 2, 0
_0800EECC: .4byte gUnknown_03002BB0
_0800EED0:
	movs r0, #0
	str r0, [r7]
_0800EED4:
	ldr r0, [r7]
	cmp r0, #4
	bls _0800EEDC
	b _0800EF00
_0800EEDC:
	ldr r0, _0800EEFC
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r0, #0
	adds r2, #0xc
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EED4
	.align 2, 0
_0800EEFC: .4byte gUnknown_03002BB0
_0800EF00:
	ldr r0, _0800EF30
	movs r1, #4
	str r1, [r0]
	ldr r0, _0800EF30
	movs r1, #1
	str r1, [r0, #4]
	ldr r0, _0800EF30
	movs r1, #0xb4
	str r1, [r0, #8]
	bl CalculateConfigurationChecksum
	adds r1, r0, #0
	ldr r0, _0800EF30
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EF30: .4byte gUnknown_03002BB0

	THUMB_FUNC_START LoadConfiguration
LoadConfiguration: @ 0x0800EF34
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #0
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
_0800EF42:
	ldr r0, [r7, #4]
	cmp r0, #2
	bls _0800EF4A
	b _0800EF70
_0800EF4A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _0800EF6C
	adds r1, r1, r2
	bl sub_800EBF0
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800EF42
	.align 2, 0
_0800EF6C: .4byte gUnknown_03002BB0
_0800EF70:
	ldr r4, _0800EF94
	bl CalculateConfigurationChecksum
	adds r1, r0, #0
	ldrh r0, [r4, #0x16]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	cmp r0, r1
	beq _0800EF8E
	bl ResetConfiguration
	bl UpdateChecksum
	movs r0, #1
	str r0, [r7]
_0800EF8E:
	ldr r1, [r7]
	adds r0, r1, #0
	b _0800EF98
	.align 2, 0
_0800EF94: .4byte gUnknown_03002BB0
_0800EF98:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START UpdateChecksum
UpdateChecksum: @ 0x0800EFA0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	bl CalculateConfigurationChecksum
	adds r1, r0, #0
	ldr r0, _0800EFC8
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	movs r0, #0
	str r0, [r7]
_0800EFC0:
	ldr r0, [r7]
	cmp r0, #2
	bls _0800EFCC
	b _0800EFF4
	.align 2, 0
_0800EFC8: .4byte gUnknown_03002BB0
_0800EFCC:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, r0, #1
	adds r0, r1, #0
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, _0800EFF0
	adds r1, r1, r2
	bl sub_800EB70
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0800EFC0
	.align 2, 0
_0800EFF0: .4byte gUnknown_03002BB0
_0800EFF4:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START CalculateConfigurationChecksum
CalculateConfigurationChecksum: @ 0x0800EFFC
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
	movs r0, #0
	str r0, [r7, #4]
_0800F00C:
	ldr r0, [r7, #4]
	cmp r0, #5
	bls _0800F014
	b _0800F03C
_0800F014:
	adds r0, r7, #0
	adds r1, r7, #0
	ldr r2, _0800F038
	ldr r3, [r7, #4]
	adds r4, r3, #0
	lsls r3, r4, #1
	adds r2, r2, r3
	ldrh r3, [r2]
	mvns r2, r3
	ldrh r1, [r1]
	adds r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _0800F00C
	.align 2, 0
_0800F038: .4byte gUnknown_03002BB0
_0800F03C:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0800F044
_0800F044:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1
    