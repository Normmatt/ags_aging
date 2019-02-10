.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8011534
sub_8011534: @ 0x08011534
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1d]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	ldr r0, _080115B0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080115B4
	ldr r2, _080115B8
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080115BC
	movs r1, #0
	strh r1, [r0]
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115B0: .4byte 0x04000134
_080115B4: .4byte 0x04000128
_080115B8: .4byte 0x00002003
_080115BC: .4byte 0x0400012A

	THUMB_FUNC_START sub_80115C0
sub_80115C0: @ 0x080115C0
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	beq _080115D8
	movs r0, #0
	bl _08011CEA
_080115D8:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0xf
	bls _08011610
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x4a
	ldrb r3, [r2]
	subs r1, r3, #1
	adds r2, r0, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	movs r0, #0
	bl _08011CEA
_08011610:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801165C
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _08011658
	ldrh r1, [r0]
	movs r2, #0xfc
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #8
	beq _0801165C
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	eors r1, r2
	adds r0, r1, #0
	b _08011CEA
	.align 2, 0
_08011658: .4byte 0x04000128
_0801165C:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xdf
	bls _080116D6
	ldr r0, [r7]
	bl sub_8011F28
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08011678
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08011CEA
_08011678:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801169C
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe1
	bls _0801169C
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	bne _0801169C
	bl sub_8012100
	b _08011610
_0801169C:
	ldr r0, [r7]
	bl sub_8011F08
	cmp r0, #0
	bne _080116D2
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	bne _080116B8
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x71
	b _08011CEA
_080116B8:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #0x16]
	subs r1, r2, #1
	ldrh r2, [r0, #0x16]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #0x16]
_080116D2:
	movs r0, #0
	b _08011CEA
_080116D6:
	ldr r1, [r7]
	ldrb r0, [r1, #0x18]
	cmp r0, #2
	bne _080116E0
	b _0801193C
_080116E0:
	cmp r0, #2
	bgt _080116F0
	cmp r0, #0
	beq _080116FE
	cmp r0, #1
	bne _080116EE
	b _08011854
_080116EE:
	b _08011B9A
_080116F0:
	cmp r0, #0xd0
	bne _080116F6
	b _080119BA
_080116F6:
	cmp r0, #0xd1
	bne _080116FC
	b _08011AEA
_080116FC:
	b _08011B9A
_080116FE:
	movs r0, #0xe
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_08011706:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0801170E
	b _0801173E
_0801170E:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011728
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _0801172C
	cmp r0, r1
	beq _08011730
	b _0801173E
	.align 2, 0
_08011728: .4byte 0x04000120
_0801172C: .4byte 0x0000FFFF
_08011730:
	ldr r0, [r7, #0xc]
	asrs r1, r0, #1
	str r1, [r7, #0xc]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011706
_0801173E:
	ldr r0, [r7, #0xc]
	movs r1, #0xe
	ands r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7]
	ldr r2, [r7, #0xc]
	adds r1, r2, #0
	ldrb r2, [r0, #0x1d]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x1d]
	movs r0, #3
	str r0, [r7, #4]
_0801175E:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011766
	b _080117B0
_08011766:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080117A4
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080117A8
	movs r0, #1
	ldr r1, [r7, #4]
	lsls r0, r1
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, [r7, #8]
	cmp r1, r0
	beq _080117A8
	movs r0, #0
	str r0, [r7, #0xc]
	b _080117B0
	.align 2, 0
_080117A4: .4byte 0x04000120
_080117A8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _0801175E
_080117B0:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r7, #0xc]
	adds r2, r3, #0
	ldrb r1, [r1, #0x1e]
	adds r3, r1, #0
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0, #0x1e]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1e]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080117EE
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
_080117EE:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08011822
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x4a
	ldrb r3, [r2]
	subs r1, r3, #1
	adds r2, r0, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	b _08011836
_08011822:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r0, [r0, #0x1d]
	ldrb r1, [r1, #0x1e]
	cmp r0, r1
	beq _08011836
	ldr r0, [r7]
	bl sub_8011D70
	b _08011854
_08011836:
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	adds r0, r1, #0
	movs r1, #0xc4
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011854:
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x49
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #3
	str r0, [r7, #4]
_08011868:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011870
	b _080118F4
_08011870:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080118EC
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x72
	bne _080118E2
	ldr r0, _080118F0
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldr r2, [r7, #8]
	adds r1, r2, #0
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #8]
	movs r1, #0xff
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #1
	ldr r1, [r7, #4]
	lsls r0, r1
	ldr r1, [r7, #8]
	cmp r1, r0
	bne _080118E2
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	ldr r3, [r7, #8]
	adds r2, r3, #0
	ldrb r3, [r1]
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_080118E2:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011868
	.align 2, 0
_080118EC: .4byte 0x04000120
_080118F0: .4byte gUnknown_03001640
_080118F4:
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x49
	ldrb r0, [r0, #0x1d]
	ldrb r1, [r2]
	cmp r0, r1
	beq _08011906
	b _08011836
_08011906:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r2, [r1]
	adds r0, r2, #0
	movs r1, #0xc2
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_0801193C:
	movs r0, #3
	str r0, [r7, #4]
_08011940:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011948
	b _080119B8
_08011948:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080119A8
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _080119B0
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, _080119B4
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	cmp r0, r1
	beq _080119A8
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrb r1, [r1]
	eors r1, r2
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_080119A8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011940
	.align 2, 0
_080119B0: .4byte 0x04000120
_080119B4: .4byte gUnknown_03001640
_080119B8:
	b _08011C5E
_080119BA:
	movs r0, #1
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_080119C2:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080119CA
	b _08011A50
_080119CA:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011A28
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r0, #0
	adds r2, #0x19
	adds r0, r2, r1
	ldr r2, [r7, #8]
	adds r1, r2, #0
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011A44
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x72
	beq _08011A2C
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x73
	beq _08011A2C
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x60
	b _08011CEA
	.align 2, 0
_08011A28: .4byte 0x04000120
_08011A2C:
	ldr r0, _08011A4C
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	cmp r0, r1
	bne _08011A44
	movs r0, #0
	str r0, [r7, #0xc]
_08011A44:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _080119C2
	.align 2, 0
_08011A4C: .4byte gUnknown_03001640
_08011A50:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _08011A74
	ldr r0, [r7]
	ldrb r1, [r0, #0x1c]
	adds r0, r1, #0
	movs r1, #0xc6
	lsls r1, r1, #7
	orrs r0, r1
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011A74:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xd1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	movs r0, #0x11
	str r0, [r7, #0xc]
	movs r0, #3
	str r0, [r7, #4]
_08011A90:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011A98
	b _08011AB2
_08011A98:
	ldr r0, [r7]
	ldr r2, [r7, #4]
	subs r1, r2, #1
	adds r0, #0x19
	adds r1, r0, r1
	ldrb r0, [r1]
	ldr r1, [r7, #0xc]
	adds r0, r1, r0
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011A90
_08011AB2:
	ldr r0, [r7]
	ldr r2, [r7, #0xc]
	adds r1, r2, #0
	ldrb r2, [r0, #0x14]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x14]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	movs r2, #0xc8
	lsls r2, r2, #7
	adds r0, r1, #0
	orrs r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _08011CEA
_08011AEA:
	movs r0, #3
	str r0, [r7, #4]
_08011AEE:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011AF6
	b _08011B3C
_08011AF6:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011B30
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011B34
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	cmp r0, #0x73
	beq _08011B34
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x60
	b _08011CEA
	.align 2, 0
_08011B30: .4byte 0x04000120
_08011B34:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011AEE
_08011B3C:
	ldr r0, [r7]
	bl MultiBoot
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011B78
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xe0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	ldrh r1, [r0, #0x16]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0x16]
	movs r0, #0
	b _08011CEA
_08011B78:
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x1e
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #0x70
	b _08011CEA
_08011B9A:
	movs r0, #3
	str r0, [r7, #4]
_08011B9E:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011BA6
	b _08011C2A
_08011BA6:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C22
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011BF8
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	asrs r0, r1, #8
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	lsrs r1, r2, #1
	adds r3, r1, #0
	lsls r2, r3, #0x18
	lsrs r1, r2, #0x18
	movs r2, #0x62
	subs r1, r2, r1
	cmp r0, r1
	bne _08011BFC
	ldr r0, [r7, #8]
	movs r1, #0xff
	ands r0, r1
	movs r1, #1
	ldr r2, [r7, #4]
	lsls r1, r2
	cmp r0, r1
	bne _08011BFC
	b _08011C22
	.align 2, 0
_08011BF8: .4byte 0x04000120
_08011BFC:
	ldr r0, [r7]
	ldr r1, [r7]
	adds r2, r1, #0
	adds r1, #0x49
	movs r2, #1
	ldr r3, [r7, #4]
	lsls r2, r3
	ldrb r1, [r1]
	eors r1, r2
	adds r2, r0, #0
	adds r0, #0x49
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_08011C22:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011B9E
_08011C2A:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xc4
	bne _08011C5E
	ldr r0, [r7]
	ldr r2, [r7]
	adds r1, r2, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r2, #0xe
	ands r1, r2
	ldrb r2, [r0, #0x1e]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	b _08011836
_08011C5E:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x49
	ldrb r0, [r1]
	cmp r0, #0
	bne _08011C74
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x50
	b _08011CEA
_08011C74:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #2
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xc4
	bne _08011C96
	b _08011836
_08011C96:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	ldr r1, [r0, #0x28]
	adds r0, r2, r1
	subs r1, r0, #3
	ldrb r0, [r1]
	adds r1, r0, #0
	lsls r0, r1, #8
	ldr r1, [r7]
	ldr r2, [r7]
	ldrb r3, [r2, #0x18]
	ldr r2, [r1, #0x28]
	adds r1, r3, r2
	subs r2, r1, #4
	ldrb r3, [r2]
	adds r1, r3, #0
	orrs r1, r0
	adds r2, r1, #0
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08011CD4
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _08011CEA
_08011CD4:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011CE6
	bl sub_8012100
	b _08011610
_08011CE6:
	movs r0, #0
	b _08011CEA
_08011CEA:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011CF4
sub_8011CF4: @ 0x08011CF4
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strh r0, [r1]
	ldr r0, _08011D2C
	ldrh r1, [r0]
	movs r2, #0x8c
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #8
	beq _08011D30
	ldr r0, [r7]
	bl sub_8011534
	ldr r0, [r7, #8]
	movs r2, #8
	adds r1, r0, #0
	eors r1, r2
	adds r0, r1, #0
	b _08011D68
	.align 2, 0
_08011D2C: .4byte 0x04000128
_08011D30:
	ldr r0, _08011D5C
	adds r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08011D60
	ldr r2, _08011D64
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #0
	b _08011D68
	.align 2, 0
_08011D5C: .4byte 0x0400012A
_08011D60: .4byte 0x04000128
_08011D64: .4byte 0x00002083
_08011D68:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8011D70
sub_8011D70: @ 0x08011D70
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	beq _08011D88
	ldr r0, [r7]
	bl sub_8011534
	b _08011DB8
_08011D88:
	ldr r0, [r7]
	adds r1, r0, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x1e]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
_08011DB8:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011DC0
sub_8011DC0: @ 0x08011DC0
	push {r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	adds r1, r3, #0
	ldr r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0xc
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0xd
	strb r0, [r1]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _08011DFA
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	cmp r1, #0
	beq _08011DFA
	ldr r1, [r7]
	adds r0, r1, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #0
	bne _08011DFA
	b _08011E02
_08011DFA:
	ldr r0, [r7]
	bl sub_8011534
	b _08011F00
_08011E02:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0, #0x20]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #0xf
	movs r1, #0xf
	bics r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0xff
	ble _08011E26
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bgt _08011E26
	b _08011E2E
_08011E26:
	ldr r0, [r7]
	bl sub_8011534
	b _08011F00
_08011E2E:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	adds r1, r1, r2
	str r1, [r0, #0x24]
	adds r0, r7, #0
	adds r0, #0xd
	ldrb r1, [r0]
	adds r0, r1, #4
	adds r2, r0, #0
	lsls r1, r2, #0x18
	asrs r0, r1, #0x18
	cmp r0, #8
	bhi _08011EC4
	lsls r1, r0, #2
	ldr r2, _08011E54
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_08011E54: .4byte _08011E58
_08011E58: @ jump table
	.4byte _08011E7C @ case 0
	.4byte _08011E7C @ case 1
	.4byte _08011E7C @ case 2
	.4byte _08011E7C @ case 3
	.4byte _08011E96 @ case 4
	.4byte _08011EAC @ case 5
	.4byte _08011EAC @ case 6
	.4byte _08011EAC @ case 7
	.4byte _08011EAC @ case 8
_08011E7C:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r1, r7, #0
	adds r1, #0xd
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r3, #3
	subs r1, r3, r2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08011EC4
_08011E96:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #0x38
	adds r0, r1, #0
	orrs r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	str r0, [r7, #0x10]
	b _08011EC4
_08011EAC:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r1, r7, #0
	adds r1, #0xd
	movs r2, #0
	ldrsb r2, [r1, r2]
	subs r1, r2, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08011EC4
_08011EC4:
	ldr r0, [r7]
	ldr r2, [r7, #0x10]
	adds r1, r2, #0
	movs r2, #0x3f
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #1
	adds r2, r1, #0
	movs r3, #0x7f
	rsbs r3, r3, #0
	adds r1, r2, #0
	orrs r1, r3
	ldrb r2, [r0, #0x1c]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x1c]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xd0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
_08011F00:
	add sp, #0x14
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8011F08
sub_8011F08: @ 0x08011F08
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe9
	bne _08011F1C
	movs r0, #1
	b _08011F20
_08011F1C:
	movs r0, #0
	b _08011F20
_08011F20:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8011F28
sub_8011F28: @ 0x08011F28
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldrb r0, [r1, #0x18]
	cmp r0, #0xe0
	beq _08011F46
	cmp r0, #0xe0
	blt _08011F76
	cmp r0, #0xe8
	bgt _08011F76
	cmp r0, #0xe7
	blt _08011F76
	b _08012034
_08011F46:
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xe1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0x18]
	ldr r0, [r7]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #0xd
	str r1, [r0]
	ldr r0, [r7]
	movs r1, #0
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _080120D0
_08011F76:
	movs r0, #3
	str r0, [r7, #4]
_08011F7A:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08011F82
	b _08011FC0
_08011F82:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08011FB4
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011FB8
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _08011FB8
	b _08011F46
	.align 2, 0
_08011FB4: .4byte 0x04000120
_08011FB8:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08011F7A
_08011FC0:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #1
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r0]
	cmp r1, #0
	bne _08012014
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r1, #0x28]
	adds r2, r3, #0
	adds r2, #0xac
	ldrb r1, [r2]
	ldr r2, [r7]
	ldr r3, [r2, #0x28]
	adds r2, r3, #0
	adds r2, #0xad
	ldrb r3, [r2]
	lsls r2, r3, #8
	orrs r1, r2
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #4]
	lsls r1, r2, #5
	str r1, [r0]
_08012014:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1]
	lsrs r1, r2, #5
	str r1, [r0]
_0801201E:
	ldr r0, [r7]
	ldr r1, [r0]
	adds r0, r1, #0
	lsls r2, r0, #0x10
	lsrs r1, r2, #0x10
	ldr r0, [r7]
	bl sub_8011CF4
	adds r1, r0, #0
	adds r0, r1, #0
	b _080120D0
_08012034:
	movs r0, #3
	str r0, [r7, #4]
_08012038:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08012040
	b _08012084
_08012040:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r2, _08012078
	adds r1, r0, r2
	ldrh r0, [r1]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [r7, #8]
	ldr r0, [r7]
	ldrb r1, [r0, #0x1e]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801207C
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _0801207C
	ldr r0, [r7]
	bl sub_8011534
	movs r0, #0x71
	b _080120D0
	.align 2, 0
_08012078: .4byte 0x04000120
_0801207C:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _08012038
_08012084:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #0x18]
	adds r1, r2, #1
	ldrb r2, [r0, #0x18]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x18]
	ldr r0, [r7]
	ldrb r1, [r0, #0x18]
	cmp r1, #0xe9
	bne _080120AA
	movs r0, #0
	b _080120D0
_080120AA:
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #0x28]
	adds r3, r4, #0
	adds r3, #0xae
	ldrb r2, [r3]
	ldr r3, [r7]
	ldr r4, [r3, #0x28]
	adds r3, r4, #0
	adds r3, #0xaf
	ldrb r4, [r3]
	lsls r3, r4, #8
	orrs r2, r3
	str r2, [r1]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2]
	str r3, [r1, #4]
	b _0801201E
_080120D0:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80120D8
sub_80120D8: @ 0x080120D8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080120F2
	movs r1, #0xd
	cmp r2, #8
	beq _080120F2
	movs r1, #4
_080120F2:
	subs r0, r0, r1
	bgt _080120F2
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012100
sub_8012100: @ 0x08012100
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	movs r0, #0
	str r0, [r7]
_0801210A:
	ldr r0, [r7]
	ldr r1, _08012114
	cmp r0, r1
	ble _08012118
	b _0801213C
	.align 2, 0
_08012114: .4byte 0x0000795C
_08012118:
	ldr r0, _08012130
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _08012134
	b _0801213C
	.align 2, 0
_08012130: .4byte 0x04000128
_08012134:
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _0801210A
_0801213C:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r1, #0
	bl sub_80120D8
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
    