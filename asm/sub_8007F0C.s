.include "asm/macros.inc"

.syntax unified


	THUMB_FUNC_START sub_8007F0C
sub_8007F0C: @ 0x08007F0C
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08007F3C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, _08007F40
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _08007F44
	ldr r0, _08007F3C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
	b _08007F80
	.align 2, 0
_08007F3C: .4byte gUnknown_08019838
_08007F40: .4byte gUnknown_03001730
_08007F44:
	bl sub_800465C
	ldr r0, _08007F5C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #9
	beq _08007F60
	b _08007F70
	.align 2, 0
_08007F5C: .4byte gUnknown_08019838
_08007F60:
	bl sub_8007FBC
	ldr r0, _08007F6C
	movs r1, #9
	str r1, [r0]
	b _08007F70
	.align 2, 0
_08007F6C: .4byte gUnknown_03001730
_08007F70:
	ldr r0, _08007F88
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	bl _call_via_r4
_08007F80:
	add sp, #4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007F88: .4byte gUnknown_08019838

	THUMB_FUNC_START sub_8007F8C
sub_8007F8C: @ 0x08007F8C
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007FA0
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007FA0: .4byte 0x00000405

	THUMB_FUNC_START sub_8007FA4
sub_8007FA4: @ 0x08007FA4
	push {r7, lr}
	mov r7, sp
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r2, _08007FB8
	adds r1, r2, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007FB8: .4byte 0x00000415

	THUMB_FUNC_START sub_8007FBC
sub_8007FBC: @ 0x08007FBC
	push {r7, lr}
	sub sp, #0x18
	mov r7, sp
	ldr r0, _080080E8
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _080080EC
	bl sub_800F35C
	adds r0, r7, #0
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0]
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #4]
	adds r0, r7, #0
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x78
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	adds r0, r7, #0
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x50
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	adds r0, r7, #0
	ldrh r1, [r0, #0xc]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	adds r0, r7, #0
	ldrh r1, [r0, #0xe]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xe]
	adds r0, r7, #0
	ldrh r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0x10]
	bl sub_8004630
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _080080F4
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _080080F8
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _080080FC
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08008100
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r0, _080080F0
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	ldr r1, _08008104
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #4
	ldr r1, _08008108
	str r1, [r0]
	ldr r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _08008100
	str r1, [r0]
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	bl sub_8004630
	ldr r1, _0800810C
	adds r0, r1, #0
	bl sub_80045B8
	bl sub_8004630
	bl sub_8004518
	ldr r0, _08008110
	movs r1, #2
	strh r1, [r0]
	adds r0, r7, #0
	ldr r1, _08008114
	movs r2, #1
	bl BgAffineSet
	add sp, #0x18
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080080E8: .4byte gUnknown_03001740
_080080EC: .4byte gUnknown_08077464
_080080F0: .4byte 0x040000D4
_080080F4: .4byte gUnknown_081003F4
_080080F8: .4byte 0x84000080
_080080FC: .4byte gUnknown_080A8F40
_08008100: .4byte 0x84002800
_08008104: .4byte gUnknown_080B2F40
_08008108: .4byte 0x0600A000
_0800810C: .4byte 0x06014000
_08008110: .4byte 0x0400000C
_08008114: .4byte 0x04000020
